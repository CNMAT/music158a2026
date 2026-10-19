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
    "rect": [
      134,
      143,
      1260,
      1310
    ],
    "boxes": [
      {
        "box": {
          "fontface": 1,
          "fontsize": 20,
          "id": "obj-1",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            25,
            15,
            1140,
            29
          ],
          "text": "EC SCALE / TUNING MAPPER  v1.2"
        }
      },
      {
        "box": {
          "fontface": 0,
          "fontsize": 12,
          "id": "obj-2",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            25,
            55,
            1200,
            20
          ],
          "text": "Map incoming pitch or generate one profile-weighted tone per bang. Input and output units: MIDICENTS (6000 = MIDI note 60)."
        }
      },
      {
        "box": {
          "fontface": 1,
          "fontsize": 12,
          "id": "obj-3",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            25,
            92,
            1190,
            20
          ],
          "text": "Defaults: Ionian | tonic 6000 | primary octave 4 | octave-shift weight 0 | A4 440 Hz | melodic ON | nodes OFF"
        }
      },
      {
        "box": {
          "embedstate": [
            [
              "restore",
              "{\"version\":1,\"state\":{\"base\":{\"name\":\"major\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,200,400,500,700,900,1100],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"mapping\":\"nearest\",\"reference\":440,\"registerMin\":0,\"registerMax\":0,\"strength\":1,\"stepbias\":0,\"repeats\":1,\"nodesmode\":\"off\",\"hysteresis\":0.05,\"keybase\":60,\"melodic\":1,\"stepchance\":0.9,\"recovery\":0.98,\"leapavoid\":0.97,\"maxrun\":3,\"turnbias\":0.9,\"recoverycents\":480,\"octaveshift\":0,\"octave\":\"tonic\"},\"configs\":{\"major_12tet\":{\"name\":\"major_12tet\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,200,400,500,700,900,1100],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"major_just\":{\"name\":\"major_just\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,203.91000173077487,386.3137138648348,498.04499913461245,701.9550008653874,884.3587129994474,1088.2687147302222],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"just_major_5limit\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"minor_12tet\":{\"name\":\"minor_12tet\",\"scale\":\"natural_minor\",\"nominal\":[0,200,300,500,700,800,1000],\"cents\":[0,200,300,500,700,800,1000],\"ids\":[\"pc0\",\"pc2\",\"pc3\",\"pc5\",\"pc7\",\"pc8\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_minor\",\"weights\":[6.33,3.52,5.38,3.53,4.75,3.98,3.34],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"pentatonic_12tet\":{\"name\":\"pentatonic_12tet\",\"scale\":\"major_pentatonic\",\"nominal\":[0,200,400,700,900],\"cents\":[0,200,400,700,900],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc7\",\"pc9\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1],\"profileSource\":\"uniform_model\"},\"dorian_12tet\":{\"name\":\"dorian_12tet\",\"scale\":\"dorian\",\"nominal\":[0,200,300,500,700,900,1000],\"cents\":[0,200,300,500,700,900,1000],\"ids\":[\"pc0\",\"pc2\",\"pc3\",\"pc5\",\"pc7\",\"pc9\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1,1,1],\"profileSource\":\"uniform_model\"}},\"assigned\":[{\"name\":\"mixolydian\",\"scale\":\"mixolydian\",\"nominal\":[0,200,400,500,700,900,1000],\"cents\":[0,200,400,500,700,900,1000],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1,1,1],\"profileSource\":\"uniform_model\"},{\"name\":\"ionian\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,200,400,500,700,900,1100],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1,1,1],\"profileSource\":\"uniform_model\"},{\"name\":\"lydian\",\"scale\":\"lydian\",\"nominal\":[0,200,400,600,700,900,1100],\"cents\":[0,200,400,600,700,900,1100],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc6\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1,1,1],\"profileSource\":\"uniform_model\"},{\"name\":\"dorian\",\"scale\":\"dorian\",\"nominal\":[0,200,300,500,700,900,1000],\"cents\":[0,200,300,500,700,900,1000],\"ids\":[\"pc0\",\"pc2\",\"pc3\",\"pc5\",\"pc7\",\"pc9\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1,1,1],\"profileSource\":\"uniform_model\"},{\"name\":\"aeolian\",\"scale\":\"natural_minor\",\"nominal\":[0,200,300,500,700,800,1000],\"cents\":[0,200,300,500,700,800,1000],\"ids\":[\"pc0\",\"pc2\",\"pc3\",\"pc5\",\"pc7\",\"pc8\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1,1,1],\"profileSource\":\"uniform_model\"},{\"name\":\"phrygian\",\"scale\":\"phrygian\",\"nominal\":[0,100,300,500,700,800,1000],\"cents\":[0,100,300,500,700,800,1000],\"ids\":[\"pc0\",\"pc1\",\"pc3\",\"pc5\",\"pc7\",\"pc8\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1,1,1],\"profileSource\":\"uniform_model\"}],\"nodeweights\":[0.16666666666666666,0.16666666666666666,0.16666666666666666,0.16666666666666666,0.16666666666666666,0.16666666666666666]}"
            ]
          ],
          "id": "obj-4",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 4,
          "outlettype": [
            "",
            "",
            "",
            ""
          ],
          "patching_rect": [
            335,
            480,
            235,
            22
          ],
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
          "fontsize": 14,
          "id": "obj-5",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            25,
            225,
            290,
            22
          ],
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
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            25,
            265,
            125,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-7",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            25,
            305,
            145,
            22
          ],
          "text": "loadmess set 6000."
        }
      },
      {
        "box": {
          "fontface": 0,
          "fontsize": 12,
          "id": "obj-8",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            165,
            265,
            145,
            20
          ],
          "text": "midicents input"
        }
      },
      {
        "box": {
          "id": "obj-9",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            25,
            350,
            270,
            22
          ],
          "text": "midi 60.25"
        }
      },
      {
        "box": {
          "id": "obj-10",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            25,
            382,
            270,
            22
          ],
          "text": "midicents 6000. 6250. 6700."
        }
      },
      {
        "box": {
          "id": "obj-11",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            25,
            414,
            270,
            22
          ],
          "text": "mapping nearest"
        }
      },
      {
        "box": {
          "id": "obj-12",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            25,
            446,
            270,
            22
          ],
          "text": "mapping ceiling"
        }
      },
      {
        "box": {
          "id": "obj-13",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            25,
            478,
            270,
            22
          ],
          "text": "mapping floor"
        }
      },
      {
        "box": {
          "fontface": 1,
          "fontsize": 14,
          "id": "obj-14",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            335,
            225,
            300,
            22
          ],
          "text": "2. GENERATE A TONE"
        }
      },
      {
        "box": {
          "id": "obj-15",
          "maxclass": "button",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            335,
            265,
            38,
            38
          ]
        }
      },
      {
        "box": {
          "fontface": 0,
          "fontsize": 12,
          "id": "obj-16",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            390,
            270,
            250,
            20
          ],
          "text": "One bang = one tone"
        }
      },
      {
        "box": {
          "id": "obj-17",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            335,
            330,
            310,
            22
          ],
          "text": "scale major, tuning equal"
        }
      },
      {
        "box": {
          "id": "obj-18",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            335,
            358,
            310,
            22
          ],
          "text": "scale major, tuning just_major_5limit"
        }
      },
      {
        "box": {
          "id": "obj-19",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            335,
            386,
            310,
            22
          ],
          "text": "scale natural_minor"
        }
      },
      {
        "box": {
          "id": "obj-20",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            335,
            414,
            310,
            22
          ],
          "text": "profile uniform"
        }
      },
      {
        "box": {
          "id": "obj-21",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            335,
            442,
            310,
            22
          ],
          "text": "profile auto"
        }
      },
      {
        "box": {
          "fontface": 1,
          "fontsize": 14,
          "id": "obj-22",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            700,
            225,
            520,
            22
          ],
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
          "nodesnames": [
            "mixolydian",
            "ionian",
            "lydian",
            "dorian",
            "aeolian",
            "phrygian"
          ],
          "nsize": [
            0.55,
            0.55,
            0.55,
            0.55,
            0.55,
            0.55
          ],
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "parameter_enable": 0,
          "patching_rect": [
            700,
            265,
            340,
            340
          ],
          "xplace": [
            0.18,
            0.5,
            0.82,
            0.18,
            0.5,
            0.82
          ],
          "yplace": [
            0.25,
            0.25,
            0.25,
            0.75,
            0.75,
            0.75
          ]
        }
      },
      {
        "box": {
          "id": "obj-24",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            700,
            620,
            170,
            22
          ],
          "text": "prepend nodeweights"
        }
      },
      {
        "box": {
          "id": "obj-25",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1060,
            285,
            155,
            22
          ],
          "text": "nodesmode modal"
        }
      },
      {
        "box": {
          "id": "obj-26",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1060,
            325,
            155,
            22
          ],
          "text": "nodesmode off"
        }
      },
      {
        "box": {
          "fontface": 0,
          "fontsize": 12,
          "id": "obj-27",
          "linecount": 3,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1060,
            375,
            155,
            160
          ],
          "text": "Enable modal morph.\nMove the cursor, then bang or play MIDI.\n\nCorresponding scale degrees blend in cents. All six nodes use uniform degree weights."
        }
      },
      {
        "box": {
          "id": "obj-28",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            1005,
            550,
            80,
            22
          ],
          "text": "loadbang",
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "obj-29",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "bang",
            "bang"
          ],
          "patching_rect": [
            1005,
            585,
            60,
            22
          ],
          "text": "t b b",
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "obj-30",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            25,
            935,
            310,
            22
          ],
          "text": "modalnodes, nodesmode off",
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "obj-31",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1110,
            585,
            95,
            22
          ],
          "text": "0.5 0.5",
          "hidden": 1
        }
      },
      {
        "box": {
          "format": 6,
          "id": "obj-32",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            25,
            585,
            120,
            22
          ]
        }
      },
      {
        "box": {
          "format": 6,
          "id": "obj-33",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            175,
            585,
            120,
            22
          ]
        }
      },
      {
        "box": {
          "fontface": 0,
          "fontsize": 12,
          "id": "obj-34",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            25,
            610,
            130,
            20
          ],
          "text": "midicents"
        }
      },
      {
        "box": {
          "fontface": 0,
          "fontsize": 12,
          "id": "obj-35",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            175,
            610,
            130,
            20
          ],
          "text": "Hz"
        }
      },
      {
        "box": {
          "id": "obj-36",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patching_rect": [
            345,
            627,
            145,
            22
          ],
          "text": "route nodeweights"
        }
      },
      {
        "box": {
          "id": "obj-37",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            345,
            585,
            145,
            22
          ],
          "text": "print mapper_status"
        }
      },
      {
        "box": {
          "id": "obj-38",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            510,
            585,
            110,
            22
          ],
          "text": "print tone"
        }
      },
      {
        "box": {
          "fontface": 1,
          "fontsize": 14,
          "id": "obj-39",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            25,
            545,
            600,
            22
          ],
          "text": "OUTPUT / STATUS"
        }
      },
      {
        "box": {
          "id": "obj-40",
          "maxclass": "newobj",
          "numinlets": 6,
          "numoutlets": 6,
          "outlettype": [
            "",
            "",
            "",
            "",
            "",
            ""
          ],
          "patching_rect": [
            25,
            655,
            360,
            22
          ],
          "text": "route scale tuning profile nodesmode mapping"
        }
      },
      {
        "box": {
          "fontface": 0,
          "fontsize": 11,
          "id": "obj-41",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            25,
            695,
            200,
            19
          ],
          "text": "Scale"
        }
      },
      {
        "box": {
          "id": "obj-42",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            25,
            720,
            200,
            22
          ],
          "text": "major"
        }
      },
      {
        "box": {
          "fontface": 0,
          "fontsize": 11,
          "id": "obj-43",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            240,
            695,
            215,
            19
          ],
          "text": "Tuning"
        }
      },
      {
        "box": {
          "id": "obj-44",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            240,
            720,
            215,
            22
          ],
          "text": "equal"
        }
      },
      {
        "box": {
          "fontface": 0,
          "fontsize": 11,
          "id": "obj-45",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            470,
            695,
            300,
            19
          ],
          "text": "Profile / source"
        }
      },
      {
        "box": {
          "id": "obj-46",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            470,
            720,
            300,
            22
          ],
          "text": "kk_major Krumhansl_Kessler_1982_fit_ratings"
        }
      },
      {
        "box": {
          "fontface": 0,
          "fontsize": 11,
          "id": "obj-47",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            785,
            695,
            180,
            19
          ],
          "text": "Nodes"
        }
      },
      {
        "box": {
          "id": "obj-48",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            785,
            720,
            180,
            22
          ],
          "text": "off"
        }
      },
      {
        "box": {
          "fontface": 0,
          "fontsize": 11,
          "id": "obj-49",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            980,
            695,
            180,
            19
          ],
          "text": "Mapping"
        }
      },
      {
        "box": {
          "id": "obj-50",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            980,
            720,
            180,
            22
          ],
          "text": "nearest"
        }
      },
      {
        "box": {
          "fontface": 1,
          "fontsize": 13,
          "id": "obj-51",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            25,
            770,
            260,
            21
          ],
          "text": "SINE AUDITION (optional)"
        }
      },
      {
        "box": {
          "id": "obj-52",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            25,
            810,
            70,
            22
          ],
          "text": "cycle~"
        }
      },
      {
        "box": {
          "id": "obj-53",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            140,
            810,
            70,
            22
          ],
          "text": "*~ 0."
        }
      },
      {
        "box": {
          "id": "obj-54",
          "maxclass": "ezdac~",
          "numinlets": 2,
          "numoutlets": 0,
          "patching_rect": [
            260,
            805,
            45,
            45
          ]
        }
      },
      {
        "box": {
          "id": "obj-55",
          "maxclass": "toggle",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            335,
            805,
            25,
            25
          ]
        }
      },
      {
        "box": {
          "id": "obj-56",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ],
          "patching_rect": [
            335,
            845,
            70,
            22
          ],
          "text": "* 0.05"
        }
      },
      {
        "box": {
          "fontface": 0,
          "fontsize": 12,
          "id": "obj-57",
          "linecount": 2,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            415,
            805,
            220,
            45
          ],
          "text": "Enable tone, then click DSP.\nContinuous sine; gain 0.05."
        }
      },
      {
        "box": {
          "fontface": 1,
          "fontsize": 13,
          "id": "obj-58",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            660,
            770,
            550,
            21
          ],
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
            "rect": [
              134,
              172,
              1180,
              820
            ],
            "boxes": [
              {
                "box": {
                  "fontface": 1,
                  "fontsize": 18,
                  "id": "obj-1",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    15,
                    1000,
                    27
                  ],
                  "text": "MESSAGE SPACE / DEFAULT VALUES"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 12,
                  "id": "obj-2",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    55,
                    1100,
                    20
                  ],
                  "text": "Independent mapper in this tab. Bare numbers/lists are MIDICENTS. To send MIDI note numbers, use midi <number> or prepend midi."
                }
              },
              {
                "box": {
                  "embedstate": [
                    [
                      "restore",
                      "{\"version\":1,\"state\":{\"base\":{\"name\":\"major\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,200,400,500,700,900,1100],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"mapping\":\"nearest\",\"reference\":440,\"registerMin\":0,\"registerMax\":0,\"strength\":1,\"stepbias\":0,\"repeats\":1,\"nodesmode\":\"off\",\"hysteresis\":0.05,\"keybase\":60,\"melodic\":1,\"stepchance\":0.9,\"recovery\":0.98,\"leapavoid\":0.97,\"maxrun\":3,\"turnbias\":0.9,\"recoverycents\":480,\"octaveshift\":0,\"octave\":\"tonic\"},\"configs\":{\"major_12tet\":{\"name\":\"major_12tet\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,200,400,500,700,900,1100],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"major_just\":{\"name\":\"major_just\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,203.91000173077487,386.3137138648348,498.04499913461245,701.9550008653874,884.3587129994474,1088.2687147302222],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"just_major_5limit\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"minor_12tet\":{\"name\":\"minor_12tet\",\"scale\":\"natural_minor\",\"nominal\":[0,200,300,500,700,800,1000],\"cents\":[0,200,300,500,700,800,1000],\"ids\":[\"pc0\",\"pc2\",\"pc3\",\"pc5\",\"pc7\",\"pc8\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_minor\",\"weights\":[6.33,3.52,5.38,3.53,4.75,3.98,3.34],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"pentatonic_12tet\":{\"name\":\"pentatonic_12tet\",\"scale\":\"major_pentatonic\",\"nominal\":[0,200,400,700,900],\"cents\":[0,200,400,700,900],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc7\",\"pc9\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1],\"profileSource\":\"uniform_model\"},\"dorian_12tet\":{\"name\":\"dorian_12tet\",\"scale\":\"dorian\",\"nominal\":[0,200,300,500,700,900,1000],\"cents\":[0,200,300,500,700,900,1000],\"ids\":[\"pc0\",\"pc2\",\"pc3\",\"pc5\",\"pc7\",\"pc9\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1,1,1],\"profileSource\":\"uniform_model\"}},\"assigned\":[{\"name\":\"major_12tet\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,200,400,500,700,900,1100],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},{\"name\":\"major_just\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,203.91000173077487,386.3137138648348,498.04499913461245,701.9550008653874,884.3587129994474,1088.2687147302222],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"just_major_5limit\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"}],\"nodeweights\":[0.5,0.5]}"
                    ]
                  ],
                  "id": "obj-3",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 4,
                  "outlettype": [
                    "",
                    "",
                    "",
                    ""
                  ],
                  "patching_rect": [
                    25,
                    665,
                    235,
                    22
                  ],
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
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    25,
                    725,
                    120,
                    22
                  ]
                }
              },
              {
                "box": {
                  "format": 6,
                  "id": "obj-5",
                  "maxclass": "flonum",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    175,
                    725,
                    120,
                    22
                  ]
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 12,
                  "id": "obj-6",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    750,
                    130,
                    20
                  ],
                  "text": "midicents"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 12,
                  "id": "obj-7",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    175,
                    750,
                    130,
                    20
                  ],
                  "text": "Hz"
                }
              },
              {
                "box": {
                  "id": "obj-8",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "patching_rect": [
                    345,
                    767,
                    145,
                    22
                  ],
                  "text": "route nodeweights"
                }
              },
              {
                "box": {
                  "id": "obj-9",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    345,
                    725,
                    145,
                    22
                  ],
                  "text": "print mapper_status"
                }
              },
              {
                "box": {
                  "fontface": 1,
                  "fontsize": 14,
                  "id": "obj-10",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    105,
                    355,
                    22
                  ],
                  "text": "Input and mapping"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-11",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    140,
                    355,
                    19
                  ],
                  "text": "Raw midicents"
                }
              },
              {
                "box": {
                  "id": "obj-12",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    25,
                    159,
                    355,
                    22
                  ],
                  "text": "6000.25"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-13",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    189,
                    355,
                    19
                  ],
                  "text": "Fractional MIDI -> midicents"
                }
              },
              {
                "box": {
                  "id": "obj-14",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    25,
                    208,
                    355,
                    22
                  ],
                  "text": "midi 60.25"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-15",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    238,
                    355,
                    19
                  ],
                  "text": "Pitch list (not pitch/velocity)"
                }
              },
              {
                "box": {
                  "id": "obj-16",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    25,
                    257,
                    355,
                    22
                  ],
                  "text": "midicents 6000. 6250. 6700."
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-17",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    287,
                    355,
                    19
                  ],
                  "text": "Upward mapping"
                }
              },
              {
                "box": {
                  "id": "obj-18",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    25,
                    306,
                    355,
                    22
                  ],
                  "text": "mapping ceiling"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-19",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    336,
                    355,
                    19
                  ],
                  "text": "Downward mapping"
                }
              },
              {
                "box": {
                  "id": "obj-20",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    25,
                    355,
                    355,
                    22
                  ],
                  "text": "mapping floor"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-21",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    385,
                    355,
                    19
                  ],
                  "text": "DEFAULT; ties choose lower pitch"
                }
              },
              {
                "box": {
                  "id": "obj-22",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    25,
                    404,
                    355,
                    22
                  ],
                  "text": "mapping nearest"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-23",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    434,
                    355,
                    19
                  ],
                  "text": "Chromatic keys advance scale degrees"
                }
              },
              {
                "box": {
                  "id": "obj-24",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    25,
                    453,
                    355,
                    22
                  ],
                  "text": "mapping degree, keybase 60"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-25",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    483,
                    355,
                    19
                  ],
                  "text": "1-based degree; 8 = next tonic in major"
                }
              },
              {
                "box": {
                  "id": "obj-26",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    25,
                    502,
                    355,
                    22
                  ],
                  "text": "degree 3"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-27",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    532,
                    355,
                    19
                  ],
                  "text": "Scale degree from MIDI key"
                }
              },
              {
                "box": {
                  "id": "obj-28",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    25,
                    551,
                    355,
                    22
                  ],
                  "text": "keyboard 67"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-29",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    581,
                    355,
                    19
                  ],
                  "text": "Remap last scalar/list; bang generates"
                }
              },
              {
                "box": {
                  "id": "obj-30",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    25,
                    600,
                    355,
                    22
                  ],
                  "text": "repeat"
                }
              },
              {
                "box": {
                  "fontface": 1,
                  "fontsize": 14,
                  "id": "obj-31",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    405,
                    105,
                    355,
                    22
                  ],
                  "text": "Generation and profile"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-32",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    405,
                    140,
                    355,
                    19
                  ],
                  "text": "One weighted tone"
                }
              },
              {
                "box": {
                  "id": "obj-33",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    405,
                    159,
                    355,
                    22
                  ],
                  "text": "bang"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-34",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    405,
                    189,
                    355,
                    19
                  ],
                  "text": "KK major/minor, otherwise uniform"
                }
              },
              {
                "box": {
                  "id": "obj-35",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    405,
                    208,
                    355,
                    22
                  ],
                  "text": "profile auto"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-36",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    405,
                    238,
                    355,
                    19
                  ],
                  "text": "DEFAULT with major"
                }
              },
              {
                "box": {
                  "id": "obj-37",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    405,
                    257,
                    355,
                    22
                  ],
                  "text": "profile kk_major"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-38",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    405,
                    287,
                    355,
                    19
                  ],
                  "text": "Equal degree probabilities"
                }
              },
              {
                "box": {
                  "id": "obj-39",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    405,
                    306,
                    355,
                    22
                  ],
                  "text": "profile uniform"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-40",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    405,
                    336,
                    355,
                    19
                  ],
                  "text": "Custom weights for seven degrees"
                }
              },
              {
                "box": {
                  "id": "obj-41",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    405,
                    355,
                    355,
                    22
                  ],
                  "text": "weights 6.35 3.48 4.38 4.09 5.19 3.66 2.88"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-42",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    405,
                    385,
                    355,
                    19
                  ],
                  "text": "DEFAULT exponent; 0 flattens nonzero weights"
                }
              },
              {
                "box": {
                  "id": "obj-43",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    405,
                    404,
                    355,
                    22
                  ],
                  "text": "strength 1."
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-44",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    405,
                    434,
                    355,
                    19
                  ],
                  "text": "DEFAULT; tonic period only"
                }
              },
              {
                "box": {
                  "id": "obj-45",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    405,
                    453,
                    355,
                    22
                  ],
                  "text": "register 0 0"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-46",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    405,
                    483,
                    355,
                    19
                  ],
                  "text": "Choose among three registers"
                }
              },
              {
                "box": {
                  "id": "obj-47",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    405,
                    502,
                    355,
                    22
                  ],
                  "text": "register -1 1"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-48",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    405,
                    532,
                    355,
                    19
                  ],
                  "text": "Legacy pitch-class bias OFF; melodic preferences ON"
                }
              },
              {
                "box": {
                  "id": "obj-49",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    405,
                    551,
                    355,
                    22
                  ],
                  "text": "stepbias 0."
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-50",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    405,
                    581,
                    355,
                    19
                  ],
                  "text": "DEFAULT; repeated pitches allowed"
                }
              },
              {
                "box": {
                  "id": "obj-51",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    405,
                    600,
                    355,
                    22
                  ],
                  "text": "repeats 1"
                }
              },
              {
                "box": {
                  "fontface": 1,
                  "fontsize": 14,
                  "id": "obj-52",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    785,
                    105,
                    355,
                    22
                  ],
                  "text": "Configuration and state"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-53",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    785,
                    140,
                    355,
                    19
                  ],
                  "text": "DEFAULT; C4 = MIDI 60"
                }
              },
              {
                "box": {
                  "id": "obj-54",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    785,
                    159,
                    355,
                    22
                  ],
                  "text": "tonic 6000."
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-55",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    785,
                    189,
                    355,
                    19
                  ],
                  "text": "DEFAULT; reference frequency for MIDI 69"
                }
              },
              {
                "box": {
                  "id": "obj-56",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    785,
                    208,
                    355,
                    22
                  ],
                  "text": "reference 440."
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-57",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    785,
                    238,
                    355,
                    19
                  ],
                  "text": "DEFAULT; use base configuration"
                }
              },
              {
                "box": {
                  "id": "obj-58",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    785,
                    257,
                    355,
                    22
                  ],
                  "text": "nodesmode off"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-59",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    785,
                    287,
                    355,
                    19
                  ],
                  "text": "DEFAULT strongest-node switching margin"
                }
              },
              {
                "box": {
                  "id": "obj-60",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    785,
                    306,
                    355,
                    22
                  ],
                  "text": "hysteresis 0.05"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-61",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    785,
                    336,
                    355,
                    19
                  ],
                  "text": "Repeatable generator; 0 = Math.random"
                }
              },
              {
                "box": {
                  "id": "obj-62",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    785,
                    355,
                    355,
                    22
                  ],
                  "text": "randomseed 12345"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-63",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    785,
                    385,
                    355,
                    19
                  ],
                  "text": "Capture current base configuration"
                }
              },
              {
                "box": {
                  "id": "obj-64",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    785,
                    404,
                    355,
                    22
                  ],
                  "text": "store my_configuration"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-65",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    785,
                    434,
                    355,
                    19
                  ],
                  "text": "Recall captured configuration"
                }
              },
              {
                "box": {
                  "id": "obj-66",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    785,
                    453,
                    355,
                    22
                  ],
                  "text": "recall my_configuration"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-67",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    785,
                    483,
                    355,
                    19
                  ],
                  "text": "Current configuration and probabilities"
                }
              },
              {
                "box": {
                  "id": "obj-68",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    785,
                    502,
                    355,
                    22
                  ],
                  "text": "dump"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-69",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    785,
                    532,
                    355,
                    19
                  ],
                  "text": "Full JSON state to status outlet"
                }
              },
              {
                "box": {
                  "id": "obj-70",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    785,
                    551,
                    355,
                    22
                  ],
                  "text": "getstate"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-71",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    785,
                    581,
                    355,
                    19
                  ],
                  "text": "Restore defaults; emit held MIDI note-offs"
                }
              },
              {
                "box": {
                  "id": "obj-72",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    785,
                    600,
                    355,
                    22
                  ],
                  "text": "reset"
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-12",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-14",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-16",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-18",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-20",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-22",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-24",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-26",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-28",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-4",
                    0
                  ],
                  "source": [
                    "obj-3",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-5",
                    0
                  ],
                  "source": [
                    "obj-3",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-8",
                    0
                  ],
                  "source": [
                    "obj-3",
                    3
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-30",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-33",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-35",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-37",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-39",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-41",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-43",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-45",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-47",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-49",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-51",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-54",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-56",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-58",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-60",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-62",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-64",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-66",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-68",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-70",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-72",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-9",
                    0
                  ],
                  "source": [
                    "obj-8",
                    1
                  ]
                }
              }
            ]
          },
          "patching_rect": [
            660,
            810,
            175,
            22
          ],
          "text": "p message_space"
        }
      },
      {
        "box": {
          "id": "obj-60",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
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
            "rect": [
              2248,
              198,
              1160,
              885
            ],
            "boxes": [
              {
                "box": {
                  "id": "obj-73",
                  "maxclass": "toggle",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    698,
                    703,
                    24,
                    24
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-70",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "patching_rect": [
                    738,
                    726,
                    63,
                    22
                  ],
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
                  "patching_rect": [
                    185,
                    733,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "fontface": 1,
                  "fontsize": 18,
                  "id": "obj-1",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    15,
                    900,
                    27
                  ],
                  "text": "SCALES / TUNINGS / CUSTOM DATA"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 12,
                  "id": "obj-2",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    52,
                    1090,
                    20
                  ],
                  "text": "Each scale message selects its template tuning and an automatic profile: KK for major/minor, uniform for other scales. All examples below control this tab's mapper."
                }
              },
              {
                "box": {
                  "embedstate": [
                    [
                      "restore",
                      "{\"version\":1,\"state\":{\"base\":{\"name\":\"dorian\",\"scale\":\"dorian\",\"nominal\":[0,200,300,500,700,900,1000],\"cents\":[0,200,300,500,700,900,1000],\"ids\":[\"pc0\",\"pc2\",\"pc3\",\"pc5\",\"pc7\",\"pc9\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1,1,1],\"profileSource\":\"uniform_model\"},\"mapping\":\"nearest\",\"reference\":440,\"registerMin\":0,\"registerMax\":0,\"strength\":1,\"stepbias\":0,\"repeats\":1,\"nodesmode\":\"off\",\"hysteresis\":0.05,\"keybase\":60,\"melodic\":1,\"stepchance\":0.2,\"recovery\":0.25,\"leapavoid\":0.01,\"maxrun\":3,\"turnbias\":0.9,\"recoverycents\":2809,\"octaveshift\":0,\"octave\":\"tonic\"},\"configs\":{\"major_12tet\":{\"name\":\"major_12tet\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,200,400,500,700,900,1100],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"major_just\":{\"name\":\"major_just\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,203.91000173077487,386.3137138648348,498.04499913461245,701.9550008653874,884.3587129994474,1088.2687147302222],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"just_major_5limit\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"minor_12tet\":{\"name\":\"minor_12tet\",\"scale\":\"natural_minor\",\"nominal\":[0,200,300,500,700,800,1000],\"cents\":[0,200,300,500,700,800,1000],\"ids\":[\"pc0\",\"pc2\",\"pc3\",\"pc5\",\"pc7\",\"pc8\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_minor\",\"weights\":[6.33,3.52,5.38,3.53,4.75,3.98,3.34],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"pentatonic_12tet\":{\"name\":\"pentatonic_12tet\",\"scale\":\"major_pentatonic\",\"nominal\":[0,200,400,700,900],\"cents\":[0,200,400,700,900],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc7\",\"pc9\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1],\"profileSource\":\"uniform_model\"},\"dorian_12tet\":{\"name\":\"dorian_12tet\",\"scale\":\"dorian\",\"nominal\":[0,200,300,500,700,900,1000],\"cents\":[0,200,300,500,700,900,1000],\"ids\":[\"pc0\",\"pc2\",\"pc3\",\"pc5\",\"pc7\",\"pc9\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1,1,1],\"profileSource\":\"uniform_model\"}},\"assigned\":[{\"name\":\"major_12tet\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,200,400,500,700,900,1100],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},{\"name\":\"major_just\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,203.91000173077487,386.3137138648348,498.04499913461245,701.9550008653874,884.3587129994474,1088.2687147302222],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"just_major_5limit\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"}],\"nodeweights\":[0.5,0.5]}"
                    ]
                  ],
                  "id": "obj-3",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 4,
                  "outlettype": [
                    "",
                    "",
                    "",
                    ""
                  ],
                  "patching_rect": [
                    25,
                    705,
                    235,
                    22
                  ],
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
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    25,
                    765,
                    120,
                    22
                  ]
                }
              },
              {
                "box": {
                  "format": 6,
                  "id": "obj-5",
                  "maxclass": "flonum",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    175,
                    765,
                    120,
                    22
                  ]
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 12,
                  "id": "obj-6",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    790,
                    130,
                    20
                  ],
                  "text": "midicents"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 12,
                  "id": "obj-7",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    175,
                    790,
                    130,
                    20
                  ],
                  "text": "Hz"
                }
              },
              {
                "box": {
                  "id": "obj-8",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "patching_rect": [
                    345,
                    807,
                    145,
                    22
                  ],
                  "text": "route nodeweights"
                }
              },
              {
                "box": {
                  "id": "obj-9",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    502.5,
                    807,
                    145,
                    22
                  ],
                  "text": "print mapper_status"
                }
              },
              {
                "box": {
                  "fontface": 1,
                  "fontsize": 14,
                  "id": "obj-10",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    155,
                    340,
                    22
                  ],
                  "text": "Western collections"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-11",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    191,
                    350,
                    19
                  ],
                  "text": "Major / Ionian"
                }
              },
              {
                "box": {
                  "id": "obj-12",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    25,
                    210,
                    350,
                    22
                  ],
                  "text": "scale major"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-13",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    241,
                    350,
                    19
                  ],
                  "text": "Aeolian"
                }
              },
              {
                "box": {
                  "id": "obj-14",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    25,
                    260,
                    350,
                    22
                  ],
                  "text": "scale natural_minor"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-15",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    291,
                    350,
                    19
                  ],
                  "text": "Dorian"
                }
              },
              {
                "box": {
                  "id": "obj-16",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    25,
                    310,
                    350,
                    22
                  ],
                  "text": "scale dorian"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-17",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    341,
                    350,
                    19
                  ],
                  "text": "Harmonic minor"
                }
              },
              {
                "box": {
                  "id": "obj-18",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    25,
                    360,
                    350,
                    22
                  ],
                  "text": "scale harmonic_minor"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-19",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    391,
                    350,
                    19
                  ],
                  "text": "Ascending melodic minor"
                }
              },
              {
                "box": {
                  "id": "obj-20",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    25,
                    410,
                    350,
                    22
                  ],
                  "text": "scale melodic_minor_ascending"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-21",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    441,
                    350,
                    19
                  ],
                  "text": "Five tones"
                }
              },
              {
                "box": {
                  "id": "obj-22",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    25,
                    460,
                    350,
                    22
                  ],
                  "text": "scale major_pentatonic"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-23",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    491,
                    350,
                    19
                  ],
                  "text": "Six tones"
                }
              },
              {
                "box": {
                  "id": "obj-24",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    25,
                    510,
                    350,
                    22
                  ],
                  "text": "scale whole_tone"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-25",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    541,
                    350,
                    19
                  ],
                  "text": "Whole-half octatonic"
                }
              },
              {
                "box": {
                  "id": "obj-26",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    25,
                    560,
                    350,
                    22
                  ],
                  "text": "scale octatonic_wh"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-27",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    591,
                    350,
                    19
                  ],
                  "text": "Messiaen mode 3"
                }
              },
              {
                "box": {
                  "id": "obj-28",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    25,
                    610,
                    350,
                    22
                  ],
                  "text": "scale messiaen_3"
                }
              },
              {
                "box": {
                  "fontface": 1,
                  "fontsize": 14,
                  "id": "obj-29",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    400,
                    155,
                    340,
                    22
                  ],
                  "text": "Named non-Western models"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-30",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    400,
                    191,
                    350,
                    19
                  ],
                  "text": "Chinese 12-TET model"
                }
              },
              {
                "box": {
                  "id": "obj-31",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400,
                    210,
                    350,
                    22
                  ],
                  "text": "scale gong_12tet"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-32",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    400,
                    241,
                    350,
                    19
                  ],
                  "text": "Chinese 12-TET model"
                }
              },
              {
                "box": {
                  "id": "obj-33",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400,
                    260,
                    350,
                    22
                  ],
                  "text": "scale yu_12tet"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-34",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    400,
                    291,
                    350,
                    19
                  ],
                  "text": "Rast quarter-tone approximation"
                }
              },
              {
                "box": {
                  "id": "obj-35",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400,
                    310,
                    350,
                    22
                  ],
                  "text": "scale rast_24edo_model"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-36",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    400,
                    341,
                    350,
                    19
                  ],
                  "text": "Bayati quarter-tone approximation"
                }
              },
              {
                "box": {
                  "id": "obj-37",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400,
                    360,
                    350,
                    22
                  ],
                  "text": "scale bayati_24edo_model"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-38",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    400,
                    391,
                    350,
                    19
                  ],
                  "text": "Hijaz 12-TET approximation"
                }
              },
              {
                "box": {
                  "id": "obj-39",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400,
                    410,
                    350,
                    22
                  ],
                  "text": "scale hijaz_12tet_model"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-40",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    400,
                    441,
                    350,
                    19
                  ],
                  "text": "Specific archived koto observation"
                }
              },
              {
                "box": {
                  "id": "obj-41",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400,
                    460,
                    350,
                    22
                  ],
                  "text": "scale hirajoshi_ellis_112"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-42",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    400,
                    491,
                    350,
                    19
                  ],
                  "text": "1199-cent repeating period"
                }
              },
              {
                "box": {
                  "id": "obj-43",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400,
                    510,
                    350,
                    22
                  ],
                  "text": "scale hirajoshi_ellis_111"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-44",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    400,
                    541,
                    350,
                    19
                  ],
                  "text": "Specific archived gamelan model"
                }
              },
              {
                "box": {
                  "id": "obj-45",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400,
                    560,
                    350,
                    22
                  ],
                  "text": "scale pelog_ksatria"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-46",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    400,
                    591,
                    350,
                    19
                  ],
                  "text": "Specific archived gamelan model"
                }
              },
              {
                "box": {
                  "id": "obj-47",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400,
                    610,
                    350,
                    22
                  ],
                  "text": "scale slendro_kanyut_mesem"
                }
              },
              {
                "box": {
                  "fontface": 1,
                  "fontsize": 14,
                  "id": "obj-48",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    780,
                    155,
                    340,
                    22
                  ],
                  "text": "Tuning / custom scales"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-49",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    780,
                    191,
                    350,
                    19
                  ],
                  "text": "Exact 5-limit ratios"
                }
              },
              {
                "box": {
                  "id": "obj-50",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    780,
                    210,
                    350,
                    22
                  ],
                  "text": "scale major, tuning just_major_5limit"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-51",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    780,
                    241,
                    350,
                    19
                  ],
                  "text": "Pythagorean major"
                }
              },
              {
                "box": {
                  "id": "obj-52",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    780,
                    260,
                    350,
                    22
                  ],
                  "text": "scale major, tuning pythagorean_major"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-53",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    780,
                    291,
                    350,
                    19
                  ],
                  "text": "5-limit minor with 9/5 seventh"
                }
              },
              {
                "box": {
                  "id": "obj-54",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    780,
                    310,
                    350,
                    22
                  ],
                  "text": "scale natural_minor, tuning just_minor_5limit"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-55",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    780,
                    341,
                    350,
                    19
                  ],
                  "text": "19 equal divisions of octave"
                }
              },
              {
                "box": {
                  "id": "obj-56",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    780,
                    360,
                    350,
                    22
                  ],
                  "text": "edo 19"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-57",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    780,
                    391,
                    350,
                    19
                  ],
                  "text": "13 equal divisions of tritave"
                }
              },
              {
                "box": {
                  "id": "obj-58",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    780,
                    410,
                    350,
                    22
                  ],
                  "text": "edo 13 1901.955001"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-59",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    780,
                    441,
                    350,
                    19
                  ],
                  "text": "Custom cent positions"
                }
              },
              {
                "box": {
                  "id": "obj-60",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    780,
                    460,
                    350,
                    22
                  ],
                  "text": "period 1200, cents 0. 150. 350. 700. 950."
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-61",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    780,
                    491,
                    350,
                    19
                  ],
                  "text": "Degree-by-degree ratios"
                }
              },
              {
                "box": {
                  "id": "obj-62",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    780,
                    510,
                    350,
                    22
                  ],
                  "text": "scale major, ratios 1/1 9/8 5/4 4/3 3/2 5/3 15/8"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-63",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    780,
                    541,
                    350,
                    19
                  ],
                  "text": "Full catalog in Max console"
                }
              },
              {
                "box": {
                  "id": "obj-64",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    780,
                    560,
                    350,
                    22
                  ],
                  "text": "listscales"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-65",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    780,
                    591,
                    350,
                    19
                  ],
                  "text": "Source/model description"
                }
              },
              {
                "box": {
                  "id": "obj-66",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    780,
                    610,
                    350,
                    22
                  ],
                  "text": "info pelog_ksatria"
                }
              },
              {
                "box": {
                  "id": "obj-67",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    25,
                    660,
                    60,
                    22
                  ],
                  "text": "bang"
                }
              },
              {
                "box": {
                  "id": "obj-68",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    100,
                    660,
                    90,
                    22
                  ],
                  "text": "degree 3"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 12,
                  "id": "obj-69",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    215,
                    660,
                    880,
                    20
                  ],
                  "text": "Bang generates one tone. Degree 3 auditions the third degree of the selected tuning."
                }
              },
              {
                "box": {
                  "id": "all-scale-label",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    88,
                    48,
                    20
                  ],
                  "text": "Scale"
                }
              },
              {
                "box": {
                  "annotation": "All 41 built-in scales. Choosing one returns to nodesmode off and its template tuning. Ionian = major; Aeolian = natural minor.",
                  "id": "all-scale-menu",
                  "items": [
                    "phrygian",
                    ",",
                    "aeolian",
                    ",",
                    "dorian",
                    ",",
                    "ionian",
                    ",",
                    "mixolydian",
                    ",",
                    "lydian",
                    ",",
                    "locrian",
                    ",",
                    "harmonic_minor",
                    ",",
                    "melodic_minor_ascending",
                    ",",
                    "harmonic_major",
                    ",",
                    "major_pentatonic",
                    ",",
                    "minor_pentatonic",
                    ",",
                    "major_blues",
                    ",",
                    "minor_blues",
                    ",",
                    "whole_tone",
                    ",",
                    "octatonic_wh",
                    ",",
                    "octatonic_hw",
                    ",",
                    "augmented_hexatonic",
                    ",",
                    "chromatic",
                    ",",
                    "lydian_dominant",
                    ",",
                    "altered",
                    ",",
                    "phrygian_dominant",
                    ",",
                    "messiaen_1",
                    ",",
                    "messiaen_2",
                    ",",
                    "messiaen_3",
                    ",",
                    "messiaen_4",
                    ",",
                    "messiaen_5",
                    ",",
                    "messiaen_6",
                    ",",
                    "messiaen_7",
                    ",",
                    "gong_12tet",
                    ",",
                    "shang_12tet",
                    ",",
                    "jue_12tet",
                    ",",
                    "zhi_12tet",
                    ",",
                    "yu_12tet",
                    ",",
                    "rast_24edo_model",
                    ",",
                    "bayati_24edo_model",
                    ",",
                    "hijaz_12tet_model",
                    ",",
                    "hirajoshi_ellis_112",
                    ",",
                    "hirajoshi_ellis_111",
                    ",",
                    "pelog_ksatria",
                    ",",
                    "slendro_kanyut_mesem",
                    ",",
                    "custom / imported (use messages)"
                  ],
                  "maxclass": "umenu",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "int",
                    "",
                    ""
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    80,
                    88,
                    300,
                    22
                  ]
                }
              },
              {
                "box": {
                  "hidden": 1,
                  "id": "menu-select",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    80,
                    114,
                    230,
                    22
                  ],
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
                  "outlettype": [
                    "",
                    "",
                    ""
                  ],
                  "patching_rect": [
                    400,
                    114,
                    180,
                    22
                  ],
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
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    80,
                    140,
                    100,
                    22
                  ],
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
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    80,
                    166,
                    200,
                    22
                  ],
                  "text": "loadmess enableitem 41 0"
                }
              },
              {
                "box": {
                  "id": "melodic-toggle",
                  "maxclass": "toggle",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    420,
                    88,
                    22,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "melodic-label",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    452,
                    88,
                    210,
                    20
                  ],
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
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    420,
                    140,
                    140,
                    22
                  ],
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
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    420,
                    166,
                    100,
                    22
                  ],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "id": "melodic-controls",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
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
                    "rect": [
                      160,
                      160,
                      950,
                      810
                    ],
                    "boxes": [
                      {
                        "box": {
                          "comment": "",
                          "id": "status-in",
                          "index": 1,
                          "maxclass": "inlet",
                          "numinlets": 0,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            870,
                            20,
                            30,
                            30
                          ]
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
                          "patching_rect": [
                            870,
                            755,
                            30,
                            30
                          ]
                        }
                      },
                      {
                        "box": {
                          "fontface": 1,
                          "fontsize": 20,
                          "id": "title",
                          "maxclass": "comment",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            25,
                            20,
                            750,
                            29
                          ],
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
                          "patching_rect": [
                            25,
                            60,
                            545,
                            33
                          ],
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
                          "outlettype": [
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            ""
                          ],
                          "patching_rect": [
                            25,
                            770,
                            890,
                            22
                          ],
                          "text": "route melodic stepchance recovery leapavoid maxrun turnbias recoverycents repeats octave octaveshift"
                        }
                      },
                      {
                        "box": {
                          "id": "label-melodic",
                          "maxclass": "comment",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            25,
                            130,
                            240,
                            20
                          ],
                          "text": "Enable melodic preferences"
                        }
                      },
                      {
                        "box": {
                          "id": "ui-melodic",
                          "maxclass": "toggle",
                          "numinlets": 1,
                          "numoutlets": 1,
                          "outlettype": [
                            "int"
                          ],
                          "parameter_enable": 0,
                          "patching_rect": [
                            280,
                            130,
                            25,
                            22
                          ]
                        }
                      },
                      {
                        "box": {
                          "id": "note-melodic",
                          "maxclass": "comment",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            380,
                            130,
                            530,
                            20
                          ],
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
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            280,
                            154,
                            120,
                            22
                          ],
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
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            150,
                            154,
                            110,
                            22
                          ],
                          "text": "prepend set"
                        }
                      },
                      {
                        "box": {
                          "id": "label-stepchance",
                          "maxclass": "comment",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            25,
                            175,
                            240,
                            20
                          ],
                          "text": "Step preference"
                        }
                      },
                      {
                        "box": {
                          "format": 6,
                          "id": "ui-stepchance",
                          "maxclass": "flonum",
                          "maximum": 1,
                          "minimum": 0,
                          "numinlets": 1,
                          "numoutlets": 2,
                          "outlettype": [
                            "",
                            "bang"
                          ],
                          "parameter_enable": 0,
                          "patching_rect": [
                            280,
                            175,
                            80,
                            22
                          ]
                        }
                      },
                      {
                        "box": {
                          "id": "note-stepchance",
                          "maxclass": "comment",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            380,
                            175,
                            530,
                            20
                          ],
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
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            280,
                            199,
                            120,
                            22
                          ],
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
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            150,
                            199,
                            110,
                            22
                          ],
                          "text": "prepend set"
                        }
                      },
                      {
                        "box": {
                          "id": "label-recovery",
                          "maxclass": "comment",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            25,
                            220,
                            240,
                            20
                          ],
                          "text": "Opposite-step recovery"
                        }
                      },
                      {
                        "box": {
                          "format": 6,
                          "id": "ui-recovery",
                          "maxclass": "flonum",
                          "maximum": 1,
                          "minimum": 0,
                          "numinlets": 1,
                          "numoutlets": 2,
                          "outlettype": [
                            "",
                            "bang"
                          ],
                          "parameter_enable": 0,
                          "patching_rect": [
                            280,
                            220,
                            80,
                            22
                          ]
                        }
                      },
                      {
                        "box": {
                          "id": "note-recovery",
                          "maxclass": "comment",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            380,
                            220,
                            530,
                            20
                          ],
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
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            280,
                            244,
                            120,
                            22
                          ],
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
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            150,
                            244,
                            110,
                            22
                          ],
                          "text": "prepend set"
                        }
                      },
                      {
                        "box": {
                          "id": "label-leapavoid",
                          "maxclass": "comment",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            25,
                            265,
                            240,
                            20
                          ],
                          "text": "Avoid consecutive leaps"
                        }
                      },
                      {
                        "box": {
                          "format": 6,
                          "id": "ui-leapavoid",
                          "maxclass": "flonum",
                          "maximum": 1,
                          "minimum": 0,
                          "numinlets": 1,
                          "numoutlets": 2,
                          "outlettype": [
                            "",
                            "bang"
                          ],
                          "parameter_enable": 0,
                          "patching_rect": [
                            280,
                            265,
                            80,
                            22
                          ]
                        }
                      },
                      {
                        "box": {
                          "id": "note-leapavoid",
                          "maxclass": "comment",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            380,
                            265,
                            530,
                            20
                          ],
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
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            280,
                            289,
                            120,
                            22
                          ],
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
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            150,
                            289,
                            110,
                            22
                          ],
                          "text": "prepend set"
                        }
                      },
                      {
                        "box": {
                          "id": "label-maxrun",
                          "maxclass": "comment",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            25,
                            310,
                            240,
                            20
                          ],
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
                          "outlettype": [
                            "",
                            "bang"
                          ],
                          "parameter_enable": 0,
                          "patching_rect": [
                            280,
                            310,
                            80,
                            22
                          ]
                        }
                      },
                      {
                        "box": {
                          "id": "note-maxrun",
                          "maxclass": "comment",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            380,
                            310,
                            530,
                            20
                          ],
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
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            280,
                            334,
                            120,
                            22
                          ],
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
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            150,
                            334,
                            110,
                            22
                          ],
                          "text": "prepend set"
                        }
                      },
                      {
                        "box": {
                          "id": "label-turnbias",
                          "maxclass": "comment",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            25,
                            355,
                            240,
                            20
                          ],
                          "text": "Turning preference"
                        }
                      },
                      {
                        "box": {
                          "format": 6,
                          "id": "ui-turnbias",
                          "maxclass": "flonum",
                          "maximum": 1,
                          "minimum": 0,
                          "numinlets": 1,
                          "numoutlets": 2,
                          "outlettype": [
                            "",
                            "bang"
                          ],
                          "parameter_enable": 0,
                          "patching_rect": [
                            280,
                            355,
                            80,
                            22
                          ]
                        }
                      },
                      {
                        "box": {
                          "id": "note-turnbias",
                          "maxclass": "comment",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            380,
                            355,
                            530,
                            20
                          ],
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
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            280,
                            379,
                            120,
                            22
                          ],
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
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            150,
                            379,
                            110,
                            22
                          ],
                          "text": "prepend set"
                        }
                      },
                      {
                        "box": {
                          "id": "label-recoverycents",
                          "maxclass": "comment",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            25,
                            400,
                            240,
                            20
                          ],
                          "text": "Large-leap threshold (cents)"
                        }
                      },
                      {
                        "box": {
                          "format": 6,
                          "id": "ui-recoverycents",
                          "maxclass": "flonum",
                          "maximum": 48000,
                          "minimum": 1,
                          "numinlets": 1,
                          "numoutlets": 2,
                          "outlettype": [
                            "",
                            "bang"
                          ],
                          "parameter_enable": 0,
                          "patching_rect": [
                            280,
                            400,
                            80,
                            22
                          ]
                        }
                      },
                      {
                        "box": {
                          "id": "note-recoverycents",
                          "maxclass": "comment",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            380,
                            400,
                            530,
                            20
                          ],
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
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            280,
                            424,
                            131,
                            22
                          ],
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
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            150,
                            424,
                            110,
                            22
                          ],
                          "text": "prepend set"
                        }
                      },
                      {
                        "box": {
                          "id": "label-repeats",
                          "maxclass": "comment",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            25,
                            445,
                            240,
                            20
                          ],
                          "text": "Allow repeated notes"
                        }
                      },
                      {
                        "box": {
                          "id": "ui-repeats",
                          "maxclass": "toggle",
                          "numinlets": 1,
                          "numoutlets": 1,
                          "outlettype": [
                            "int"
                          ],
                          "parameter_enable": 0,
                          "patching_rect": [
                            280,
                            445,
                            25,
                            22
                          ]
                        }
                      },
                      {
                        "box": {
                          "id": "note-repeats",
                          "maxclass": "comment",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            380,
                            445,
                            530,
                            20
                          ],
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
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            280,
                            469,
                            120,
                            22
                          ],
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
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            150,
                            469,
                            110,
                            22
                          ],
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
                          "patching_rect": [
                            25,
                            610,
                            592,
                            33
                          ],
                          "text": "Step = an adjacent scale degree smaller than the large-leap threshold. Consecutive thirds\n(two degrees, below the threshold) may continue in the same direction. Repeats do not reset the direction run."
                        }
                      },
                      {
                        "box": {
                          "id": "generate",
                          "maxclass": "message",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            25,
                            675,
                            70,
                            22
                          ],
                          "text": "bang"
                        }
                      },
                      {
                        "box": {
                          "id": "reset-history",
                          "maxclass": "message",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            115,
                            675,
                            110,
                            22
                          ],
                          "text": "melodyreset"
                        }
                      },
                      {
                        "box": {
                          "id": "wide",
                          "maxclass": "message",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            245,
                            675,
                            135,
                            22
                          ],
                          "text": "register -1 1"
                        }
                      },
                      {
                        "box": {
                          "id": "one",
                          "maxclass": "message",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            400,
                            675,
                            135,
                            22
                          ],
                          "text": "register 0 0"
                        }
                      },
                      {
                        "box": {
                          "id": "pure",
                          "maxclass": "message",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            555,
                            675,
                            125,
                            22
                          ],
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
                          "patching_rect": [
                            25,
                            720,
                            516,
                            33
                          ],
                          "text": "Choosing Primary octave restores register 0 0. The tonic pitch class is retained.\nOctave shifts are equally likely up/down and never accumulate. melodyreset clears the phrase."
                        }
                      },
                      {
                        "box": {
                          "id": "label-octave",
                          "maxclass": "comment",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            25,
                            500,
                            240,
                            22
                          ],
                          "text": "Primary octave (bang only)",
                          "fontsize": 12
                        }
                      },
                      {
                        "box": {
                          "id": "ui-octave",
                          "maxclass": "number",
                          "numinlets": 1,
                          "numoutlets": 2,
                          "patching_rect": [
                            280,
                            500,
                            80,
                            22
                          ],
                          "minimum": -5,
                          "maximum": 9,
                          "outlettype": [
                            "",
                            ""
                          ],
                          "parameter_enable": 0
                        }
                      },
                      {
                        "box": {
                          "id": "note-octave",
                          "maxclass": "comment",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            380,
                            500,
                            530,
                            34
                          ],
                          "text": "4 = C4 / MIDI 60 / 6000 cents. 3 = C3; 5 = C5.",
                          "fontsize": 12
                        }
                      },
                      {
                        "box": {
                          "id": "pre-octave",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 1,
                          "patching_rect": [
                            280,
                            524,
                            150,
                            20
                          ],
                          "hidden": 1,
                          "outlettype": [
                            ""
                          ],
                          "text": "prepend octave"
                        }
                      },
                      {
                        "box": {
                          "id": "set-octave",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 1,
                          "patching_rect": [
                            150,
                            524,
                            110,
                            20
                          ],
                          "hidden": 1,
                          "outlettype": [
                            ""
                          ],
                          "text": "prepend set"
                        }
                      },
                      {
                        "box": {
                          "id": "label-octaveshift",
                          "maxclass": "comment",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            25,
                            550,
                            240,
                            22
                          ],
                          "text": "Octave-shift weight",
                          "fontsize": 12
                        }
                      },
                      {
                        "box": {
                          "id": "ui-octaveshift",
                          "maxclass": "flonum",
                          "numinlets": 1,
                          "numoutlets": 2,
                          "patching_rect": [
                            280,
                            550,
                            80,
                            22
                          ],
                          "minimum": 0,
                          "maximum": 1,
                          "outlettype": [
                            "",
                            ""
                          ],
                          "parameter_enable": 0
                        }
                      },
                      {
                        "box": {
                          "id": "note-octaveshift",
                          "maxclass": "comment",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            380,
                            550,
                            530,
                            34
                          ],
                          "text": "0 = stay; 1 = always +/-1 octave; 0.5 = shift on 50% of bangs.",
                          "fontsize": 12
                        }
                      },
                      {
                        "box": {
                          "id": "pre-octaveshift",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 1,
                          "patching_rect": [
                            280,
                            574,
                            150,
                            20
                          ],
                          "hidden": 1,
                          "outlettype": [
                            ""
                          ],
                          "text": "prepend octaveshift"
                        }
                      },
                      {
                        "box": {
                          "id": "set-octaveshift",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 1,
                          "patching_rect": [
                            150,
                            574,
                            110,
                            20
                          ],
                          "hidden": 1,
                          "outlettype": [
                            ""
                          ],
                          "text": "prepend set"
                        }
                      }
                    ],
                    "lines": [
                      {
                        "patchline": {
                          "destination": [
                            "command-out",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "generate",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "command-out",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "one",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "command-out",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "pre-leapavoid",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "command-out",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "pre-maxrun",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "command-out",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "pre-melodic",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "command-out",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "pre-recovery",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "command-out",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "pre-recoverycents",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "command-out",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "pre-repeats",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "command-out",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "pre-stepchance",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "command-out",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "pre-turnbias",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "command-out",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "pure",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "command-out",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "reset-history",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "ui-leapavoid",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "set-leapavoid",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "ui-maxrun",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "set-maxrun",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "ui-melodic",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "set-melodic",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "ui-recovery",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "set-recovery",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "ui-recoverycents",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "set-recoverycents",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "ui-repeats",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "set-repeats",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "ui-stepchance",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "set-stepchance",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "ui-turnbias",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "set-turnbias",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "set-leapavoid",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "settings-route",
                            3
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "set-maxrun",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "settings-route",
                            4
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "set-melodic",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "settings-route",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "set-recovery",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "settings-route",
                            2
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "set-recoverycents",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "settings-route",
                            6
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "set-repeats",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "settings-route",
                            7
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "set-stepchance",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "settings-route",
                            1
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "set-turnbias",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "settings-route",
                            5
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "settings-route",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "status-in",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "pre-leapavoid",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "ui-leapavoid",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "pre-maxrun",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "ui-maxrun",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "pre-melodic",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "ui-melodic",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "pre-recovery",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "ui-recovery",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "pre-recoverycents",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "ui-recoverycents",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "pre-repeats",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "ui-repeats",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "pre-stepchance",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "ui-stepchance",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "pre-turnbias",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "ui-turnbias",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "command-out",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "wide",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "source": [
                            "ui-octave",
                            0
                          ],
                          "destination": [
                            "pre-octave",
                            0
                          ],
                          "hidden": 1
                        }
                      },
                      {
                        "patchline": {
                          "source": [
                            "pre-octave",
                            0
                          ],
                          "destination": [
                            "command-out",
                            0
                          ],
                          "hidden": 1
                        }
                      },
                      {
                        "patchline": {
                          "source": [
                            "settings-route",
                            8
                          ],
                          "destination": [
                            "set-octave",
                            0
                          ],
                          "hidden": 1
                        }
                      },
                      {
                        "patchline": {
                          "source": [
                            "set-octave",
                            0
                          ],
                          "destination": [
                            "ui-octave",
                            0
                          ],
                          "hidden": 1
                        }
                      },
                      {
                        "patchline": {
                          "source": [
                            "ui-octaveshift",
                            0
                          ],
                          "destination": [
                            "pre-octaveshift",
                            0
                          ],
                          "hidden": 1
                        }
                      },
                      {
                        "patchline": {
                          "source": [
                            "pre-octaveshift",
                            0
                          ],
                          "destination": [
                            "command-out",
                            0
                          ],
                          "hidden": 1
                        }
                      },
                      {
                        "patchline": {
                          "source": [
                            "settings-route",
                            9
                          ],
                          "destination": [
                            "set-octaveshift",
                            0
                          ],
                          "hidden": 1
                        }
                      },
                      {
                        "patchline": {
                          "source": [
                            "set-octaveshift",
                            0
                          ],
                          "destination": [
                            "ui-octaveshift",
                            0
                          ],
                          "hidden": 1
                        }
                      }
                    ]
                  },
                  "patching_rect": [
                    700,
                    88,
                    190,
                    22
                  ],
                  "text": "p melodic_preferences"
                }
              },
              {
                "box": {
                  "id": "melodic-open",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    910,
                    88,
                    225,
                    20
                  ],
                  "text": "Double-click for controls"
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": [
                    "menu-select",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "all-scale-menu",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "melodic-controls",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "melodic-prepend",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "melodic-toggle",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "melodic-set",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "melodic-prepend",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "melodic-toggle",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "all-scale-menu",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "menu-disable",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "menu-select",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "all-scale-menu",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "menu-set",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "melodic-set",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "menu-status",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "menu-set",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "menu-status",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-12",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-14",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-16",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-18",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-20",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-22",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-24",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-26",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-28",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "melodic-controls",
                    0
                  ],
                  "hidden": 1,
                  "order": 0,
                  "source": [
                    "obj-3",
                    3
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "menu-status",
                    0
                  ],
                  "hidden": 1,
                  "order": 1,
                  "source": [
                    "obj-3",
                    3
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-4",
                    0
                  ],
                  "source": [
                    "obj-3",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-5",
                    0
                  ],
                  "order": 0,
                  "source": [
                    "obj-3",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-71",
                    0
                  ],
                  "order": 1,
                  "source": [
                    "obj-3",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-8",
                    0
                  ],
                  "order": 2,
                  "source": [
                    "obj-3",
                    3
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-31",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-33",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-35",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-37",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-39",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-41",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-43",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-45",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-47",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-50",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-52",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-54",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-56",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-58",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-60",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-62",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-64",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-66",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-67",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-68",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-67",
                    0
                  ],
                  "source": [
                    "obj-70",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-70",
                    0
                  ],
                  "source": [
                    "obj-73",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-9",
                    0
                  ],
                  "source": [
                    "obj-8",
                    1
                  ]
                }
              }
            ]
          },
          "patching_rect": [
            845,
            810,
            175,
            22
          ],
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
            "rect": [
              50,
              70,
              1100,
              740
            ],
            "boxes": [
              {
                "box": {
                  "fontface": 1,
                  "fontsize": 18,
                  "id": "obj-1",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    15,
                    1000,
                    30
                  ],
                  "text": "NODES / INDIVIDUAL DEGREES"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 12,
                  "id": "obj-2",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    55,
                    1020,
                    40
                  ],
                  "text": "Seven nodes multiply the major profile degree weights. Equal positive node weights preserve the original profile."
                }
              },
              {
                "box": {
                  "embedstate": [
                    [
                      "restore",
                      "{\"version\":1,\"state\":{\"base\":{\"name\":\"major\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,200,400,500,700,900,1100],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"mapping\":\"nearest\",\"reference\":440,\"registerMin\":0,\"registerMax\":0,\"strength\":1,\"stepbias\":0,\"repeats\":1,\"nodesmode\":\"degrees\",\"hysteresis\":0.05,\"keybase\":60,\"melodic\":1,\"stepchance\":0.9,\"recovery\":0.98,\"leapavoid\":0.97,\"maxrun\":3,\"turnbias\":0.9,\"recoverycents\":480,\"octaveshift\":0,\"octave\":\"tonic\"},\"configs\":{\"major_12tet\":{\"name\":\"major_12tet\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,200,400,500,700,900,1100],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"major_just\":{\"name\":\"major_just\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,203.91000173077487,386.3137138648348,498.04499913461245,701.9550008653874,884.3587129994474,1088.2687147302222],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"just_major_5limit\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"minor_12tet\":{\"name\":\"minor_12tet\",\"scale\":\"natural_minor\",\"nominal\":[0,200,300,500,700,800,1000],\"cents\":[0,200,300,500,700,800,1000],\"ids\":[\"pc0\",\"pc2\",\"pc3\",\"pc5\",\"pc7\",\"pc8\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_minor\",\"weights\":[6.33,3.52,5.38,3.53,4.75,3.98,3.34],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"pentatonic_12tet\":{\"name\":\"pentatonic_12tet\",\"scale\":\"major_pentatonic\",\"nominal\":[0,200,400,700,900],\"cents\":[0,200,400,700,900],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc7\",\"pc9\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1],\"profileSource\":\"uniform_model\"},\"dorian_12tet\":{\"name\":\"dorian_12tet\",\"scale\":\"dorian\",\"nominal\":[0,200,300,500,700,900,1000],\"cents\":[0,200,300,500,700,900,1000],\"ids\":[\"pc0\",\"pc2\",\"pc3\",\"pc5\",\"pc7\",\"pc9\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1,1,1],\"profileSource\":\"uniform_model\"}},\"assigned\":[{\"name\":\"major_12tet\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,200,400,500,700,900,1100],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},{\"name\":\"major_just\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,203.91000173077487,386.3137138648348,498.04499913461245,701.9550008653874,884.3587129994474,1088.2687147302222],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"just_major_5limit\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"}],\"nodeweights\":[0.14285714285714288,0.1428571428571429,0.14285714285714288,0.14285714285714288,0.14285714285714288,0.14285714285714288,0.14285714285714288]}"
                    ]
                  ],
                  "id": "obj-3",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 4,
                  "outlettype": [
                    "",
                    "",
                    "",
                    ""
                  ],
                  "patching_rect": [
                    540,
                    390,
                    235,
                    22
                  ],
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
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    540,
                    465,
                    120,
                    22
                  ]
                }
              },
              {
                "box": {
                  "format": 6,
                  "id": "obj-5",
                  "maxclass": "flonum",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    690,
                    465,
                    120,
                    22
                  ]
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 12,
                  "id": "obj-6",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    540,
                    490,
                    130,
                    20
                  ],
                  "text": "midicents"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 12,
                  "id": "obj-7",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    690,
                    490,
                    130,
                    20
                  ],
                  "text": "Hz"
                }
              },
              {
                "box": {
                  "id": "obj-8",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "patching_rect": [
                    860,
                    507,
                    145,
                    22
                  ],
                  "text": "route nodeweights"
                }
              },
              {
                "box": {
                  "id": "obj-9",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    860,
                    465,
                    145,
                    22
                  ],
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
                  "nodesnames": [
                    "C",
                    "D",
                    "E",
                    "F",
                    "G",
                    "A",
                    "B"
                  ],
                  "nsize": [
                    0.65,
                    0.65,
                    0.65,
                    0.65,
                    0.65,
                    0.65,
                    0.65
                  ],
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    ""
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    25,
                    110,
                    390,
                    390
                  ],
                  "xplace": [
                    0.5,
                    0.7501860743897695,
                    0.8119769318981835,
                    0.6388427965176187,
                    0.36115720348238145,
                    0.18802306810181646,
                    0.24981392561023041
                  ],
                  "yplace": [
                    0.18,
                    0.30048326340520526,
                    0.5712066988660206,
                    0.7883100377287742,
                    0.7883100377287742,
                    0.5712066988660206,
                    0.3004832634052053
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-11",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    25,
                    525,
                    170,
                    22
                  ],
                  "text": "prepend nodeweights"
                }
              },
              {
                "box": {
                  "id": "obj-12",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "patching_rect": [
                    540,
                    110,
                    70,
                    22
                  ],
                  "text": "loadbang"
                }
              },
              {
                "box": {
                  "id": "obj-13",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "bang",
                    "bang"
                  ],
                  "patching_rect": [
                    540,
                    145,
                    60,
                    22
                  ],
                  "text": "t b b"
                }
              },
              {
                "box": {
                  "id": "obj-14",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    630,
                    145,
                    420,
                    44
                  ],
                  "text": "nodesmode degrees"
                }
              },
              {
                "box": {
                  "id": "obj-15",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    540,
                    185,
                    85,
                    22
                  ],
                  "text": "0.5 0.5"
                }
              },
              {
                "box": {
                  "id": "obj-16",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    540,
                    250,
                    70,
                    22
                  ],
                  "text": "bang"
                }
              },
              {
                "box": {
                  "id": "obj-17",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    650,
                    250,
                    90,
                    22
                  ],
                  "text": "degree 3"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 12,
                  "id": "obj-18",
                  "linecount": 2,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    540,
                    290,
                    500,
                    55
                  ],
                  "text": "Move the cursor, THEN click bang or degree 3. Movement updates the configuration without triggering a tone."
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 12,
                  "id": "obj-19",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    590,
                    1000,
                    55
                  ],
                  "text": "Tuning is prepared before each midicents output. Node weights update through an explicit message, so they cannot become note lists or scale seeds."
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 12,
                  "id": "obj-20",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    660,
                    1000,
                    45
                  ],
                  "text": "All-zero weights are rejected and the last valid vector is retained. Only source-labelled profiles are supplied; spatial modifications are compositional transformations."
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": [
                    "obj-11",
                    0
                  ],
                  "source": [
                    "obj-10",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    1
                  ],
                  "source": [
                    "obj-11",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-13",
                    0
                  ],
                  "source": [
                    "obj-12",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-14",
                    0
                  ],
                  "source": [
                    "obj-13",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-15",
                    0
                  ],
                  "source": [
                    "obj-13",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-14",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-10",
                    0
                  ],
                  "source": [
                    "obj-15",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-16",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-17",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-4",
                    0
                  ],
                  "source": [
                    "obj-3",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-5",
                    0
                  ],
                  "source": [
                    "obj-3",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-8",
                    0
                  ],
                  "source": [
                    "obj-3",
                    3
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-9",
                    0
                  ],
                  "source": [
                    "obj-8",
                    1
                  ]
                }
              }
            ]
          },
          "patching_rect": [
            1030,
            810,
            175,
            22
          ],
          "text": "p nodes_degrees"
        }
      },
      {
        "box": {
          "id": "obj-62",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
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
            "rect": [
              134,
              172,
              1170,
              880
            ],
            "boxes": [
              {
                "box": {
                  "id": "obj-1",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    20,
                    1100,
                    30
                  ],
                  "fontsize": 18,
                  "fontface": 1,
                  "text": "NODES / SIX-MODE TUNING MORPH"
                }
              },
              {
                "box": {
                  "id": "obj-2",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    62,
                    1100,
                    40
                  ],
                  "text": "Drag between circles to interpolate corresponding degrees in cents. Bang generates; MIDI maps the played register.\nTop: mixolydian / ionian / lydian. Bottom: dorian / aeolian / phrygian.",
                  "fontsize": 12
                }
              },
              {
                "box": {
                  "displayknob": 1,
                  "id": "obj-10",
                  "maxclass": "nodes",
                  "mousemode": 2,
                  "nodenumber": 6,
                  "nodesnames": [
                    "mixolydian",
                    "ionian",
                    "lydian",
                    "dorian",
                    "aeolian",
                    "phrygian"
                  ],
                  "nsize": [
                    0.55,
                    0.55,
                    0.55,
                    0.55,
                    0.55,
                    0.55
                  ],
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    ""
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    25,
                    120,
                    460,
                    460
                  ],
                  "xplace": [
                    0.18,
                    0.5,
                    0.82,
                    0.18,
                    0.5,
                    0.82
                  ],
                  "yplace": [
                    0.25,
                    0.25,
                    0.25,
                    0.75,
                    0.75,
                    0.75
                  ]
                }
              },
              {
                "box": {
                  "embedstate": [
                    [
                      "restore",
                      "{\"version\":1,\"state\":{\"base\":{\"name\":\"major\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,200,400,500,700,900,1100],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"mapping\":\"nearest\",\"reference\":440,\"registerMin\":0,\"registerMax\":0,\"strength\":1,\"stepbias\":0,\"repeats\":1,\"nodesmode\":\"modal\",\"hysteresis\":0.05,\"keybase\":60,\"melodic\":1,\"stepchance\":0.9,\"recovery\":0.98,\"leapavoid\":0.97,\"maxrun\":3,\"turnbias\":0.9,\"recoverycents\":480,\"octaveshift\":0,\"octave\":\"tonic\"},\"configs\":{\"major_12tet\":{\"name\":\"major_12tet\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,200,400,500,700,900,1100],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"major_just\":{\"name\":\"major_just\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,203.91000173077487,386.3137138648348,498.04499913461245,701.9550008653874,884.3587129994474,1088.2687147302222],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"just_major_5limit\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"minor_12tet\":{\"name\":\"minor_12tet\",\"scale\":\"natural_minor\",\"nominal\":[0,200,300,500,700,800,1000],\"cents\":[0,200,300,500,700,800,1000],\"ids\":[\"pc0\",\"pc2\",\"pc3\",\"pc5\",\"pc7\",\"pc8\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_minor\",\"weights\":[6.33,3.52,5.38,3.53,4.75,3.98,3.34],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"pentatonic_12tet\":{\"name\":\"pentatonic_12tet\",\"scale\":\"major_pentatonic\",\"nominal\":[0,200,400,700,900],\"cents\":[0,200,400,700,900],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc7\",\"pc9\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1],\"profileSource\":\"uniform_model\"},\"dorian_12tet\":{\"name\":\"dorian_12tet\",\"scale\":\"dorian\",\"nominal\":[0,200,300,500,700,900,1000],\"cents\":[0,200,300,500,700,900,1000],\"ids\":[\"pc0\",\"pc2\",\"pc3\",\"pc5\",\"pc7\",\"pc9\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1,1,1],\"profileSource\":\"uniform_model\"}},\"assigned\":[{\"name\":\"mixolydian\",\"scale\":\"mixolydian\",\"nominal\":[0,200,400,500,700,900,1000],\"cents\":[0,200,400,500,700,900,1000],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1,1,1],\"profileSource\":\"uniform_model\"},{\"name\":\"ionian\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,200,400,500,700,900,1100],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1,1,1],\"profileSource\":\"uniform_model\"},{\"name\":\"lydian\",\"scale\":\"lydian\",\"nominal\":[0,200,400,600,700,900,1100],\"cents\":[0,200,400,600,700,900,1100],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc6\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1,1,1],\"profileSource\":\"uniform_model\"},{\"name\":\"dorian\",\"scale\":\"dorian\",\"nominal\":[0,200,300,500,700,900,1000],\"cents\":[0,200,300,500,700,900,1000],\"ids\":[\"pc0\",\"pc2\",\"pc3\",\"pc5\",\"pc7\",\"pc9\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1,1,1],\"profileSource\":\"uniform_model\"},{\"name\":\"aeolian\",\"scale\":\"natural_minor\",\"nominal\":[0,200,300,500,700,800,1000],\"cents\":[0,200,300,500,700,800,1000],\"ids\":[\"pc0\",\"pc2\",\"pc3\",\"pc5\",\"pc7\",\"pc8\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1,1,1],\"profileSource\":\"uniform_model\"},{\"name\":\"phrygian\",\"scale\":\"phrygian\",\"nominal\":[0,100,300,500,700,800,1000],\"cents\":[0,100,300,500,700,800,1000],\"ids\":[\"pc0\",\"pc1\",\"pc3\",\"pc5\",\"pc7\",\"pc8\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1,1,1],\"profileSource\":\"uniform_model\"}],\"nodeweights\":[0.16666666666666666,0.16666666666666666,0.16666666666666666,0.16666666666666666,0.16666666666666666,0.16666666666666666]}"
                    ]
                  ],
                  "id": "obj-3",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 4,
                  "outlettype": [
                    "",
                    "",
                    "",
                    ""
                  ],
                  "patching_rect": [
                    540,
                    675,
                    235,
                    22
                  ],
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
                  "patching_rect": [
                    25,
                    600,
                    170,
                    22
                  ],
                  "outlettype": [
                    ""
                  ],
                  "text": "prepend nodeweights"
                }
              },
              {
                "box": {
                  "id": "gen-label",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    540,
                    125,
                    110,
                    22
                  ],
                  "text": "Primary octave",
                  "fontsize": 12
                }
              },
              {
                "box": {
                  "id": "gen-octave",
                  "maxclass": "number",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "patching_rect": [
                    652,
                    125,
                    55,
                    22
                  ],
                  "minimum": -5,
                  "maximum": 9,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "parameter_enable": 0
                }
              },
              {
                "box": {
                  "id": "gen-shift-label",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    735,
                    125,
                    155,
                    22
                  ],
                  "text": "Octave-shift weight",
                  "fontsize": 12
                }
              },
              {
                "box": {
                  "id": "gen-shift",
                  "maxclass": "flonum",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "patching_rect": [
                    893,
                    125,
                    70,
                    22
                  ],
                  "minimum": 0,
                  "maximum": 1,
                  "format": 6,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "parameter_enable": 0
                }
              },
              {
                "box": {
                  "id": "gen-pre-oct",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "patching_rect": [
                    540,
                    150,
                    120,
                    22
                  ],
                  "hidden": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "prepend octave"
                }
              },
              {
                "box": {
                  "id": "gen-pre-shift",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "patching_rect": [
                    670,
                    150,
                    150,
                    22
                  ],
                  "hidden": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "prepend octaveshift"
                }
              },
              {
                "box": {
                  "id": "gen-route",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 3,
                  "patching_rect": [
                    540,
                    175,
                    235,
                    22
                  ],
                  "hidden": 1,
                  "outlettype": [
                    "",
                    "",
                    ""
                  ],
                  "text": "route octave octaveshift"
                }
              },
              {
                "box": {
                  "id": "gen-set-oct",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "patching_rect": [
                    540,
                    200,
                    95,
                    22
                  ],
                  "hidden": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "id": "gen-set-shift",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "patching_rect": [
                    645,
                    200,
                    95,
                    22
                  ],
                  "hidden": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "id": "octave-note",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    540,
                    160,
                    595,
                    50
                  ],
                  "text": "Primary octave 4 = C4 (MIDI 60 / 6000 cents); 3 = C3; 5 = C5.\nShift weight 0 stays; 1 always shifts +/-1 octave, equally likely.\nSelecting Primary octave restores the single-register setting.",
                  "fontsize": 12
                }
              },
              {
                "box": {
                  "id": "generate",
                  "maxclass": "button",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "patching_rect": [
                    540,
                    230,
                    36,
                    36
                  ],
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "generate-label",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    590,
                    235,
                    160,
                    22
                  ],
                  "text": "Bang: generate one tone",
                  "fontsize": 12
                }
              },
              {
                "box": {
                  "id": "melodic-controls",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
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
                    "rect": [
                      160,
                      160,
                      950,
                      810
                    ],
                    "boxes": [
                      {
                        "box": {
                          "comment": "",
                          "id": "status-in",
                          "index": 1,
                          "maxclass": "inlet",
                          "numinlets": 0,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            870,
                            20,
                            30,
                            30
                          ]
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
                          "patching_rect": [
                            870,
                            755,
                            30,
                            30
                          ]
                        }
                      },
                      {
                        "box": {
                          "fontface": 1,
                          "fontsize": 20,
                          "id": "title",
                          "maxclass": "comment",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            25,
                            20,
                            750,
                            30
                          ],
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
                          "patching_rect": [
                            25,
                            60,
                            800,
                            45
                          ],
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
                          "outlettype": [
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            ""
                          ],
                          "patching_rect": [
                            25,
                            770,
                            890,
                            22
                          ],
                          "text": "route melodic stepchance recovery leapavoid maxrun turnbias recoverycents repeats octave octaveshift"
                        }
                      },
                      {
                        "box": {
                          "id": "label-melodic",
                          "maxclass": "comment",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            25,
                            130,
                            240,
                            22
                          ],
                          "text": "Enable melodic preferences"
                        }
                      },
                      {
                        "box": {
                          "id": "ui-melodic",
                          "maxclass": "toggle",
                          "numinlets": 1,
                          "numoutlets": 1,
                          "outlettype": [
                            "int"
                          ],
                          "parameter_enable": 0,
                          "patching_rect": [
                            280,
                            130,
                            25,
                            22
                          ]
                        }
                      },
                      {
                        "box": {
                          "id": "note-melodic",
                          "maxclass": "comment",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            380,
                            130,
                            530,
                            32
                          ],
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
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            280,
                            154,
                            120,
                            20
                          ],
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
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            150,
                            154,
                            110,
                            20
                          ],
                          "text": "prepend set"
                        }
                      },
                      {
                        "box": {
                          "id": "label-stepchance",
                          "maxclass": "comment",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            25,
                            175,
                            240,
                            22
                          ],
                          "text": "Step preference"
                        }
                      },
                      {
                        "box": {
                          "format": 6,
                          "id": "ui-stepchance",
                          "maxclass": "flonum",
                          "maximum": 1,
                          "minimum": 0,
                          "numinlets": 1,
                          "numoutlets": 2,
                          "outlettype": [
                            "",
                            "bang"
                          ],
                          "parameter_enable": 0,
                          "patching_rect": [
                            280,
                            175,
                            80,
                            22
                          ]
                        }
                      },
                      {
                        "box": {
                          "id": "note-stepchance",
                          "maxclass": "comment",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            380,
                            175,
                            530,
                            32
                          ],
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
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            280,
                            199,
                            120,
                            20
                          ],
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
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            150,
                            199,
                            110,
                            20
                          ],
                          "text": "prepend set"
                        }
                      },
                      {
                        "box": {
                          "id": "label-recovery",
                          "maxclass": "comment",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            25,
                            220,
                            240,
                            22
                          ],
                          "text": "Opposite-step recovery"
                        }
                      },
                      {
                        "box": {
                          "format": 6,
                          "id": "ui-recovery",
                          "maxclass": "flonum",
                          "maximum": 1,
                          "minimum": 0,
                          "numinlets": 1,
                          "numoutlets": 2,
                          "outlettype": [
                            "",
                            "bang"
                          ],
                          "parameter_enable": 0,
                          "patching_rect": [
                            280,
                            220,
                            80,
                            22
                          ]
                        }
                      },
                      {
                        "box": {
                          "id": "note-recovery",
                          "maxclass": "comment",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            380,
                            220,
                            530,
                            32
                          ],
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
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            280,
                            244,
                            120,
                            20
                          ],
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
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            150,
                            244,
                            110,
                            20
                          ],
                          "text": "prepend set"
                        }
                      },
                      {
                        "box": {
                          "id": "label-leapavoid",
                          "maxclass": "comment",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            25,
                            265,
                            240,
                            22
                          ],
                          "text": "Avoid consecutive leaps"
                        }
                      },
                      {
                        "box": {
                          "format": 6,
                          "id": "ui-leapavoid",
                          "maxclass": "flonum",
                          "maximum": 1,
                          "minimum": 0,
                          "numinlets": 1,
                          "numoutlets": 2,
                          "outlettype": [
                            "",
                            "bang"
                          ],
                          "parameter_enable": 0,
                          "patching_rect": [
                            280,
                            265,
                            80,
                            22
                          ]
                        }
                      },
                      {
                        "box": {
                          "id": "note-leapavoid",
                          "maxclass": "comment",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            380,
                            265,
                            530,
                            32
                          ],
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
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            280,
                            289,
                            120,
                            20
                          ],
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
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            150,
                            289,
                            110,
                            20
                          ],
                          "text": "prepend set"
                        }
                      },
                      {
                        "box": {
                          "id": "label-maxrun",
                          "maxclass": "comment",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            25,
                            310,
                            240,
                            22
                          ],
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
                          "outlettype": [
                            "",
                            "bang"
                          ],
                          "parameter_enable": 0,
                          "patching_rect": [
                            280,
                            310,
                            80,
                            22
                          ]
                        }
                      },
                      {
                        "box": {
                          "id": "note-maxrun",
                          "maxclass": "comment",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            380,
                            310,
                            530,
                            32
                          ],
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
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            280,
                            334,
                            120,
                            20
                          ],
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
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            150,
                            334,
                            110,
                            20
                          ],
                          "text": "prepend set"
                        }
                      },
                      {
                        "box": {
                          "id": "label-turnbias",
                          "maxclass": "comment",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            25,
                            355,
                            240,
                            22
                          ],
                          "text": "Turning preference"
                        }
                      },
                      {
                        "box": {
                          "format": 6,
                          "id": "ui-turnbias",
                          "maxclass": "flonum",
                          "maximum": 1,
                          "minimum": 0,
                          "numinlets": 1,
                          "numoutlets": 2,
                          "outlettype": [
                            "",
                            "bang"
                          ],
                          "parameter_enable": 0,
                          "patching_rect": [
                            280,
                            355,
                            80,
                            22
                          ]
                        }
                      },
                      {
                        "box": {
                          "id": "note-turnbias",
                          "maxclass": "comment",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            380,
                            355,
                            530,
                            32
                          ],
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
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            280,
                            379,
                            120,
                            20
                          ],
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
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            150,
                            379,
                            110,
                            20
                          ],
                          "text": "prepend set"
                        }
                      },
                      {
                        "box": {
                          "id": "label-recoverycents",
                          "maxclass": "comment",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            25,
                            400,
                            240,
                            22
                          ],
                          "text": "Large-leap threshold (cents)"
                        }
                      },
                      {
                        "box": {
                          "format": 6,
                          "id": "ui-recoverycents",
                          "maxclass": "flonum",
                          "maximum": 48000,
                          "minimum": 1,
                          "numinlets": 1,
                          "numoutlets": 2,
                          "outlettype": [
                            "",
                            "bang"
                          ],
                          "parameter_enable": 0,
                          "patching_rect": [
                            280,
                            400,
                            80,
                            22
                          ]
                        }
                      },
                      {
                        "box": {
                          "id": "note-recoverycents",
                          "maxclass": "comment",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            380,
                            400,
                            530,
                            32
                          ],
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
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            280,
                            424,
                            120,
                            20
                          ],
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
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            150,
                            424,
                            110,
                            20
                          ],
                          "text": "prepend set"
                        }
                      },
                      {
                        "box": {
                          "id": "label-repeats",
                          "maxclass": "comment",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            25,
                            445,
                            240,
                            22
                          ],
                          "text": "Allow repeated notes"
                        }
                      },
                      {
                        "box": {
                          "id": "ui-repeats",
                          "maxclass": "toggle",
                          "numinlets": 1,
                          "numoutlets": 1,
                          "outlettype": [
                            "int"
                          ],
                          "parameter_enable": 0,
                          "patching_rect": [
                            280,
                            445,
                            25,
                            22
                          ]
                        }
                      },
                      {
                        "box": {
                          "id": "note-repeats",
                          "maxclass": "comment",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            380,
                            445,
                            530,
                            32
                          ],
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
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            280,
                            469,
                            120,
                            20
                          ],
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
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            150,
                            469,
                            110,
                            20
                          ],
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
                          "patching_rect": [
                            25,
                            610,
                            880,
                            43
                          ],
                          "text": "Step = an adjacent scale degree smaller than the large-leap threshold. Consecutive thirds\n(two degrees, below the threshold) may continue in the same direction. Repeats do not reset the direction run."
                        }
                      },
                      {
                        "box": {
                          "id": "generate",
                          "maxclass": "message",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            25,
                            675,
                            70,
                            22
                          ],
                          "text": "bang"
                        }
                      },
                      {
                        "box": {
                          "id": "reset-history",
                          "maxclass": "message",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            115,
                            675,
                            110,
                            22
                          ],
                          "text": "melodyreset"
                        }
                      },
                      {
                        "box": {
                          "id": "wide",
                          "maxclass": "message",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            245,
                            675,
                            135,
                            22
                          ],
                          "text": "register -1 1"
                        }
                      },
                      {
                        "box": {
                          "id": "one",
                          "maxclass": "message",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            400,
                            675,
                            135,
                            22
                          ],
                          "text": "register 0 0"
                        }
                      },
                      {
                        "box": {
                          "id": "pure",
                          "maxclass": "message",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            555,
                            675,
                            125,
                            22
                          ],
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
                          "patching_rect": [
                            25,
                            720,
                            800,
                            43
                          ],
                          "text": "Choosing Primary octave restores register 0 0. The tonic pitch class is retained.\nOctave shifts are equally likely up/down and never accumulate. melodyreset clears the phrase."
                        }
                      },
                      {
                        "box": {
                          "id": "label-octave",
                          "maxclass": "comment",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            25,
                            500,
                            240,
                            22
                          ],
                          "text": "Primary octave (bang only)",
                          "fontsize": 12
                        }
                      },
                      {
                        "box": {
                          "id": "ui-octave",
                          "maxclass": "number",
                          "numinlets": 1,
                          "numoutlets": 2,
                          "patching_rect": [
                            280,
                            500,
                            80,
                            22
                          ],
                          "minimum": -5,
                          "maximum": 9,
                          "outlettype": [
                            "",
                            ""
                          ],
                          "parameter_enable": 0
                        }
                      },
                      {
                        "box": {
                          "id": "note-octave",
                          "maxclass": "comment",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            380,
                            500,
                            530,
                            34
                          ],
                          "text": "4 = C4 / MIDI 60 / 6000 cents. 3 = C3; 5 = C5.",
                          "fontsize": 12
                        }
                      },
                      {
                        "box": {
                          "id": "pre-octave",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 1,
                          "patching_rect": [
                            280,
                            524,
                            150,
                            20
                          ],
                          "hidden": 1,
                          "outlettype": [
                            ""
                          ],
                          "text": "prepend octave"
                        }
                      },
                      {
                        "box": {
                          "id": "set-octave",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 1,
                          "patching_rect": [
                            150,
                            524,
                            110,
                            20
                          ],
                          "hidden": 1,
                          "outlettype": [
                            ""
                          ],
                          "text": "prepend set"
                        }
                      },
                      {
                        "box": {
                          "id": "label-octaveshift",
                          "maxclass": "comment",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            25,
                            550,
                            240,
                            22
                          ],
                          "text": "Octave-shift weight",
                          "fontsize": 12
                        }
                      },
                      {
                        "box": {
                          "id": "ui-octaveshift",
                          "maxclass": "flonum",
                          "numinlets": 1,
                          "numoutlets": 2,
                          "patching_rect": [
                            280,
                            550,
                            80,
                            22
                          ],
                          "minimum": 0,
                          "maximum": 1,
                          "outlettype": [
                            "",
                            ""
                          ],
                          "parameter_enable": 0
                        }
                      },
                      {
                        "box": {
                          "id": "note-octaveshift",
                          "maxclass": "comment",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            380,
                            550,
                            530,
                            34
                          ],
                          "text": "0 = stay; 1 = always +/-1 octave; 0.5 = shift on 50% of bangs.",
                          "fontsize": 12
                        }
                      },
                      {
                        "box": {
                          "id": "pre-octaveshift",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 1,
                          "patching_rect": [
                            280,
                            574,
                            150,
                            20
                          ],
                          "hidden": 1,
                          "outlettype": [
                            ""
                          ],
                          "text": "prepend octaveshift"
                        }
                      },
                      {
                        "box": {
                          "id": "set-octaveshift",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 1,
                          "patching_rect": [
                            150,
                            574,
                            110,
                            20
                          ],
                          "hidden": 1,
                          "outlettype": [
                            ""
                          ],
                          "text": "prepend set"
                        }
                      }
                    ],
                    "lines": [
                      {
                        "patchline": {
                          "destination": [
                            "command-out",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "generate",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "command-out",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "one",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "command-out",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "pre-leapavoid",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "command-out",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "pre-maxrun",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "command-out",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "pre-melodic",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "command-out",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "pre-recovery",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "command-out",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "pre-recoverycents",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "command-out",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "pre-repeats",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "command-out",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "pre-stepchance",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "command-out",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "pre-turnbias",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "command-out",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "pure",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "command-out",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "reset-history",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "ui-leapavoid",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "set-leapavoid",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "ui-maxrun",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "set-maxrun",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "ui-melodic",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "set-melodic",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "ui-recovery",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "set-recovery",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "ui-recoverycents",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "set-recoverycents",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "ui-repeats",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "set-repeats",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "ui-stepchance",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "set-stepchance",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "ui-turnbias",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "set-turnbias",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "set-leapavoid",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "settings-route",
                            3
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "set-maxrun",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "settings-route",
                            4
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "set-melodic",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "settings-route",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "set-recovery",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "settings-route",
                            2
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "set-recoverycents",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "settings-route",
                            6
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "set-repeats",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "settings-route",
                            7
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "set-stepchance",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "settings-route",
                            1
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "set-turnbias",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "settings-route",
                            5
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "settings-route",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "status-in",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "pre-leapavoid",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "ui-leapavoid",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "pre-maxrun",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "ui-maxrun",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "pre-melodic",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "ui-melodic",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "pre-recovery",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "ui-recovery",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "pre-recoverycents",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "ui-recoverycents",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "pre-repeats",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "ui-repeats",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "pre-stepchance",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "ui-stepchance",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "pre-turnbias",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "ui-turnbias",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "command-out",
                            0
                          ],
                          "hidden": 1,
                          "source": [
                            "wide",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "source": [
                            "ui-octave",
                            0
                          ],
                          "destination": [
                            "pre-octave",
                            0
                          ],
                          "hidden": 1
                        }
                      },
                      {
                        "patchline": {
                          "source": [
                            "pre-octave",
                            0
                          ],
                          "destination": [
                            "command-out",
                            0
                          ],
                          "hidden": 1
                        }
                      },
                      {
                        "patchline": {
                          "source": [
                            "settings-route",
                            8
                          ],
                          "destination": [
                            "set-octave",
                            0
                          ],
                          "hidden": 1
                        }
                      },
                      {
                        "patchline": {
                          "source": [
                            "set-octave",
                            0
                          ],
                          "destination": [
                            "ui-octave",
                            0
                          ],
                          "hidden": 1
                        }
                      },
                      {
                        "patchline": {
                          "source": [
                            "ui-octaveshift",
                            0
                          ],
                          "destination": [
                            "pre-octaveshift",
                            0
                          ],
                          "hidden": 1
                        }
                      },
                      {
                        "patchline": {
                          "source": [
                            "pre-octaveshift",
                            0
                          ],
                          "destination": [
                            "command-out",
                            0
                          ],
                          "hidden": 1
                        }
                      },
                      {
                        "patchline": {
                          "source": [
                            "settings-route",
                            9
                          ],
                          "destination": [
                            "set-octaveshift",
                            0
                          ],
                          "hidden": 1
                        }
                      },
                      {
                        "patchline": {
                          "source": [
                            "set-octaveshift",
                            0
                          ],
                          "destination": [
                            "ui-octaveshift",
                            0
                          ],
                          "hidden": 1
                        }
                      }
                    ]
                  },
                  "patching_rect": [
                    795,
                    235,
                    190,
                    22
                  ],
                  "text": "p melodic_preferences"
                }
              },
              {
                "box": {
                  "id": "midi-label",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    540,
                    300,
                    580,
                    22
                  ],
                  "fontface": 1,
                  "text": "CLICKABLE KEYBOARD / MIDI TO MIDICENTS",
                  "fontsize": 12
                }
              },
              {
                "box": {
                  "id": "midi-note",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    540,
                    332,
                    580,
                    40
                  ],
                  "text": "Click these keys to audition this example. Use the main-page notein for the external controller.",
                  "fontsize": 12
                }
              },
              {
                "box": {
                  "id": "midi-keys",
                  "maxclass": "kslider",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "patching_rect": [
                    540,
                    385,
                    580,
                    75
                  ],
                  "mode": 2,
                  "inputmode": 1,
                  "offset": 36,
                  "range": 61,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "parameter_enable": 0
                }
              },
              {
                "box": {
                  "id": "midi-strip",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "patching_rect": [
                    540,
                    482,
                    75,
                    22
                  ],
                  "outlettype": [
                    "",
                    ""
                  ],
                  "text": "stripnote"
                }
              },
              {
                "box": {
                  "id": "midi-convert",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "patching_rect": [
                    540,
                    520,
                    65,
                    22
                  ],
                  "outlettype": [
                    ""
                  ],
                  "text": "* 100"
                }
              },
              {
                "box": {
                  "id": "midi-cents",
                  "maxclass": "number",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "patching_rect": [
                    635,
                    520,
                    80,
                    22
                  ],
                  "outlettype": [
                    "",
                    ""
                  ],
                  "parameter_enable": 0
                }
              },
              {
                "box": {
                  "id": "midi-caption",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    735,
                    520,
                    385,
                    35
                  ],
                  "text": "MIDICENTS to JS: MIDI 60 = 6000. Note-offs are filtered.",
                  "fontsize": 12
                }
              },
              {
                "box": {
                  "id": "midicents",
                  "maxclass": "flonum",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "patching_rect": [
                    540,
                    740,
                    130,
                    22
                  ],
                  "outlettype": [
                    "",
                    ""
                  ],
                  "parameter_enable": 0
                }
              },
              {
                "box": {
                  "id": "hz",
                  "maxclass": "flonum",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "patching_rect": [
                    705,
                    740,
                    130,
                    22
                  ],
                  "outlettype": [
                    "",
                    ""
                  ],
                  "parameter_enable": 0
                }
              },
              {
                "box": {
                  "id": "mc-label",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    540,
                    770,
                    140,
                    22
                  ],
                  "text": "midicents",
                  "fontsize": 12
                }
              },
              {
                "box": {
                  "id": "hz-label",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    705,
                    770,
                    130,
                    22
                  ],
                  "text": "Hz",
                  "fontsize": 12
                }
              },
              {
                "box": {
                  "id": "hz-out",
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    705,
                    820,
                    30,
                    30
                  ],
                  "index": 1,
                  "comment": "Hz to parent sine audition"
                }
              },
              {
                "box": {
                  "id": "status-route",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "patching_rect": [
                    865,
                    740,
                    150,
                    22
                  ],
                  "outlettype": [
                    "",
                    ""
                  ],
                  "text": "route nodeweights"
                }
              },
              {
                "box": {
                  "id": "status-print",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    865,
                    780,
                    165,
                    22
                  ],
                  "text": "print mapper_status"
                }
              },
              {
                "box": {
                  "id": "load",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "patching_rect": [
                    25,
                    705,
                    75,
                    22
                  ],
                  "hidden": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "loadbang"
                }
              },
              {
                "box": {
                  "id": "init",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "patching_rect": [
                    25,
                    735,
                    60,
                    22
                  ],
                  "hidden": 1,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "text": "t b b"
                }
              },
              {
                "box": {
                  "id": "setup",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "patching_rect": [
                    25,
                    765,
                    110,
                    22
                  ],
                  "hidden": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "modalnodes"
                }
              },
              {
                "box": {
                  "id": "cursor",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "patching_rect": [
                    150,
                    765,
                    85,
                    22
                  ],
                  "hidden": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "0.5 0.5"
                }
              },
              {
                "box": {
                  "id": "note",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    650,
                    465,
                    100
                  ],
                  "text": "All six modes start from the same tonic and use uniform degree weights.\n\nMovement changes tuning without sounding a note. Use the parent sine-audition controls to listen.",
                  "fontsize": 12
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "source": [
                    "obj-10",
                    0
                  ],
                  "destination": [
                    "obj-11",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-11",
                    0
                  ],
                  "destination": [
                    "obj-3",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gen-octave",
                    0
                  ],
                  "destination": [
                    "gen-pre-oct",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "gen-pre-oct",
                    0
                  ],
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "gen-route",
                    0
                  ],
                  "destination": [
                    "gen-set-oct",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "gen-set-oct",
                    0
                  ],
                  "destination": [
                    "gen-octave",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "gen-shift",
                    0
                  ],
                  "destination": [
                    "gen-pre-shift",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "gen-pre-shift",
                    0
                  ],
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "gen-route",
                    1
                  ],
                  "destination": [
                    "gen-set-shift",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "gen-set-shift",
                    0
                  ],
                  "destination": [
                    "gen-shift",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-3",
                    3
                  ],
                  "destination": [
                    "gen-route",
                    0
                  ],
                  "hidden": 1,
                  "order": 0
                }
              },
              {
                "patchline": {
                  "source": [
                    "generate",
                    0
                  ],
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-3",
                    3
                  ],
                  "destination": [
                    "melodic-controls",
                    0
                  ],
                  "hidden": 1,
                  "order": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "melodic-controls",
                    0
                  ],
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "midi-keys",
                    0
                  ],
                  "destination": [
                    "midi-strip",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "midi-keys",
                    1
                  ],
                  "destination": [
                    "midi-strip",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "midi-strip",
                    0
                  ],
                  "destination": [
                    "midi-convert",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "midi-convert",
                    0
                  ],
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "order": 0
                }
              },
              {
                "patchline": {
                  "source": [
                    "midi-convert",
                    0
                  ],
                  "destination": [
                    "midi-cents",
                    0
                  ],
                  "order": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-3",
                    0
                  ],
                  "destination": [
                    "midicents",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-3",
                    1
                  ],
                  "destination": [
                    "hz",
                    0
                  ],
                  "order": 0
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-3",
                    1
                  ],
                  "destination": [
                    "hz-out",
                    0
                  ],
                  "order": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-3",
                    3
                  ],
                  "destination": [
                    "status-route",
                    0
                  ],
                  "order": 2
                }
              },
              {
                "patchline": {
                  "source": [
                    "status-route",
                    1
                  ],
                  "destination": [
                    "status-print",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "load",
                    0
                  ],
                  "destination": [
                    "init",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "init",
                    1
                  ],
                  "destination": [
                    "setup",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "setup",
                    0
                  ],
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "init",
                    0
                  ],
                  "destination": [
                    "cursor",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "cursor",
                    0
                  ],
                  "destination": [
                    "obj-10",
                    0
                  ],
                  "hidden": 1
                }
              }
            ]
          },
          "patching_rect": [
            660,
            845,
            175,
            22
          ],
          "text": "p nodes_tuning",
          "outlettype": [
            ""
          ]
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
            "rect": [
              50,
              70,
              1100,
              740
            ],
            "boxes": [
              {
                "box": {
                  "fontface": 1,
                  "fontsize": 18,
                  "id": "obj-1",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    15,
                    1000,
                    30
                  ],
                  "text": "MIDI INPUT / NOTE-OFF PAIRING"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 12,
                  "id": "obj-2",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    55,
                    1040,
                    40
                  ],
                  "text": "midinote <pitch> <velocity> <channel> stores each mapped note-on pitch. Its note-off retains that pitch even after a scale or nodes change."
                }
              },
              {
                "box": {
                  "id": "obj-3",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "int",
                    "int",
                    "int"
                  ],
                  "patching_rect": [
                    25,
                    135,
                    75,
                    22
                  ],
                  "text": "notein"
                }
              },
              {
                "box": {
                  "id": "obj-4",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    25,
                    195,
                    100,
                    22
                  ],
                  "text": "pack 0 0 1"
                }
              },
              {
                "box": {
                  "id": "obj-5",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    25,
                    240,
                    150,
                    22
                  ],
                  "text": "prepend midinote"
                }
              },
              {
                "box": {
                  "embedstate": [
                    [
                      "restore",
                      "{\"version\":1,\"state\":{\"base\":{\"name\":\"major\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,200,400,500,700,900,1100],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"mapping\":\"nearest\",\"reference\":440,\"registerMin\":0,\"registerMax\":0,\"strength\":1,\"stepbias\":0,\"repeats\":1,\"nodesmode\":\"off\",\"hysteresis\":0.05,\"keybase\":60,\"melodic\":1,\"stepchance\":0.9,\"recovery\":0.98,\"leapavoid\":0.97,\"maxrun\":3,\"turnbias\":0.9,\"recoverycents\":480,\"octaveshift\":0,\"octave\":\"tonic\"},\"configs\":{\"major_12tet\":{\"name\":\"major_12tet\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,200,400,500,700,900,1100],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"major_just\":{\"name\":\"major_just\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,203.91000173077487,386.3137138648348,498.04499913461245,701.9550008653874,884.3587129994474,1088.2687147302222],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"just_major_5limit\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"minor_12tet\":{\"name\":\"minor_12tet\",\"scale\":\"natural_minor\",\"nominal\":[0,200,300,500,700,800,1000],\"cents\":[0,200,300,500,700,800,1000],\"ids\":[\"pc0\",\"pc2\",\"pc3\",\"pc5\",\"pc7\",\"pc8\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_minor\",\"weights\":[6.33,3.52,5.38,3.53,4.75,3.98,3.34],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"pentatonic_12tet\":{\"name\":\"pentatonic_12tet\",\"scale\":\"major_pentatonic\",\"nominal\":[0,200,400,700,900],\"cents\":[0,200,400,700,900],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc7\",\"pc9\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1],\"profileSource\":\"uniform_model\"},\"dorian_12tet\":{\"name\":\"dorian_12tet\",\"scale\":\"dorian\",\"nominal\":[0,200,300,500,700,900,1000],\"cents\":[0,200,300,500,700,900,1000],\"ids\":[\"pc0\",\"pc2\",\"pc3\",\"pc5\",\"pc7\",\"pc9\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1,1,1],\"profileSource\":\"uniform_model\"}},\"assigned\":[{\"name\":\"major_12tet\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,200,400,500,700,900,1100],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},{\"name\":\"major_just\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,203.91000173077487,386.3137138648348,498.04499913461245,701.9550008653874,884.3587129994474,1088.2687147302222],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"just_major_5limit\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"}],\"nodeweights\":[0.5,0.5]}"
                    ]
                  ],
                  "id": "obj-6",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 4,
                  "outlettype": [
                    "",
                    "",
                    "",
                    ""
                  ],
                  "patching_rect": [
                    25,
                    350,
                    235,
                    22
                  ],
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
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    25,
                    440,
                    120,
                    22
                  ]
                }
              },
              {
                "box": {
                  "format": 6,
                  "id": "obj-8",
                  "maxclass": "flonum",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    175,
                    440,
                    120,
                    22
                  ]
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 12,
                  "id": "obj-9",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    465,
                    130,
                    20
                  ],
                  "text": "midicents"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 12,
                  "id": "obj-10",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    175,
                    465,
                    130,
                    20
                  ],
                  "text": "Hz"
                }
              },
              {
                "box": {
                  "id": "obj-11",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "patching_rect": [
                    345,
                    482,
                    145,
                    22
                  ],
                  "text": "route nodeweights"
                }
              },
              {
                "box": {
                  "id": "obj-12",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    345,
                    440,
                    145,
                    22
                  ],
                  "text": "print mapper_status"
                }
              },
              {
                "box": {
                  "id": "obj-13",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    ""
                  ],
                  "patching_rect": [
                    560,
                    395,
                    175,
                    22
                  ],
                  "text": "route midievent tone"
                }
              },
              {
                "box": {
                  "id": "obj-14",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    560,
                    440,
                    490,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-15",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    560,
                    505,
                    490,
                    22
                  ]
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 12,
                  "id": "obj-16",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    560,
                    467,
                    490,
                    22
                  ],
                  "text": "midicents  velocity  channel  original MIDI key"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 12,
                  "id": "obj-17",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    560,
                    533,
                    500,
                    35
                  ],
                  "text": "degree  period  configuration  conditional probability  reason"
                }
              },
              {
                "box": {
                  "id": "obj-18",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    330,
                    135,
                    320,
                    22
                  ],
                  "text": "midinote 61 100 1"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 12,
                  "id": "obj-19",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    330,
                    163,
                    320,
                    22
                  ],
                  "text": "Test note-on"
                }
              },
              {
                "box": {
                  "id": "obj-20",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    690,
                    135,
                    320,
                    22
                  ],
                  "text": "scale chromatic"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 12,
                  "id": "obj-21",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    690,
                    163,
                    320,
                    22
                  ],
                  "text": "Change scale while held"
                }
              },
              {
                "box": {
                  "id": "obj-22",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    330,
                    220,
                    320,
                    22
                  ],
                  "text": "midinote 61 0 1"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 12,
                  "id": "obj-23",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    330,
                    248,
                    320,
                    22
                  ],
                  "text": "Paired note-off"
                }
              },
              {
                "box": {
                  "id": "obj-24",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    690,
                    220,
                    320,
                    22
                  ],
                  "text": "panic"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 12,
                  "id": "obj-25",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    690,
                    248,
                    320,
                    22
                  ],
                  "text": "Release all tracked notes"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 12,
                  "id": "obj-26",
                  "linecount": 2,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    595,
                    1020,
                    70
                  ],
                  "text": "Note-offs emit midievent metadata only. They do not retrigger the pitch/Hz outlets. Downstream polyphonic voices should use channel + original key as identity. MIDI 1.0 pitch-bend, MPE and byte-stream output are outside this mapper."
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": [
                    "obj-12",
                    0
                  ],
                  "source": [
                    "obj-11",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-14",
                    1
                  ],
                  "source": [
                    "obj-13",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-15",
                    1
                  ],
                  "source": [
                    "obj-13",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-6",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-18",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-6",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-20",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-6",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-22",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-6",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-24",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-4",
                    2
                  ],
                  "source": [
                    "obj-3",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-4",
                    1
                  ],
                  "source": [
                    "obj-3",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-4",
                    0
                  ],
                  "source": [
                    "obj-3",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-5",
                    0
                  ],
                  "source": [
                    "obj-4",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-6",
                    0
                  ],
                  "source": [
                    "obj-5",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-11",
                    0
                  ],
                  "source": [
                    "obj-6",
                    3
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-13",
                    0
                  ],
                  "source": [
                    "obj-6",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-7",
                    0
                  ],
                  "source": [
                    "obj-6",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-8",
                    0
                  ],
                  "source": [
                    "obj-6",
                    1
                  ]
                }
              }
            ]
          },
          "patching_rect": [
            845,
            845,
            175,
            22
          ],
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
            "rect": [
              50,
              70,
              1100,
              740
            ],
            "boxes": [
              {
                "box": {
                  "fontface": 1,
                  "fontsize": 18,
                  "id": "obj-1",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    15,
                    1020,
                    30
                  ],
                  "text": "SCALA IMPORT / SAVE AND RECALL"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 12,
                  "id": "obj-2",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    55,
                    1020,
                    45
                  ],
                  "text": "Import a monotonic .scl scale with 1..256 degrees. The final interval becomes the repeating period. The implicit 1/1 is added once; the endpoint is not duplicated."
                }
              },
              {
                "box": {
                  "id": "obj-3",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    25,
                    130,
                    65,
                    22
                  ],
                  "text": "bang"
                }
              },
              {
                "box": {
                  "id": "obj-4",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "patching_rect": [
                    25,
                    175,
                    100,
                    22
                  ],
                  "text": "opendialog"
                }
              },
              {
                "box": {
                  "id": "obj-5",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    25,
                    220,
                    130,
                    22
                  ],
                  "text": "prepend read"
                }
              },
              {
                "box": {
                  "embedstate": [
                    [
                      "restore",
                      "{\"version\":1,\"state\":{\"base\":{\"name\":\"major\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,200,400,500,700,900,1100],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"mapping\":\"nearest\",\"reference\":440,\"registerMin\":0,\"registerMax\":0,\"strength\":1,\"stepbias\":0,\"repeats\":1,\"nodesmode\":\"off\",\"hysteresis\":0.05,\"keybase\":60,\"melodic\":1,\"stepchance\":0.9,\"recovery\":0.98,\"leapavoid\":0.97,\"maxrun\":3,\"turnbias\":0.9,\"recoverycents\":480,\"octaveshift\":0,\"octave\":\"tonic\"},\"configs\":{\"major_12tet\":{\"name\":\"major_12tet\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,200,400,500,700,900,1100],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"major_just\":{\"name\":\"major_just\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,203.91000173077487,386.3137138648348,498.04499913461245,701.9550008653874,884.3587129994474,1088.2687147302222],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"just_major_5limit\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"minor_12tet\":{\"name\":\"minor_12tet\",\"scale\":\"natural_minor\",\"nominal\":[0,200,300,500,700,800,1000],\"cents\":[0,200,300,500,700,800,1000],\"ids\":[\"pc0\",\"pc2\",\"pc3\",\"pc5\",\"pc7\",\"pc8\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_minor\",\"weights\":[6.33,3.52,5.38,3.53,4.75,3.98,3.34],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"pentatonic_12tet\":{\"name\":\"pentatonic_12tet\",\"scale\":\"major_pentatonic\",\"nominal\":[0,200,400,700,900],\"cents\":[0,200,400,700,900],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc7\",\"pc9\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1],\"profileSource\":\"uniform_model\"},\"dorian_12tet\":{\"name\":\"dorian_12tet\",\"scale\":\"dorian\",\"nominal\":[0,200,300,500,700,900,1000],\"cents\":[0,200,300,500,700,900,1000],\"ids\":[\"pc0\",\"pc2\",\"pc3\",\"pc5\",\"pc7\",\"pc9\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1,1,1],\"profileSource\":\"uniform_model\"}},\"assigned\":[{\"name\":\"major_12tet\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,200,400,500,700,900,1100],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},{\"name\":\"major_just\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,203.91000173077487,386.3137138648348,498.04499913461245,701.9550008653874,884.3587129994474,1088.2687147302222],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"just_major_5limit\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"}],\"nodeweights\":[0.5,0.5]}"
                    ]
                  ],
                  "id": "obj-6",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 4,
                  "outlettype": [
                    "",
                    "",
                    "",
                    ""
                  ],
                  "patching_rect": [
                    25,
                    410,
                    235,
                    22
                  ],
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
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    25,
                    480,
                    120,
                    22
                  ]
                }
              },
              {
                "box": {
                  "format": 6,
                  "id": "obj-8",
                  "maxclass": "flonum",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    175,
                    480,
                    120,
                    22
                  ]
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 12,
                  "id": "obj-9",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    505,
                    130,
                    20
                  ],
                  "text": "midicents"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 12,
                  "id": "obj-10",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    175,
                    505,
                    130,
                    20
                  ],
                  "text": "Hz"
                }
              },
              {
                "box": {
                  "id": "obj-11",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "patching_rect": [
                    345,
                    522,
                    145,
                    22
                  ],
                  "text": "route nodeweights"
                }
              },
              {
                "box": {
                  "id": "obj-12",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    345,
                    480,
                    145,
                    22
                  ],
                  "text": "print mapper_status"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 12,
                  "id": "obj-13",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    110,
                    130,
                    390,
                    30
                  ],
                  "text": "Choose any included file from the scales folder."
                }
              },
              {
                "box": {
                  "id": "obj-14",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    560,
                    130,
                    460,
                    22
                  ],
                  "text": "read major_just_5limit.scl"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-15",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    560,
                    154,
                    460,
                    20
                  ],
                  "text": "5-limit major; use when scales folder is in search path"
                }
              },
              {
                "box": {
                  "id": "obj-16",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    560,
                    179,
                    460,
                    22
                  ],
                  "text": "read bp_13_equal.scl"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-17",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    560,
                    203,
                    460,
                    20
                  ],
                  "text": "13 equal divisions of 3/1"
                }
              },
              {
                "box": {
                  "id": "obj-18",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    560,
                    228,
                    460,
                    22
                  ],
                  "text": "read hirajoshi3.scl"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-19",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    560,
                    252,
                    460,
                    20
                  ],
                  "text": "Specific koto model with 1199-cent period"
                }
              },
              {
                "box": {
                  "id": "obj-20",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    560,
                    277,
                    460,
                    22
                  ],
                  "text": "store imported_scale"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-21",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    560,
                    301,
                    460,
                    20
                  ],
                  "text": "Capture imported model for a nodes assignment"
                }
              },
              {
                "box": {
                  "id": "obj-22",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    560,
                    326,
                    460,
                    22
                  ],
                  "text": "nodeassign 1 imported_scale"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-23",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    560,
                    350,
                    460,
                    20
                  ],
                  "text": "Assign stored model to node 1"
                }
              },
              {
                "box": {
                  "id": "obj-24",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    560,
                    375,
                    460,
                    22
                  ],
                  "text": "bang"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 11,
                  "id": "obj-25",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    560,
                    399,
                    460,
                    20
                  ],
                  "text": "Generate with the imported scale"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 12,
                  "id": "obj-26",
                  "linecount": 2,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    565,
                    1010,
                    75
                  ],
                  "text": "State: saving a patch containing the JS embeds its configuration. getvalueof/setvalueof also expose a JSON state for pattr. Held notes, random-generator position and the last mapped input are transient. Use nodeweights for morphing; JSON states are for whole-state recall."
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 12,
                  "id": "obj-27",
                  "linecount": 2,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    660,
                    1010,
                    55
                  ],
                  "text": "Importer limits: rejects unsorted, repeated, negative/out-of-period degrees and zero-note files; does not import .kbm keyboard mappings. keyboard/keybase provide a sequential degree mapping."
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": [
                    "obj-12",
                    0
                  ],
                  "source": [
                    "obj-11",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-6",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-14",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-6",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-16",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-6",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-18",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-6",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-20",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-6",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-22",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-6",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-24",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-4",
                    0
                  ],
                  "source": [
                    "obj-3",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-5",
                    0
                  ],
                  "source": [
                    "obj-4",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-6",
                    0
                  ],
                  "source": [
                    "obj-5",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-11",
                    0
                  ],
                  "source": [
                    "obj-6",
                    3
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-7",
                    0
                  ],
                  "source": [
                    "obj-6",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-8",
                    0
                  ],
                  "source": [
                    "obj-6",
                    1
                  ]
                }
              }
            ]
          },
          "patching_rect": [
            1030,
            845,
            175,
            22
          ],
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
            "rect": [
              134,
              172,
              1120,
              800
            ],
            "boxes": [
              {
                "box": {
                  "fontface": 1,
                  "fontsize": 18,
                  "id": "obj-1",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    15,
                    1060,
                    27
                  ],
                  "text": "CNMAT PLUCKED-STRING CONNECTION"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 12,
                  "id": "obj-2",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    55,
                    1050,
                    20
                  ],
                  "text": "This adapter is included; the original CNMAT patches are unchanged. It emits tuning before the pluck and avoids the animated stopper's rounded coordinate output."
                }
              },
              {
                "box": {
                  "embedstate": [
                    [
                      "restore",
                      "{\"version\":1,\"state\":{\"base\":{\"name\":\"major\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,200,400,500,700,900,1100],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"mapping\":\"nearest\",\"reference\":440,\"registerMin\":0,\"registerMax\":0,\"strength\":1,\"stepbias\":0,\"repeats\":1,\"nodesmode\":\"off\",\"hysteresis\":0.05,\"keybase\":60,\"melodic\":1,\"stepchance\":0.9,\"recovery\":0.98,\"leapavoid\":0.97,\"maxrun\":3,\"turnbias\":0.9,\"recoverycents\":480,\"octaveshift\":0,\"octave\":\"tonic\"},\"configs\":{\"major_12tet\":{\"name\":\"major_12tet\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,200,400,500,700,900,1100],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"major_just\":{\"name\":\"major_just\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,203.91000173077487,386.3137138648348,498.04499913461245,701.9550008653874,884.3587129994474,1088.2687147302222],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"just_major_5limit\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"minor_12tet\":{\"name\":\"minor_12tet\",\"scale\":\"natural_minor\",\"nominal\":[0,200,300,500,700,800,1000],\"cents\":[0,200,300,500,700,800,1000],\"ids\":[\"pc0\",\"pc2\",\"pc3\",\"pc5\",\"pc7\",\"pc8\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_minor\",\"weights\":[6.33,3.52,5.38,3.53,4.75,3.98,3.34],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},\"pentatonic_12tet\":{\"name\":\"pentatonic_12tet\",\"scale\":\"major_pentatonic\",\"nominal\":[0,200,400,700,900],\"cents\":[0,200,400,700,900],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc7\",\"pc9\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1],\"profileSource\":\"uniform_model\"},\"dorian_12tet\":{\"name\":\"dorian_12tet\",\"scale\":\"dorian\",\"nominal\":[0,200,300,500,700,900,1000],\"cents\":[0,200,300,500,700,900,1000],\"ids\":[\"pc0\",\"pc2\",\"pc3\",\"pc5\",\"pc7\",\"pc9\",\"pc10\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"uniform\",\"weights\":[1,1,1,1,1,1,1],\"profileSource\":\"uniform_model\"}},\"assigned\":[{\"name\":\"major_12tet\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,200,400,500,700,900,1100],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"equal\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"},{\"name\":\"major_just\",\"scale\":\"major\",\"nominal\":[0,200,400,500,700,900,1100],\"cents\":[0,203.91000173077487,386.3137138648348,498.04499913461245,701.9550008653874,884.3587129994474,1088.2687147302222],\"ids\":[\"pc0\",\"pc2\",\"pc4\",\"pc5\",\"pc7\",\"pc9\",\"pc11\"],\"period\":1200,\"tonic\":6000,\"tuning\":\"just_major_5limit\",\"profile\":\"kk_major\",\"weights\":[6.35,3.48,4.38,4.09,5.19,3.66,2.88],\"profileSource\":\"Krumhansl_Kessler_1982_fit_ratings\"}],\"nodeweights\":[0.5,0.5]}"
                    ]
                  ],
                  "id": "obj-3",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 4,
                  "outlettype": [
                    "",
                    "",
                    "",
                    ""
                  ],
                  "patching_rect": [
                    25,
                    170,
                    235,
                    22
                  ],
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
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    25,
                    125,
                    65,
                    22
                  ],
                  "text": "bang"
                }
              },
              {
                "box": {
                  "id": "obj-5",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 4,
                  "outlettype": [
                    "",
                    "",
                    "",
                    ""
                  ],
                  "patching_rect": [
                    25,
                    270,
                    235,
                    22
                  ],
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
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    25,
                    355,
                    200,
                    22
                  ]
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 12,
                  "id": "obj-7",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    390,
                    251,
                    20
                  ],
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
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    295,
                    355,
                    200,
                    22
                  ]
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 12,
                  "id": "obj-9",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    295,
                    390,
                    254,
                    20
                  ],
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
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    565,
                    355,
                    200,
                    22
                  ]
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 12,
                  "id": "obj-11",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    565,
                    390,
                    245,
                    20
                  ],
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
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    835,
                    355,
                    200,
                    22
                  ]
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 12,
                  "id": "obj-13",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    835,
                    390,
                    259,
                    20
                  ],
                  "text": "Fractional MIDI -> reso-string~_ped tuning inlet"
                }
              },
              {
                "box": {
                  "id": "obj-14",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    610,
                    150,
                    180,
                    22
                  ],
                  "text": "rootHz 262."
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 12,
                  "id": "obj-15",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    805,
                    150,
                    280,
                    20
                  ],
                  "text": "DEFAULT matches one_string_ped internal root"
                }
              },
              {
                "box": {
                  "id": "obj-16",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    610,
                    210,
                    180,
                    22
                  ],
                  "text": "reference 440."
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 12,
                  "id": "obj-17",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    805,
                    210,
                    280,
                    20
                  ],
                  "text": "DEFAULT; keep equal to mapper reference"
                }
              },
              {
                "box": {
                  "id": "obj-18",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    610,
                    270,
                    180,
                    22
                  ],
                  "text": "amplitude 1."
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 12,
                  "id": "obj-19",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    805,
                    270,
                    280,
                    20
                  ],
                  "text": "DEFAULT pluck strength (0..1)"
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 12,
                  "id": "obj-20",
                  "linecount": 2,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    490,
                    1050,
                    33
                  ],
                  "text": "ONE_STRING_PED: set the target voice octave to 0 and use the same rootHz in voice and adapter. Route the two adapter outputs directly to its numeric inlets. Any tuner controlling that voice must agree on root/octave. Its graphical length outlet may update a display, but must not feed another rounded length back into the tuning inlet."
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 12,
                  "id": "obj-21",
                  "linecount": 2,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    590,
                    1050,
                    33
                  ],
                  "text": "DIRECT RESONATOR PATH: adapter outlet 4 (fractional MIDI) -> reso-string~_ped tuning inlet. Adapter outlet 1, multiplied by 127, -> excitation inlet. This path avoids a fixed number of strings and length-display range limits. Allocate voices outside this mapper."
                }
              },
              {
                "box": {
                  "fontface": 0,
                  "fontsize": 12,
                  "id": "obj-22",
                  "linecount": 2,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    690,
                    1050,
                    33
                  ],
                  "text": "The Playspace has eight fixed strings. Mapping arbitrary N-degree scales onto those strings still requires an explicit voice/degree assignment or retuning scheme. This release supplies a single-voice adapter and leaves the existing OSC namespaces untouched."
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": [
                    "obj-5",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-14",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-5",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-16",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-5",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-18",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-5",
                    0
                  ],
                  "source": [
                    "obj-3",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "obj-4",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-10",
                    0
                  ],
                  "source": [
                    "obj-5",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-12",
                    0
                  ],
                  "source": [
                    "obj-5",
                    3
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-6",
                    0
                  ],
                  "source": [
                    "obj-5",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-8",
                    0
                  ],
                  "source": [
                    "obj-5",
                    1
                  ]
                }
              }
            ]
          },
          "patching_rect": [
            660,
            880,
            175,
            22
          ],
          "text": "p CNMAT_integration"
        }
      },
      {
        "box": {
          "fontface": 0,
          "fontsize": 11,
          "id": "obj-66",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            25,
            970,
            1190,
            19
          ],
          "text": "No non-Western empirical profile vectors are invented. Other scales use uniform weights until you supply a documented profile. See SOURCES.txt."
        }
      },
      {
        "box": {
          "id": "all-scale-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            25,
            120,
            48,
            20
          ],
          "text": "Scale"
        }
      },
      {
        "box": {
          "annotation": "All 41 built-in scales. Choosing one returns to nodesmode off and its template tuning. Ionian = major; Aeolian = natural minor.",
          "id": "all-scale-menu",
          "items": [
            "phrygian",
            ",",
            "aeolian",
            ",",
            "dorian",
            ",",
            "ionian",
            ",",
            "mixolydian",
            ",",
            "lydian",
            ",",
            "locrian",
            ",",
            "harmonic_minor",
            ",",
            "melodic_minor_ascending",
            ",",
            "harmonic_major",
            ",",
            "major_pentatonic",
            ",",
            "minor_pentatonic",
            ",",
            "major_blues",
            ",",
            "minor_blues",
            ",",
            "whole_tone",
            ",",
            "octatonic_wh",
            ",",
            "octatonic_hw",
            ",",
            "augmented_hexatonic",
            ",",
            "chromatic",
            ",",
            "lydian_dominant",
            ",",
            "altered",
            ",",
            "phrygian_dominant",
            ",",
            "messiaen_1",
            ",",
            "messiaen_2",
            ",",
            "messiaen_3",
            ",",
            "messiaen_4",
            ",",
            "messiaen_5",
            ",",
            "messiaen_6",
            ",",
            "messiaen_7",
            ",",
            "gong_12tet",
            ",",
            "shang_12tet",
            ",",
            "jue_12tet",
            ",",
            "zhi_12tet",
            ",",
            "yu_12tet",
            ",",
            "rast_24edo_model",
            ",",
            "bayati_24edo_model",
            ",",
            "hijaz_12tet_model",
            ",",
            "hirajoshi_ellis_112",
            ",",
            "hirajoshi_ellis_111",
            ",",
            "pelog_ksatria",
            ",",
            "slendro_kanyut_mesem",
            ",",
            "custom / imported (use messages)"
          ],
          "maxclass": "umenu",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "int",
            "",
            ""
          ],
          "parameter_enable": 0,
          "patching_rect": [
            80,
            120,
            300,
            22
          ]
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "menu-select",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            80,
            146,
            230,
            22
          ],
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
          "outlettype": [
            "",
            "",
            ""
          ],
          "patching_rect": [
            400,
            146,
            180,
            22
          ],
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
          "outlettype": [
            ""
          ],
          "patching_rect": [
            80,
            242,
            100,
            22
          ],
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
          "outlettype": [
            ""
          ],
          "patching_rect": [
            80,
            268,
            200,
            22
          ],
          "text": "loadmess enableitem 41 0"
        }
      },
      {
        "box": {
          "id": "melodic-toggle",
          "maxclass": "toggle",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            420,
            120,
            22,
            22
          ]
        }
      },
      {
        "box": {
          "id": "melodic-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            452,
            120,
            210,
            20
          ],
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
          "outlettype": [
            ""
          ],
          "patching_rect": [
            420,
            242,
            140,
            22
          ],
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
          "outlettype": [
            ""
          ],
          "patching_rect": [
            420,
            268,
            100,
            22
          ],
          "text": "prepend set"
        }
      },
      {
        "box": {
          "id": "melodic-controls",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
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
            "rect": [
              160,
              160,
              950,
              810
            ],
            "boxes": [
              {
                "box": {
                  "comment": "",
                  "id": "status-in",
                  "index": 1,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    870,
                    20,
                    30,
                    30
                  ]
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
                  "patching_rect": [
                    870,
                    755,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "fontface": 1,
                  "fontsize": 20,
                  "id": "title",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    20,
                    750,
                    30
                  ],
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
                  "patching_rect": [
                    25,
                    60,
                    800,
                    45
                  ],
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
                  "outlettype": [
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    ""
                  ],
                  "patching_rect": [
                    25,
                    770,
                    890,
                    22
                  ],
                  "text": "route melodic stepchance recovery leapavoid maxrun turnbias recoverycents repeats octave octaveshift"
                }
              },
              {
                "box": {
                  "id": "label-melodic",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    130,
                    240,
                    22
                  ],
                  "text": "Enable melodic preferences"
                }
              },
              {
                "box": {
                  "id": "ui-melodic",
                  "maxclass": "toggle",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    280,
                    130,
                    25,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "note-melodic",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    380,
                    130,
                    530,
                    32
                  ],
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
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    280,
                    154,
                    120,
                    20
                  ],
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
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    150,
                    154,
                    110,
                    20
                  ],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "id": "label-stepchance",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    175,
                    240,
                    22
                  ],
                  "text": "Step preference"
                }
              },
              {
                "box": {
                  "format": 6,
                  "id": "ui-stepchance",
                  "maxclass": "flonum",
                  "maximum": 1,
                  "minimum": 0,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    280,
                    175,
                    80,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "note-stepchance",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    380,
                    175,
                    530,
                    32
                  ],
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
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    280,
                    199,
                    120,
                    20
                  ],
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
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    150,
                    199,
                    110,
                    20
                  ],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "id": "label-recovery",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    220,
                    240,
                    22
                  ],
                  "text": "Opposite-step recovery"
                }
              },
              {
                "box": {
                  "format": 6,
                  "id": "ui-recovery",
                  "maxclass": "flonum",
                  "maximum": 1,
                  "minimum": 0,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    280,
                    220,
                    80,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "note-recovery",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    380,
                    220,
                    530,
                    32
                  ],
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
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    280,
                    244,
                    120,
                    20
                  ],
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
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    150,
                    244,
                    110,
                    20
                  ],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "id": "label-leapavoid",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    265,
                    240,
                    22
                  ],
                  "text": "Avoid consecutive leaps"
                }
              },
              {
                "box": {
                  "format": 6,
                  "id": "ui-leapavoid",
                  "maxclass": "flonum",
                  "maximum": 1,
                  "minimum": 0,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    280,
                    265,
                    80,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "note-leapavoid",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    380,
                    265,
                    530,
                    32
                  ],
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
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    280,
                    289,
                    120,
                    20
                  ],
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
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    150,
                    289,
                    110,
                    20
                  ],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "id": "label-maxrun",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    310,
                    240,
                    22
                  ],
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
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    280,
                    310,
                    80,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "note-maxrun",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    380,
                    310,
                    530,
                    32
                  ],
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
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    280,
                    334,
                    120,
                    20
                  ],
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
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    150,
                    334,
                    110,
                    20
                  ],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "id": "label-turnbias",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    355,
                    240,
                    22
                  ],
                  "text": "Turning preference"
                }
              },
              {
                "box": {
                  "format": 6,
                  "id": "ui-turnbias",
                  "maxclass": "flonum",
                  "maximum": 1,
                  "minimum": 0,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    280,
                    355,
                    80,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "note-turnbias",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    380,
                    355,
                    530,
                    32
                  ],
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
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    280,
                    379,
                    120,
                    20
                  ],
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
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    150,
                    379,
                    110,
                    20
                  ],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "id": "label-recoverycents",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    400,
                    240,
                    22
                  ],
                  "text": "Large-leap threshold (cents)"
                }
              },
              {
                "box": {
                  "format": 6,
                  "id": "ui-recoverycents",
                  "maxclass": "flonum",
                  "maximum": 48000,
                  "minimum": 1,
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    280,
                    400,
                    80,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "note-recoverycents",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    380,
                    400,
                    530,
                    32
                  ],
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
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    280,
                    424,
                    120,
                    20
                  ],
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
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    150,
                    424,
                    110,
                    20
                  ],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "id": "label-repeats",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    445,
                    240,
                    22
                  ],
                  "text": "Allow repeated notes"
                }
              },
              {
                "box": {
                  "id": "ui-repeats",
                  "maxclass": "toggle",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "int"
                  ],
                  "parameter_enable": 0,
                  "patching_rect": [
                    280,
                    445,
                    25,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "note-repeats",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    380,
                    445,
                    530,
                    32
                  ],
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
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    280,
                    469,
                    120,
                    20
                  ],
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
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    150,
                    469,
                    110,
                    20
                  ],
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
                  "patching_rect": [
                    25,
                    610,
                    880,
                    43
                  ],
                  "text": "Step = an adjacent scale degree smaller than the large-leap threshold. Consecutive thirds\n(two degrees, below the threshold) may continue in the same direction. Repeats do not reset the direction run."
                }
              },
              {
                "box": {
                  "id": "generate",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    25,
                    675,
                    70,
                    22
                  ],
                  "text": "bang"
                }
              },
              {
                "box": {
                  "id": "reset-history",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    115,
                    675,
                    110,
                    22
                  ],
                  "text": "melodyreset"
                }
              },
              {
                "box": {
                  "id": "wide",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    245,
                    675,
                    135,
                    22
                  ],
                  "text": "register -1 1"
                }
              },
              {
                "box": {
                  "id": "one",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400,
                    675,
                    135,
                    22
                  ],
                  "text": "register 0 0"
                }
              },
              {
                "box": {
                  "id": "pure",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    555,
                    675,
                    125,
                    22
                  ],
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
                  "patching_rect": [
                    25,
                    720,
                    800,
                    43
                  ],
                  "text": "Choosing Primary octave restores register 0 0. The tonic pitch class is retained.\nOctave shifts are equally likely up/down and never accumulate. melodyreset clears the phrase."
                }
              },
              {
                "box": {
                  "id": "label-octave",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    500,
                    240,
                    22
                  ],
                  "text": "Primary octave (bang only)",
                  "fontsize": 12
                }
              },
              {
                "box": {
                  "id": "ui-octave",
                  "maxclass": "number",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "patching_rect": [
                    280,
                    500,
                    80,
                    22
                  ],
                  "minimum": -5,
                  "maximum": 9,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "parameter_enable": 0
                }
              },
              {
                "box": {
                  "id": "note-octave",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    380,
                    500,
                    530,
                    34
                  ],
                  "text": "4 = C4 / MIDI 60 / 6000 cents. 3 = C3; 5 = C5.",
                  "fontsize": 12
                }
              },
              {
                "box": {
                  "id": "pre-octave",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "patching_rect": [
                    280,
                    524,
                    150,
                    20
                  ],
                  "hidden": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "prepend octave"
                }
              },
              {
                "box": {
                  "id": "set-octave",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "patching_rect": [
                    150,
                    524,
                    110,
                    20
                  ],
                  "hidden": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "id": "label-octaveshift",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    25,
                    550,
                    240,
                    22
                  ],
                  "text": "Octave-shift weight",
                  "fontsize": 12
                }
              },
              {
                "box": {
                  "id": "ui-octaveshift",
                  "maxclass": "flonum",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "patching_rect": [
                    280,
                    550,
                    80,
                    22
                  ],
                  "minimum": 0,
                  "maximum": 1,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "parameter_enable": 0
                }
              },
              {
                "box": {
                  "id": "note-octaveshift",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    380,
                    550,
                    530,
                    34
                  ],
                  "text": "0 = stay; 1 = always +/-1 octave; 0.5 = shift on 50% of bangs.",
                  "fontsize": 12
                }
              },
              {
                "box": {
                  "id": "pre-octaveshift",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "patching_rect": [
                    280,
                    574,
                    150,
                    20
                  ],
                  "hidden": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "prepend octaveshift"
                }
              },
              {
                "box": {
                  "id": "set-octaveshift",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "patching_rect": [
                    150,
                    574,
                    110,
                    20
                  ],
                  "hidden": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "prepend set"
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": [
                    "command-out",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "generate",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "command-out",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "one",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "command-out",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "pre-leapavoid",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "command-out",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "pre-maxrun",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "command-out",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "pre-melodic",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "command-out",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "pre-recovery",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "command-out",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "pre-recoverycents",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "command-out",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "pre-repeats",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "command-out",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "pre-stepchance",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "command-out",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "pre-turnbias",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "command-out",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "pure",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "command-out",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "reset-history",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "ui-leapavoid",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "set-leapavoid",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "ui-maxrun",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "set-maxrun",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "ui-melodic",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "set-melodic",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "ui-recovery",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "set-recovery",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "ui-recoverycents",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "set-recoverycents",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "ui-repeats",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "set-repeats",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "ui-stepchance",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "set-stepchance",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "ui-turnbias",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "set-turnbias",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "set-leapavoid",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "settings-route",
                    3
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "set-maxrun",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "settings-route",
                    4
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "set-melodic",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "settings-route",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "set-recovery",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "settings-route",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "set-recoverycents",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "settings-route",
                    6
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "set-repeats",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "settings-route",
                    7
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "set-stepchance",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "settings-route",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "set-turnbias",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "settings-route",
                    5
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "settings-route",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "status-in",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "pre-leapavoid",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "ui-leapavoid",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "pre-maxrun",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "ui-maxrun",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "pre-melodic",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "ui-melodic",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "pre-recovery",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "ui-recovery",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "pre-recoverycents",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "ui-recoverycents",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "pre-repeats",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "ui-repeats",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "pre-stepchance",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "ui-stepchance",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "pre-turnbias",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "ui-turnbias",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "command-out",
                    0
                  ],
                  "hidden": 1,
                  "source": [
                    "wide",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ui-octave",
                    0
                  ],
                  "destination": [
                    "pre-octave",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "pre-octave",
                    0
                  ],
                  "destination": [
                    "command-out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "settings-route",
                    8
                  ],
                  "destination": [
                    "set-octave",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "set-octave",
                    0
                  ],
                  "destination": [
                    "ui-octave",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "ui-octaveshift",
                    0
                  ],
                  "destination": [
                    "pre-octaveshift",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "pre-octaveshift",
                    0
                  ],
                  "destination": [
                    "command-out",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "settings-route",
                    9
                  ],
                  "destination": [
                    "set-octaveshift",
                    0
                  ],
                  "hidden": 1
                }
              },
              {
                "patchline": {
                  "source": [
                    "set-octaveshift",
                    0
                  ],
                  "destination": [
                    "ui-octaveshift",
                    0
                  ],
                  "hidden": 1
                }
              }
            ]
          },
          "patching_rect": [
            700,
            120,
            190,
            22
          ],
          "text": "p melodic_preferences"
        }
      },
      {
        "box": {
          "id": "melodic-open",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            910,
            120,
            225,
            20
          ],
          "text": "Double-click for controls"
        }
      },
      {
        "box": {
          "id": "gen-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            25,
            160,
            110,
            22
          ],
          "text": "Primary octave",
          "fontsize": 12
        }
      },
      {
        "box": {
          "id": "gen-octave",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            137,
            160,
            55,
            22
          ],
          "minimum": -5,
          "maximum": 9,
          "outlettype": [
            "",
            ""
          ],
          "parameter_enable": 0
        }
      },
      {
        "box": {
          "id": "gen-shift-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            220,
            160,
            155,
            22
          ],
          "text": "Octave-shift weight",
          "fontsize": 12
        }
      },
      {
        "box": {
          "id": "gen-shift",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            378,
            160,
            70,
            22
          ],
          "minimum": 0,
          "maximum": 1,
          "format": 6,
          "outlettype": [
            "",
            ""
          ],
          "parameter_enable": 0
        }
      },
      {
        "box": {
          "id": "gen-pre-oct",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            25,
            185,
            120,
            22
          ],
          "hidden": 1,
          "outlettype": [
            ""
          ],
          "text": "prepend octave"
        }
      },
      {
        "box": {
          "id": "gen-pre-shift",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            155,
            185,
            150,
            22
          ],
          "hidden": 1,
          "outlettype": [
            ""
          ],
          "text": "prepend octaveshift"
        }
      },
      {
        "box": {
          "id": "gen-route",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 3,
          "patching_rect": [
            25,
            210,
            235,
            22
          ],
          "hidden": 1,
          "outlettype": [
            "",
            "",
            ""
          ],
          "text": "route octave octaveshift"
        }
      },
      {
        "box": {
          "id": "gen-set-oct",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            25,
            235,
            95,
            22
          ],
          "hidden": 1,
          "outlettype": [
            ""
          ],
          "text": "prepend set"
        }
      },
      {
        "box": {
          "id": "gen-set-shift",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            130,
            235,
            95,
            22
          ],
          "hidden": 1,
          "outlettype": [
            ""
          ],
          "text": "prepend set"
        }
      },
      {
        "box": {
          "id": "gen-explanation",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            470,
            157,
            740,
            43
          ],
          "text": "For bang: 3 = C3 (4800), 4 = C4 (6000), 5 = C5 (7200).\nShift 0 = stay; 1 = always one octave up/down. Default tonic is C; MIDI input keeps its played octave.",
          "fontsize": 12
        }
      },
      {
        "box": {
          "id": "midi-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            25,
            1010,
            620,
            22
          ],
          "fontface": 1,
          "text": "MIDI CONTROLLER / CLICKABLE KEYBOARD",
          "fontsize": 12
        }
      },
      {
        "box": {
          "id": "midi-in",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            25,
            1042,
            65,
            22
          ],
          "outlettype": [
            "",
            "",
            ""
          ],
          "text": "notein"
        }
      },
      {
        "box": {
          "id": "midi-note",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            110,
            1042,
            535,
            40
          ],
          "text": "Choose the controller by double-clicking notein. Play it, or click the keys.",
          "fontsize": 12
        }
      },
      {
        "box": {
          "id": "midi-keys",
          "maxclass": "kslider",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            25,
            1095,
            620,
            75
          ],
          "mode": 2,
          "inputmode": 1,
          "offset": 36,
          "range": 61,
          "outlettype": [
            "",
            ""
          ],
          "parameter_enable": 0
        }
      },
      {
        "box": {
          "id": "midi-strip",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            25,
            1192,
            75,
            22
          ],
          "outlettype": [
            "",
            ""
          ],
          "text": "stripnote"
        }
      },
      {
        "box": {
          "id": "midi-convert",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            25,
            1230,
            65,
            22
          ],
          "outlettype": [
            ""
          ],
          "text": "* 100"
        }
      },
      {
        "box": {
          "id": "midi-cents",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            120,
            1230,
            80,
            22
          ],
          "outlettype": [
            "",
            ""
          ],
          "parameter_enable": 0
        }
      },
      {
        "box": {
          "id": "midi-caption",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            220,
            1230,
            425,
            35
          ],
          "text": "MIDICENTS to JS: MIDI 60 = 6000. Note-offs are filtered.",
          "fontsize": 12
        }
      },
      {
        "box": {
          "id": "midi-generation-note",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            700,
            1042,
            500,
            105
          ],
          "text": "Keyboard input maps a played pitch into the current scale/morph.\nPrimary octave and octave-shift weight affect generated bangs only.\nFor full MIDI note-on/off pairing, open p MIDI_events.",
          "fontsize": 12
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "destination": [
            "menu-select",
            0
          ],
          "hidden": 1,
          "source": [
            "all-scale-menu",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-4",
            0
          ],
          "hidden": 1,
          "source": [
            "melodic-controls",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-4",
            0
          ],
          "hidden": 1,
          "source": [
            "melodic-prepend",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "melodic-toggle",
            0
          ],
          "hidden": 1,
          "source": [
            "melodic-set",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "melodic-prepend",
            0
          ],
          "hidden": 1,
          "source": [
            "melodic-toggle",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "all-scale-menu",
            0
          ],
          "hidden": 1,
          "source": [
            "menu-disable",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-4",
            0
          ],
          "hidden": 1,
          "source": [
            "menu-select",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "all-scale-menu",
            0
          ],
          "hidden": 1,
          "source": [
            "menu-set",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "melodic-set",
            0
          ],
          "hidden": 1,
          "source": [
            "menu-status",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "menu-set",
            0
          ],
          "hidden": 1,
          "source": [
            "menu-status",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-4",
            0
          ],
          "hidden": 1,
          "source": [
            "obj-10",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-4",
            0
          ],
          "hidden": 1,
          "source": [
            "obj-11",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-4",
            0
          ],
          "hidden": 1,
          "source": [
            "obj-12",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-4",
            0
          ],
          "hidden": 1,
          "source": [
            "obj-13",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-4",
            0
          ],
          "source": [
            "obj-15",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-4",
            0
          ],
          "hidden": 1,
          "source": [
            "obj-17",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-4",
            0
          ],
          "hidden": 1,
          "source": [
            "obj-18",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-4",
            0
          ],
          "hidden": 1,
          "source": [
            "obj-19",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-4",
            0
          ],
          "hidden": 1,
          "source": [
            "obj-20",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-4",
            0
          ],
          "hidden": 1,
          "source": [
            "obj-21",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-24",
            0
          ],
          "source": [
            "obj-23",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-4",
            1
          ],
          "source": [
            "obj-24",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-4",
            0
          ],
          "hidden": 1,
          "source": [
            "obj-25",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-4",
            0
          ],
          "hidden": 1,
          "source": [
            "obj-26",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-29",
            0
          ],
          "source": [
            "obj-28",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-30",
            0
          ],
          "source": [
            "obj-29",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-31",
            0
          ],
          "source": [
            "obj-29",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-4",
            0
          ],
          "hidden": 1,
          "source": [
            "obj-30",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-23",
            0
          ],
          "source": [
            "obj-31",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-37",
            0
          ],
          "source": [
            "obj-36",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "melodic-controls",
            0
          ],
          "hidden": 1,
          "order": 0,
          "source": [
            "obj-4",
            3
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "menu-status",
            0
          ],
          "hidden": 1,
          "order": 1,
          "source": [
            "obj-4",
            3
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-32",
            0
          ],
          "source": [
            "obj-4",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-33",
            0
          ],
          "order": 0,
          "source": [
            "obj-4",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-36",
            0
          ],
          "order": 2,
          "source": [
            "obj-4",
            3
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-38",
            0
          ],
          "source": [
            "obj-4",
            2
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-40",
            0
          ],
          "order": 3,
          "source": [
            "obj-4",
            3
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-52",
            0
          ],
          "order": 1,
          "source": [
            "obj-4",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-42",
            1
          ],
          "source": [
            "obj-40",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-44",
            1
          ],
          "source": [
            "obj-40",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-46",
            1
          ],
          "source": [
            "obj-40",
            2
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-48",
            1
          ],
          "source": [
            "obj-40",
            3
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-50",
            1
          ],
          "source": [
            "obj-40",
            4
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-53",
            0
          ],
          "source": [
            "obj-52",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-54",
            1
          ],
          "order": 0,
          "source": [
            "obj-53",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-54",
            0
          ],
          "order": 1,
          "source": [
            "obj-53",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-56",
            0
          ],
          "source": [
            "obj-55",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-53",
            1
          ],
          "source": [
            "obj-56",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-4",
            0
          ],
          "source": [
            "obj-6",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-52",
            0
          ],
          "source": [
            "obj-60",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-6",
            0
          ],
          "source": [
            "obj-7",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-4",
            0
          ],
          "hidden": 1,
          "source": [
            "obj-9",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gen-octave",
            0
          ],
          "destination": [
            "gen-pre-oct",
            0
          ],
          "hidden": 1
        }
      },
      {
        "patchline": {
          "source": [
            "gen-pre-oct",
            0
          ],
          "destination": [
            "obj-4",
            0
          ],
          "hidden": 1
        }
      },
      {
        "patchline": {
          "source": [
            "gen-route",
            0
          ],
          "destination": [
            "gen-set-oct",
            0
          ],
          "hidden": 1
        }
      },
      {
        "patchline": {
          "source": [
            "gen-set-oct",
            0
          ],
          "destination": [
            "gen-octave",
            0
          ],
          "hidden": 1
        }
      },
      {
        "patchline": {
          "source": [
            "gen-shift",
            0
          ],
          "destination": [
            "gen-pre-shift",
            0
          ],
          "hidden": 1
        }
      },
      {
        "patchline": {
          "source": [
            "gen-pre-shift",
            0
          ],
          "destination": [
            "obj-4",
            0
          ],
          "hidden": 1
        }
      },
      {
        "patchline": {
          "source": [
            "gen-route",
            1
          ],
          "destination": [
            "gen-set-shift",
            0
          ],
          "hidden": 1
        }
      },
      {
        "patchline": {
          "source": [
            "gen-set-shift",
            0
          ],
          "destination": [
            "gen-shift",
            0
          ],
          "hidden": 1
        }
      },
      {
        "patchline": {
          "source": [
            "obj-4",
            3
          ],
          "destination": [
            "gen-route",
            0
          ],
          "hidden": 1,
          "order": 4
        }
      },
      {
        "patchline": {
          "source": [
            "midi-in",
            0
          ],
          "destination": [
            "midi-keys",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "midi-in",
            1
          ],
          "destination": [
            "midi-keys",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "midi-keys",
            0
          ],
          "destination": [
            "midi-strip",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "midi-keys",
            1
          ],
          "destination": [
            "midi-strip",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "midi-strip",
            0
          ],
          "destination": [
            "midi-convert",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "midi-convert",
            0
          ],
          "destination": [
            "obj-4",
            0
          ],
          "order": 0
        }
      },
      {
        "patchline": {
          "source": [
            "midi-convert",
            0
          ],
          "destination": [
            "midi-cents",
            0
          ],
          "order": 1
        }
      },
      {
        "patchline": {
          "source": [
            "obj-62",
            0
          ],
          "destination": [
            "obj-52",
            0
          ]
        }
      }
    ],
    "autosave": 0
  }
}
