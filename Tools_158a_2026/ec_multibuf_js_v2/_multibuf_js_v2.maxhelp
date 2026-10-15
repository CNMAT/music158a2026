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
        "rect": [ 99.0, 137.0, 1070.0, 855.0 ],
        "default_fontsize": 13.0,
        "description": "Filename-named sample buffers: user-first message reference, separate developer messages and files.",
        "boxes": [
            {
                "box": {
                    "format": 6,
                    "id": "obj-3",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 631.0, 728.0, 50.0, 23.0 ]
                }
            },
            {
                "box": {
                    "channels": 1,
                    "id": "obj-1",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 567.0, 649.0, 83.0, 64.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -80 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.gain~",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.gain~",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 23.0,
                    "id": "heading",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 15.0, 489.0, 32.0 ],
                    "text": "MULTIBUF / filename-named sample buffers"
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
                    "patching_rect": [ 24.0, 57.0, 837.0, 21.0 ],
                    "text": "Create [multibuf_js_v2] with no arguments. Keep the .maxpat and .js together. Start with the included folder, then select a sample and preview it."
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 15.0,
                    "id": "loadhead",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 116.0, 225.0, 23.0 ],
                    "text": "1  LOAD A FOLDER OR A FILE"
                }
            },
            {
                "box": {
                    "id": "testfolder",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 24.0, 156.0, 132.0, 23.0 ],
                    "text": "/folder ./test_samples"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.063, 0.012, 0.871, 1.0 ],
                    "id": "testsend",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 194.0, 117.0, 23.0 ],
                    "text": "s #0-mb-command",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "testnote",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 286.0, 154.0, 225.0, 20.0 ],
                    "text": "Start here: four small included WAV files."
                }
            },
            {
                "box": {
                    "id": "choose-folder",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 24.0, 235.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 13.0,
                    "id": "folderlabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 50.0, 236.5, 100.0, 21.0 ],
                    "text": "Choose a folder"
                }
            },
            {
                "box": {
                    "id": "dialog-folder",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 24.0, 279.0, 97.0, 23.0 ],
                    "text": "opendialog fold"
                }
            },
            {
                "box": {
                    "id": "prepend-folder",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 24.0, 321.0, 96.0, 23.0 ],
                    "text": "prepend /folder"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.063, 0.012, 0.871, 1.0 ],
                    "id": "send-folder",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 360.0, 117.0, 23.0 ],
                    "text": "s #0-mb-command",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "choose-file",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 173.0, 235.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 13.0,
                    "id": "filelabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 200.0, 237.0, 124.0, 21.0 ],
                    "text": "Choose one sample"
                }
            },
            {
                "box": {
                    "id": "dialog-file",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 173.0, 279.0, 72.0, 23.0 ],
                    "text": "opendialog"
                }
            },
            {
                "box": {
                    "id": "prepend-file",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 173.0, 321.0, 80.0, 23.0 ],
                    "text": "prepend /file"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.063, 0.012, 0.871, 1.0 ],
                    "id": "send-file",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 173.0, 360.0, 117.0, 23.0 ],
                    "text": "s #0-mb-command",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 13.0,
                    "id": "drop-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 376.0, 250.0, 133.0, 21.0 ],
                    "text": "Or drop a folder here:"
                }
            },
            {
                "box": {
                    "annotation": "Drop a folder to append its audio files.",
                    "id": "drop-folder",
                    "maxclass": "dropfile",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 345.0, 234.0, 195.0, 54.0 ]
                }
            },
            {
                "box": {
                    "id": "drop-prepend",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 345.0, 299.0, 96.0, 23.0 ],
                    "text": "prepend /folder"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.063, 0.012, 0.871, 1.0 ],
                    "id": "drop-send",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 345.0, 329.0, 117.0, 23.0 ],
                    "text": "s #0-mb-command",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 15.0,
                    "id": "default-head",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 573.0, 104.0, 232.0, 23.0 ],
                    "text": "DEFAULT LOADING BEHAVIOR"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 13.0,
                    "id": "defaults",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 573.0, 140.0, 333.0, 65.0 ],
                    "text": "Buffer names match filenames, including extensions.\nAll channels are retained; subfolders are not scanned.\nLoading adds samples; already-loaded files are skipped.\nA same-named file from another path is rejected."
                }
            },
            {
                "box": {
                    "annotation": "Primary messages, in everyday workflow order: load, inspect, refresh, stop, clear.",
                    "hint": "Double-click for the seven primary messages.",
                    "id": "msg-ref",
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
                        "rect": [ 100.0, 100.0, 872.0, 854.0 ],
                        "default_fontsize": 13.0,
                        "description": "Primary messages: load, inspect, refresh, stop and clear samples.",
                        "boxes": [
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 24.0,
                                    "id": "heading",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 16.0, 455.0, 33.0 ],
                                    "text": "MESSAGE REFERENCE / everyday use"
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
                                    "patching_rect": [ 24.0, 60.0, 514.0, 21.0 ],
                                    "text": "Click an example to control the loader in the main help patch. Load a folder or a file first."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 13.0,
                                    "id": "path-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 88.0, 629.0, 21.0 ],
                                    "text": "The examples use the included samples. Replace their paths with your own; quote paths containing spaces."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 15.0,
                                    "id": "load-heading",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 139.0, 144.0, 23.0 ],
                                    "text": "1  LOAD SAMPLES"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "load-folder",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 177.0, 132.0, 23.0 ],
                                    "text": "/folder ./test_samples"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 13.0,
                                    "id": "load-folder-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 173.0, 178.0, 480.0, 21.0 ],
                                    "text": "Load all matching samples in a folder. Adds to the current library; does not clear it."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "load-file",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 226.0, 260.0, 23.0 ],
                                    "text": "/file \"./test_samples/name with spaces.wav\""
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 13.0,
                                    "id": "load-file-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 302.0, 227.0, 534.0, 21.0 ],
                                    "text": "Load one sample. Its filename becomes the buffer name; its full path is retained for loading."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 15.0,
                                    "id": "inspect-heading",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 295.0, 189.0, 23.0 ],
                                    "text": "2  SEE WHAT IS LOADED"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "dump",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 333.0, 45.0, 23.0 ],
                                    "text": "/dump"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 13.0,
                                    "id": "dump-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 79.0, 334.0, 589.0, 21.0 ],
                                    "text": "Output every loaded name from the left outlet. This help patch also prints names in the Max Console."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "length",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 382.0, 48.0, 23.0 ],
                                    "text": "/length"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 13.0,
                                    "id": "length-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 89.0, 383.0, 488.0, 21.0 ],
                                    "text": "Report the number of loaded buffers. The status outlet also sends count <number>."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 15.0,
                                    "id": "manage-heading",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 451.0, 305.0, 23.0 ],
                                    "text": "3  REFRESH, STOP LOADING, OR CLEAR"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "refresh",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 489.0, 53.0, 23.0 ],
                                    "text": "/refresh"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 13.0,
                                    "id": "refresh-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 89.0, 490.0, 530.0, 21.0 ],
                                    "text": "Reload this instance's samples, keeping their names. A failed reload keeps the old sample."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "stop",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 538.0, 37.0, 23.0 ],
                                    "text": "/stop"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 13.0,
                                    "id": "stop-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 73.0, 539.0, 609.0, 21.0 ],
                                    "text": "Cancel queued loading work. A native read already started is allowed to finish. Does NOT stop playback."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "clear",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 587.0, 40.0, 23.0 ],
                                    "text": "/clear"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 13.0,
                                    "id": "clear-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 94.0, 588.0, 582.0, 21.0 ],
                                    "text": "Remove every buffer owned by this loader. Wait for cleared 0 before loading again. Settings remain."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 13.0,
                                    "id": "safety",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 655.0, 600.0, 21.0 ],
                                    "text": "Stop playback before /refresh or /clear. Use the preview's stop message to stop audio playback."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.063, 0.012, 0.871, 1.0 ],
                                    "id": "commands",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 725.0, 117.0, 23.0 ],
                                    "text": "s #0-mb-command",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 13.0,
                                    "id": "dispatch-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 236.0, 721.0, 514.0, 21.0 ],
                                    "text": "All examples send to the same loader. Patch cords are hidden while the patch is locked."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 13.0,
                                    "id": "next",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 784.0, 644.0, 21.0 ],
                                    "text": "More options: open p Developer Messages in the main help patch. Tests and coll examples: p Developer Files."
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "commands", 0 ],
                                    "hidden": 1,
                                    "source": [ "clear", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "commands", 0 ],
                                    "hidden": 1,
                                    "source": [ "dump", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "commands", 0 ],
                                    "hidden": 1,
                                    "source": [ "length", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "commands", 0 ],
                                    "hidden": 1,
                                    "source": [ "load-file", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "commands", 0 ],
                                    "hidden": 1,
                                    "source": [ "load-folder", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "commands", 0 ],
                                    "hidden": 1,
                                    "source": [ "refresh", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "commands", 0 ],
                                    "hidden": 1,
                                    "source": [ "stop", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 26.5, 440.0, 171.0, 23.0 ],
                    "saved_object_attributes": {
                        "description": "Primary messages: load, inspect, refresh, stop and clear samples.",
                        "fontsize": 13.0
                    },
                    "text": "p MESSAGE_REFERENCE"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 15.0,
                    "id": "loaderhead",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 567.0, 215.0, 218.0, 23.0 ],
                    "text": "2  LOADER AND REPORTING"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.063, 0.012, 0.871, 1.0 ],
                    "id": "recv",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 567.0, 255.0, 115.0, 23.0 ],
                    "text": "r #0-mb-command",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.06274509803921569, 0.5215686274509804, 0.5725490196078431, 1.0 ],
                    "id": "loader",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 567.0, 299.0, 234.0, 23.0 ],
                    "text": "multibuf_js_v2"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "out-labels",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 560.0, 330.0, 198.0, 20.0 ],
                    "text": "Names                         Per-file bang"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.06274509803921569, 0.5215686274509804, 0.5725490196078431, 1.0 ],
                    "id": "name-route",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 567.0, 359.0, 83.0, 23.0 ],
                    "text": "route symbol"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.06274509803921569, 0.5215686274509804, 0.5725490196078431, 1.0 ],
                    "id": "name-set",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 567.0, 424.0, 77.0, 23.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.5176470588235295, 0.34901960784313724, 0.34901960784313724, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.5176470588235295, 0.34901960784313724, 0.34901960784313724, 1.0 ],
                    "bgfillcolor_color1": [ 0.5176470588235295, 0.34901960784313724, 0.34901960784313724, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "name-display",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 567.0, 449.0, 152.0, 23.0 ],
                    "text": "pitch21-D-mid-wood.wav"
                }
            },
            {
                "box": {
                    "id": "success",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 674.5, 351.5, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.06274509803921569, 0.5215686274509804, 0.5725490196078431, 1.0 ],
                    "id": "status-route",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 782.0, 328.5, 74.0, 23.0 ],
                    "text": "route menu"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.06274509803921569, 0.5215686274509804, 0.5725490196078431, 1.0 ],
                    "id": "status-print",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 782.0, 354.5, 125.0, 23.0 ],
                    "text": "print multibuf_status"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.063, 0.522, 0.573, 1.0 ],
                    "hidden": 1,
                    "id": "auto-menu-route",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 775.0, 409.0, 171.0, 23.0 ],
                    "text": "route done cleared removed"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.063, 0.522, 0.573, 1.0 ],
                    "hidden": 1,
                    "id": "auto-menu-bang",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 775.0, 438.0, 23.0, 23.0 ],
                    "text": "t b"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.063, 0.522, 0.573, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.063, 0.522, 0.573, 1.0 ],
                    "bgfillcolor_color1": [ 0.063, 0.522, 0.573, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "hidden": 1,
                    "id": "auto-menu-message",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 775.0, 468.0, 45.0, 23.0 ],
                    "text": "/menu"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.063, 0.012, 0.871, 1.0 ],
                    "hidden": 1,
                    "id": "auto-menu-send",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 775.0, 499.0, 117.0, 23.0 ],
                    "text": "s #0-mb-command",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.106, 0.761, 0.114, 1.0 ],
                    "fontface": 1,
                    "fontsize": 15.0,
                    "id": "play-head",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 567.0, 499.0, 194.0, 23.0 ],
                    "text": "3  SELECT AND PREVIEW"
                }
            },
            {
                "box": {
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.10588235294117647, 0.7607843137254902, 0.11372549019607843, 1.0 ],
                    "bgfillcolor_color1": [ 0.10588235294117647, 0.7607843137254902, 0.11372549019607843, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "id": "menu",
                    "items": [ "anacru01-human-strong.wav", ",", "anacru02-pitch-high-swell.wav", ",", "anacru03-pitch-high-swell2.wav", ",", "anacru04-zipper1.wav", ",", "atkdcy01-noise-waterdrop-delicate.wav", ",", "atkdcy02-wood-block-bright.wav", ",", "atkdcy03-wood-note-high-D.wav", ",", "atkdcy04-wood-note-mid-D.wav", ",", "continuant01-coinspin.wav", ",", "continuant02_inharm-thick.aif", ",", "elec01-atkdcy-.wav", ",", "elec02-atkdcy-falling-long.wav", ",", "elec03-atkdcy-muscular.wav", ",", "elec04-atkdcy-tone-thick.wav", ",", "elec05-conintuant-dcy-tone-thick.wav", ",", "elec06-contuant-dcy-tone-inharm-thick.wav", ",", "elec07-event-thick.wav", ",", "elec08-noise-muscular.wav", ",", "event01-bell-pitch-atkdcy-reverse.wav", ",", "event02-bell-pitch-atkdcy.wav", ",", "event03-bubbles-impls.wav", ",", "event04-carcrash-phrase-muscular.wav", ",", "event05-cicadas-fading.wav", ",", "event06-icecubes-noise.wav", ",", "event07-potterycrash-atkdcy.wav", ",", "event08-whip-swish2.wav.wav", ",", "event09-whip-swish3.wav", ",", "human-hiss-fade.wav", ",", "human-scream-male.aif", ",", "impls01-event-knock-mid.wav", ",", "impls02-wood-smash.wav", ",", "impls03-wood-dull.wav", ",", "impls04-wood-complex-breaking.wav", ",", "impls05-skin-low-muscular.wav", ",", "impls06-bounce-wood.wav", ",", "impls07-metal-muscular.wav", ",", "impls08-inharm-garbagecan-wirebrush.wav", ",", "impls09-inharm-garbagecan-strike-brigh.wav", ",", "impls10-gun-muscular.wav", ",", "impls11-gun-muscular-bright.wav", ",", "impls12-flashbulb-low-strong.wav", ",", "impls13-flashbulb-complex.wav", ",", "impls14-explosion-low-muscular.wav", ",", "impls15-event-crashingglass.wav", ",", "impls16-event-camerashutter3.wav", ",", "impls17-event-camerashutter2.wav", ",", "impls18-event-camerashutter.wav", ",", "impls19-doorclose-powerful.wav", ",", "impls20-crashing-low.wav", ",", "impls21-crashing-bright.wav", ",", "impls22-event-thump-low.wav", ",", "inharm01-metal-bright-low.wav", ",", "inharm02-Clock-complex.aif", ",", "inharm03-metal-bright.wav", ",", "inharm04-metal-gong.aif", ",", "inharm05-cymbal-dense.aif", ",", "noise01-dcy-event-ocean-brown.wav", ",", "noise02-dcy-event-ocean-brown2.wav", ",", "noise03-downward-elecfanslowing.wav", ",", "noise04-fillingbottle-decay.wav", ",", "noise05-splashing-complex.wav", ",", "noise06-white-fade-elec.wav", ",", "noise07-white-water-fade.wav", ",", "phrase01-saxes-dcy.wav", ",", "phrase02-orchestral-comples.aif", ",", "pitch01-A-Low-clarinet.wav", ",", "pitch02-gliss-delicate-atkdcy2.wav", ",", "pitch03-gliss-delicate-atkdcy.wav", ",", "pitch04-Bb-mid-atkdcy-.wav", ",", "pitch05-Bb-mid-atkdcy-clear.wav", ",", "pitch06-Bb-mid-bowedstrng-swell.wav", ",", "pitch07-Bb-mid-bowedstrng1-swell.wav", ",", "pitch08-C-atkdcy-harpsichord-mid.wav", ",", "pitch09-D-low-piano.wav", ",", "pitch10-D-piano-mid.wav", ",", "pitch11-F-mid-bowedstrng-atckdcy.wav", ",", "pitch12-G-low-bowedstrng-swell.wav", ",", "pitch13-human-glissando.wav", ",", "pitch14-human-phrase-gliss.wav", ",", "pitch15-low-thick-swell.wav", ",", "pitch16-metal-high-atkdcy.wav", ",", "pitch17-noise-Harp-low-dull.wav", ",", "pitch18-noise-Harp-low-dull2.wav", ",", "pitch19-noise-Harp-mid-dull.wav", ",", "pitch20-piano-high-atkdcy.wav", ",", "pitch21-D-mid-wood.wav" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 567.0, 538.0, 461.0, 23.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.06666666666666667, 0.4627450980392157, 0.07450980392156863, 1.0 ],
                    "id": "play-set",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 567.0, 583.0, 77.0, 23.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.106, 0.761, 0.114, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.106, 0.761, 0.114, 1.0 ],
                    "bgfillcolor_color1": [ 0.106, 0.761, 0.114, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "start",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 742.0, 583.0, 34.0, 23.0 ],
                    "text": "start"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.106, 0.761, 0.114, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.106, 0.761, 0.114, 1.0 ],
                    "bgfillcolor_color1": [ 0.106, 0.761, 0.114, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "stop",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 828.0, 583.0, 33.0, 23.0 ],
                    "text": "stop"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.08235294117647059, 0.592156862745098, 0.08627450980392157, 1.0 ],
                    "id": "play",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "signal", "signal", "bang" ],
                    "patching_rect": [ 567.0, 616.0, 126.0, 23.0 ],
                    "text": "play~ #0-mb-silent 2"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "stub",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "bang" ],
                    "patching_rect": [ 816.0, 438.0, 124.0, 23.0 ],
                    "text": "buffer~ #0-mb-silent"
                }
            },
            {
                "box": {
                    "id": "dac",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 567.0, 738.0, 44.0, 44.0 ]
                }
            },
            {
                "box": {
                    "annotation": "Secondary settings on the left; tertiary diagnostics and integration on the right.",
                    "hint": "Double-click for optional settings, diagnostics, and collection-loading commands.",
                    "id": "developer-messages",
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
                        "rect": [ 100.0, 100.0, 1170.0, 1145.0 ],
                        "default_fontsize": 13.0,
                        "description": "Secondary options and tertiary diagnostic/integration messages.",
                        "boxes": [
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 24.0,
                                    "id": "heading",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 16.0, 1120.0, 34.0 ],
                                    "text": "DEVELOPER MESSAGES / optional controls"
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
                                    "patching_rect": [ 24.0, 60.0, 1120.0, 30.0 ],
                                    "text": "These examples control the main help-patch loader. Everyday loading commands remain in MESSAGE_REFERENCE."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 13.0,
                                    "id": "setting-scope",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 92.0, 1120.0, 42.0 ],
                                    "text": "Settings affect subsequent requests; they do not rename or alter already-loaded buffers. Defaults are shown with each option."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 15.0,
                                    "id": "secondary",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 149.0, 542.0, 25.0 ],
                                    "text": "SECONDARY / customize your sample library"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 15.0,
                                    "id": "tertiary",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 612.0, 149.0, 530.0, 25.0 ],
                                    "text": "TERTIARY / diagnostics and integration"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 13.0,
                                    "id": "secondary-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 179.0, 532.0, 37.0 ],
                                    "text": "Use these only when the default loading behavior needs to change."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 13.0,
                                    "id": "tertiary-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 612.0, 179.0, 530.0, 37.0 ],
                                    "text": "Reporting, decoder controls, and collection-based workflows."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "refresh-folder",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 228.0, 530.0, 25.0 ],
                                    "text": "/refresh ./test_samples"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.5,
                                    "id": "refresh-folder-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 258.0, 530.0, 39.0 ],
                                    "text": "Reload existing files and add new files from this folder. Missing files are not removed."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "mono",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 298.0, 214.0, 25.0 ],
                                    "text": "/mono 0"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "mono-alternate",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 250.0, 298.0, 214.0, 25.0 ],
                                    "text": "/mono 1"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.5,
                                    "id": "mono-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 328.0, 530.0, 39.0 ],
                                    "text": "Default 0: retain all channels. 1: load channel 1 only, not a stereo mixdown."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "extension",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 368.0, 214.0, 25.0 ],
                                    "text": "/extension 1"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "extension-alternate",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 250.0, 368.0, 214.0, 25.0 ],
                                    "text": "/extension 0"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.5,
                                    "id": "extension-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 398.0, 530.0, 39.0 ],
                                    "text": "Default 1: names include the extension (bell.wav). 0: use the filename stem (bell)."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "prefix",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 438.0, 214.0, 25.0 ],
                                    "text": "/prefix"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "prefix-alternate",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 250.0, 438.0, 214.0, 25.0 ],
                                    "text": "/prefix A_"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.5,
                                    "id": "prefix-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 468.0, 530.0, 39.0 ],
                                    "text": "Default: no prefix. A_ produces names such as A_bell.wav for future loads."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "recursive",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 508.0, 214.0, 25.0 ],
                                    "text": "/recursive 0"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "recursive-alternate",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 250.0, 508.0, 214.0, 25.0 ],
                                    "text": "/recursive 1"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.5,
                                    "id": "recursive-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 538.0, 530.0, 39.0 ],
                                    "text": "Default 0: scan one folder. 1: also scan subfolders; maximum depth is 32."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "folder-filter",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 578.0, 530.0, 25.0 ],
                                    "text": "/folder ./test_samples WAVE"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.5,
                                    "id": "folder-filter-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 608.0, 530.0, 39.0 ],
                                    "text": "Filter this request only. WAVE = wav; AIFF = aif/aiff/aifc; MPG3 = mp3."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.5,
                                    "id": "types",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 648.0, 530.0, 25.0 ],
                                    "text": "/types wav aif aiff aifc flac mp3 ogg m4a caf au snd"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.5,
                                    "id": "types-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 678.0, 530.0, 39.0 ],
                                    "text": "Default folder extensions. Decoding support depends on Max and the operating system."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "menu",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 718.0, 530.0, 25.0 ],
                                    "text": "/menu"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.5,
                                    "id": "menu-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 748.0, 530.0, 39.0 ],
                                    "text": "Rebuild the sample menu: route menu from the status outlet into umenu."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "get",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 788.0, 214.0, 25.0 ],
                                    "text": "/get 1"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "get-alternate",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 250.0, 788.0, 214.0, 25.0 ],
                                    "text": "/get mono_test.wav"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.5,
                                    "id": "get-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 818.0, 530.0, 39.0 ],
                                    "text": "Select a name by current 1-based index or exact name; outputs from the left outlet."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "remove",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 858.0, 530.0, 25.0 ],
                                    "text": "/remove mono_test.wav"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.5,
                                    "id": "remove-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 888.0, 530.0, 39.0 ],
                                    "text": "Remove one owned buffer by name. Stop playback first; loader must be idle."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "settings",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 928.0, 530.0, 25.0 ],
                                    "text": "/settings"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.5,
                                    "id": "settings-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 958.0, 530.0, 39.0 ],
                                    "text": "Report current settings at the status outlet. Settings are not saved automatically."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "dumpinfo",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 612.0, 228.0, 530.0, 25.0 ],
                                    "text": "/dumpinfo"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.5,
                                    "id": "dumpinfo-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 612.0, 258.0, 530.0, 39.0 ],
                                    "text": "Report names, full paths, channels, frames, duration, and sample rate."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "status",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 612.0, 298.0, 530.0, 25.0 ],
                                    "text": "/status"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.5,
                                    "id": "status-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 612.0, 328.0, 530.0, 39.0 ],
                                    "text": "Report loaded count, active batch, queued requests, read-in-progress, and clear-pending."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "verbose",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 612.0, 368.0, 214.0, 25.0 ],
                                    "text": "/verbose 0"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "verbose-alternate",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 838.0, 368.0, 214.0, 25.0 ],
                                    "text": "/verbose 1"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.5,
                                    "id": "verbose-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 612.0, 398.0, 530.0, 39.0 ],
                                    "text": "Default 0: no extra Console progress. 1: print progress. Status output stays active."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "method",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 612.0, 438.0, 530.0, 25.0 ],
                                    "text": "/method auto"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.5,
                                    "id": "method-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 612.0, 468.0, 530.0, 39.0 ],
                                    "text": "Default auto: read for WAV/AIFF/AU/SND; import for other types. Also accepts read or import."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "timeout",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 612.0, 508.0, 530.0, 25.0 ],
                                    "text": "/timeout 30000"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.5,
                                    "id": "timeout-note",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 612.0, 538.0, 530.0, 39.0 ],
                                    "text": "Default 30000 ms; 0 disables. A read timeout pauses loading; no buffer is deleted until native completion."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "maxbuffers",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 612.0, 578.0, 530.0, 25.0 ],
                                    "text": "/maxbuffers 10000"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.5,
                                    "id": "maxbuffers-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 612.0, 608.0, 530.0, 39.0 ],
                                    "text": "Default 10000. Count guard, not a RAM budget. Range: 1–100000."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "coll",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 612.0, 648.0, 530.0, 25.0 ],
                                    "text": "/coll #0-mb-example-files"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.5,
                                    "id": "coll-note",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 612.0, 678.0, 530.0, 39.0 ],
                                    "text": "Load the first symbol on each row as a sample path. See Developer Files > COLLECTION_EXAMPLES."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "multicoll",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 612.0, 718.0, 530.0, 25.0 ],
                                    "text": "/multicoll #0-mb-example-sets"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.5,
                                    "id": "multicoll-note",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 612.0, 748.0, 530.0, 39.0 ],
                                    "text": "Initializes the example set on click, then loads its child coll. No initialization runs when this help opens."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 15.0,
                                    "id": "done-label",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 612.0, 817.0, 530.0, 25.0 ],
                                    "text": "Reading batch completion"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.5,
                                    "id": "done-format",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 612.0, 851.0, 530.0, 40.0 ],
                                    "text": "done <batch-id> <loaded> <errors> <skipped> <cancelled>"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.5,
                                    "id": "done-note",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 612.0, 897.0, 530.0, 57.0 ],
                                    "text": "done means the batch ended, not necessarily that every file loaded. Check errors and cancelled. The middle outlet bangs only for successful files."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.063, 0.012, 0.871, 1.0 ],
                                    "id": "secondary-send",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 1025.0, 190.0, 25.0 ],
                                    "text": "s #0-mb-command",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.063, 0.012, 0.871, 1.0 ],
                                    "id": "tertiary-send",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 612.0, 1025.0, 190.0, 25.0 ],
                                    "text": "s #0-mb-command",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "secondary-routing",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 233.0, 1026.0, 335.0, 25.0 ],
                                    "text": "All left-column examples use this send."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.0,
                                    "id": "tertiary-routing",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 821.0, 1026.0, 320.0, 25.0 ],
                                    "text": "All right-column examples use this send."
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "prepare-multicoll",
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
                                        "rect": [ 70.0, 90.0, 490.0, 260.0 ],
                                        "default_fontsize": 13.0,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "in",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 25.0, 20.0, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 13.0,
                                                    "id": "order",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "patching_rect": [ 25.0, 70.0, 50.0, 23.0 ],
                                                    "text": "t l b"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 13.0,
                                                    "id": "setup",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 120.0, 105.0, 320.0, 23.0 ],
                                                    "text": "store 1 #0-mb-example-files"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 13.0,
                                                    "id": "sets",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 4,
                                                    "outlettype": [ "", "", "", "" ],
                                                    "patching_rect": [ 120.0, 145.0, 340.0, 23.0 ],
                                                    "saved_object_attributes": {
                                                        "embed": 0,
                                                        "precision": 6
                                                    },
                                                    "text": "coll #0-mb-example-sets 1 @embed 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "out",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 25.0, 210.0, 25.0, 25.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "order", 0 ],
                                                    "source": [ "in", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "out", 0 ],
                                                    "source": [ "order", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "setup", 0 ],
                                                    "source": [ "order", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "sets", 0 ],
                                                    "source": [ "setup", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 612.0, 1093.0, 233.0, 23.0 ],
                                    "saved_object_attributes": {
                                        "fontsize": 13.0
                                    },
                                    "text": "p prepare_multicoll_example"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "tertiary-send", 0 ],
                                    "hidden": 1,
                                    "source": [ "coll", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "tertiary-send", 0 ],
                                    "hidden": 1,
                                    "source": [ "dumpinfo", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "secondary-send", 0 ],
                                    "hidden": 1,
                                    "source": [ "extension", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "secondary-send", 0 ],
                                    "hidden": 1,
                                    "source": [ "extension-alternate", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "secondary-send", 0 ],
                                    "hidden": 1,
                                    "source": [ "folder-filter", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "secondary-send", 0 ],
                                    "hidden": 1,
                                    "source": [ "get", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "secondary-send", 0 ],
                                    "hidden": 1,
                                    "source": [ "get-alternate", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "tertiary-send", 0 ],
                                    "hidden": 1,
                                    "source": [ "maxbuffers", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "secondary-send", 0 ],
                                    "hidden": 1,
                                    "source": [ "menu", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "tertiary-send", 0 ],
                                    "hidden": 1,
                                    "source": [ "method", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "secondary-send", 0 ],
                                    "hidden": 1,
                                    "source": [ "mono", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "secondary-send", 0 ],
                                    "hidden": 1,
                                    "source": [ "mono-alternate", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "prepare-multicoll", 0 ],
                                    "hidden": 1,
                                    "source": [ "multicoll", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "secondary-send", 0 ],
                                    "hidden": 1,
                                    "source": [ "prefix", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "secondary-send", 0 ],
                                    "hidden": 1,
                                    "source": [ "prefix-alternate", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "tertiary-send", 0 ],
                                    "hidden": 1,
                                    "source": [ "prepare-multicoll", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "secondary-send", 0 ],
                                    "hidden": 1,
                                    "source": [ "recursive", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "secondary-send", 0 ],
                                    "hidden": 1,
                                    "source": [ "recursive-alternate", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "secondary-send", 0 ],
                                    "hidden": 1,
                                    "source": [ "refresh-folder", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "secondary-send", 0 ],
                                    "hidden": 1,
                                    "source": [ "remove", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "secondary-send", 0 ],
                                    "hidden": 1,
                                    "source": [ "settings", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "tertiary-send", 0 ],
                                    "hidden": 1,
                                    "source": [ "status", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "tertiary-send", 0 ],
                                    "hidden": 1,
                                    "source": [ "timeout", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "secondary-send", 0 ],
                                    "hidden": 1,
                                    "source": [ "types", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "tertiary-send", 0 ],
                                    "hidden": 1,
                                    "source": [ "verbose", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "tertiary-send", 0 ],
                                    "hidden": 1,
                                    "source": [ "verbose-alternate", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 23.5, 629.0, 141.0, 23.0 ],
                    "saved_object_attributes": {
                        "description": "Secondary options and tertiary diagnostic/integration messages.",
                        "fontsize": 13.0
                    },
                    "text": "p Developer Messages"
                }
            },
            {
                "box": {
                    "annotation": "Contains the original COLLECTION_EXAMPLES and IN_MAX_SMOKE_TESTS subpatchers.",
                    "hint": "Double-click to open the test and collection examples.",
                    "id": "developer-files",
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
                        "rect": [ 100.0, 100.0, 980.0, 740.0 ],
                        "default_fontsize": 13.0,
                        "description": "Developer examples and verification patchers.",
                        "boxes": [
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 24.0,
                                    "id": "heading",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 16.0, 910.0, 33.0 ],
                                    "text": "DEVELOPER FILES / tests and examples"
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
                                    "patching_rect": [ 24.0, 60.0, 910.0, 21.0 ],
                                    "text": "Optional examples and checks. These subpatchers operate on the same loader as the main help patch."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 15.0,
                                    "id": "examples-label",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 140.0, 905.0, 23.0 ],
                                    "text": "COLLECTION-BASED LOADING"
                                }
                            },
                            {
                                "box": {
                                    "hint": "Double-click for the saved coll and multicoll loading examples.",
                                    "id": "collection-examples",
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
                                        "rect": [ 80.0, 80.0, 930.0, 625.0 ],
                                        "default_fontsize": 13.0,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 21.0,
                                                    "id": "head",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 25.0, 15.0, 850.0, 32.0 ],
                                                    "text": "COLLECTION EXAMPLES"
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
                                                    "patching_rect": [ 25.0, 57.0, 860.0, 45.0 ],
                                                    "text": "The first symbol in each row is used. Extra row values are ignored, matching the original loader. Keep file paths quoted when they contain spaces."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "coll_data": {
                                                        "count": 2,
                                                        "data": [
                                                            {
                                                                "key": 1,
                                                                "value": [ "./test_samples/mono_test.wav" ]
                                                            },
                                                            {
                                                                "key": 2,
                                                                "value": [ "./test_samples/name with spaces.wav" ]
                                                            }
                                                        ]
                                                    },
                                                    "id": "files",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 4,
                                                    "outlettype": [ "", "", "", "" ],
                                                    "patching_rect": [ 25.0, 135.0, 270.0, 23.0 ],
                                                    "saved_object_attributes": {
                                                        "embed": 1,
                                                        "precision": 6
                                                    },
                                                    "text": "coll #0-mb-example-files 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 13.0,
                                                    "id": "files-note",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 330.0, 132.0, 540.0, 42.0 ],
                                                    "text": "Double-click this coll to inspect its two sample paths."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "load-coll",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 25.0, 198.0, 255.0, 23.0 ],
                                                    "text": "/coll #0-mb-example-files"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.063, 0.012, 0.871, 1.0 ],
                                                    "id": "send-coll",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 25.0, 236.0, 190.0, 23.0 ],
                                                    "text": "s #0-mb-command",
                                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "sets",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 4,
                                                    "outlettype": [ "", "", "", "" ],
                                                    "patching_rect": [ 25.0, 310.0, 330.0, 23.0 ],
                                                    "saved_object_attributes": {
                                                        "embed": 0,
                                                        "precision": 6
                                                    },
                                                    "text": "coll #0-mb-example-sets 1 @embed 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 13.0,
                                                    "id": "sets-note",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 385.0, 300.0, 495.0, 55.0 ],
                                                    "text": "Built only when you click the /multicoll example below. This temporary collection is not embedded; nothing writes into it at startup."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "set-load",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 330.0, 355.0, 330.0, 23.0 ],
                                                    "text": "store 1 #0-mb-example-files"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "load-sets",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 25.0, 410.0, 270.0, 23.0 ],
                                                    "text": "/multicoll #0-mb-example-sets"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.063, 0.012, 0.871, 1.0 ],
                                                    "id": "send-sets",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 25.0, 485.0, 190.0, 23.0 ],
                                                    "text": "s #0-mb-command",
                                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 13.0,
                                                    "id": "bottom",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 25.0, 530.0, 860.0, 53.0 ],
                                                    "text": "Repeated sample paths are skipped. An empty or nonexistent named coll can appear as an empty collection; check its contents before loading."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 13.0,
                                                    "id": "prepare-before-multicoll",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "patching_rect": [ 25.0, 450.0, 48.0, 23.0 ],
                                                    "text": "t l b"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "send-coll", 0 ],
                                                    "source": [ "load-coll", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "prepare-before-multicoll", 0 ],
                                                    "source": [ "load-sets", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "send-sets", 0 ],
                                                    "source": [ "prepare-before-multicoll", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "set-load", 0 ],
                                                    "source": [ "prepare-before-multicoll", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "sets", 0 ],
                                                    "source": [ "set-load", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 24.0, 180.0, 280.0, 23.0 ],
                                    "saved_object_attributes": {
                                        "fontsize": 13.0
                                    },
                                    "text": "p COLLECTION_EXAMPLES"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 13.0,
                                    "id": "examples-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 330.0, 177.0, 594.0, 21.0 ],
                                    "text": "Open the supplied coll data, then send /coll or /multicoll. File paths and collection names are included."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 15.0,
                                    "id": "tests-label",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 289.0, 905.0, 23.0 ],
                                    "text": "CHECK THE LOADER IN MAX"
                                }
                            },
                            {
                                "box": {
                                    "hint": "Double-click for the original ordered in-Max smoke tests.",
                                    "id": "in-max-smoke-tests",
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
                                        "rect": [ 80.0, 80.0, 1030.0, 885.0 ],
                                        "default_fontsize": 13.0,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 21.0,
                                                    "id": "head",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 22.0, 15.0, 975.0, 32.0 ],
                                                    "text": "IN-MAX SMOKE TESTS / run in order"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 13.0,
                                                    "id": "notice",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 22.0, 57.0, 975.0, 43.0 ],
                                                    "text": "The supplied Node tests validate control logic only. These checks exercise your actual Max installation and native audio-file readers."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 13.0,
                                                    "id": "h0",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 22.0, 123.0, 375.0, 24.0 ],
                                                    "text": "1. Load the four included files"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "m0",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 22.0, 149.0, 355.0, 23.0 ],
                                                    "text": "/folder ./test_samples"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 13.0,
                                                    "id": "e0",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 412.0, 123.0, 590.0, 48.0 ],
                                                    "text": "Expected done: 4 loaded, 0 errors, 0 skipped. Names must include .wav. Channels: 1, 1, 4, 2."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.063, 0.012, 0.871, 1.0 ],
                                                    "hidden": 1,
                                                    "id": "s0",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 22.0, 950.0, 190.0, 23.0 ],
                                                    "text": "s #0-mb-command",
                                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 13.0,
                                                    "id": "h1",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 22.0, 184.0, 375.0, 24.0 ],
                                                    "text": "2. Inspect native metadata"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "m1",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 22.0, 210.0, 355.0, 23.0 ],
                                                    "text": "/dumpinfo"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 13.0,
                                                    "id": "e1",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 412.0, 184.0, 590.0, 48.0 ],
                                                    "text": "Expect mono_test.wav; name with spaces.wav; quad_test.wav (4 ch); stereo_test.wav (2 ch)."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.063, 0.012, 0.871, 1.0 ],
                                                    "hidden": 1,
                                                    "id": "s1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 262.0, 950.0, 190.0, 23.0 ],
                                                    "text": "s #0-mb-command",
                                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 13.0,
                                                    "id": "h2",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 22.0, 245.0, 375.0, 24.0 ],
                                                    "text": "3. Load the same folder again"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "m2",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 22.0, 271.0, 355.0, 23.0 ],
                                                    "text": "/folder ./test_samples"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 13.0,
                                                    "id": "e2",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 412.0, 245.0, 590.0, 48.0 ],
                                                    "text": "Expected done: 0 loaded, 0 errors, 4 skipped. No new success bangs."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.063, 0.012, 0.871, 1.0 ],
                                                    "hidden": 1,
                                                    "id": "s2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 502.0, 950.0, 190.0, 23.0 ],
                                                    "text": "s #0-mb-command",
                                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 13.0,
                                                    "id": "h3",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 22.0, 306.0, 375.0, 24.0 ],
                                                    "text": "4. Try a conflicting filename"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "m3",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 22.0, 332.0, 355.0, 23.0 ],
                                                    "text": "/folder ./test_collisions"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 13.0,
                                                    "id": "e3",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 412.0, 306.0, 590.0, 48.0 ],
                                                    "text": "Expected name_collision for mono_test.wav, with both paths. The original sample must remain."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.063, 0.012, 0.871, 1.0 ],
                                                    "hidden": 1,
                                                    "id": "s3",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 742.0, 950.0, 190.0, 23.0 ],
                                                    "text": "s #0-mb-command",
                                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 13.0,
                                                    "id": "h4",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 22.0, 367.0, 375.0, 24.0 ],
                                                    "text": "5. Request first-channel loading"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "m4",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 22.0, 393.0, 355.0, 23.0 ],
                                                    "text": "/mono 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 13.0,
                                                    "id": "e4",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 412.0, 367.0, 590.0, 48.0 ],
                                                    "text": "Then click /refresh below. Four buffers should reload with channel count 1; names remain unchanged."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.063, 0.012, 0.871, 1.0 ],
                                                    "hidden": 1,
                                                    "id": "s4",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 22.0, 984.0, 190.0, 23.0 ],
                                                    "text": "s #0-mb-command",
                                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 13.0,
                                                    "id": "h5",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 22.0, 428.0, 375.0, 24.0 ],
                                                    "text": "6. Apply the channel change"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "m5",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 22.0, 454.0, 355.0, 23.0 ],
                                                    "text": "/refresh"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 13.0,
                                                    "id": "e5",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 412.0, 428.0, 590.0, 48.0 ],
                                                    "text": "Use /dumpinfo again. Stop preview playback before refreshing."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.063, 0.012, 0.871, 1.0 ],
                                                    "hidden": 1,
                                                    "id": "s5",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 262.0, 984.0, 190.0, 23.0 ],
                                                    "text": "s #0-mb-command",
                                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 13.0,
                                                    "id": "h6",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 22.0, 489.0, 375.0, 24.0 ],
                                                    "text": "7. Restore all channels"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "m6",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 22.0, 515.0, 355.0, 23.0 ],
                                                    "text": "/mono 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 13.0,
                                                    "id": "e6",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 412.0, 489.0, 590.0, 48.0 ],
                                                    "text": "Click /refresh again; stereo and quad channel counts should return to 2 and 4."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.063, 0.012, 0.871, 1.0 ],
                                                    "hidden": 1,
                                                    "id": "s6",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 502.0, 984.0, 190.0, 23.0 ],
                                                    "text": "s #0-mb-command",
                                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 13.0,
                                                    "id": "h7",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 22.0, 550.0, 375.0, 24.0 ],
                                                    "text": "8. Missing-file failure"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "m7",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 22.0, 576.0, 355.0, 23.0 ],
                                                    "text": "/file ./test_samples/does-not-exist.wav"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 13.0,
                                                    "id": "e7",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 412.0, 550.0, 590.0, 48.0 ],
                                                    "text": "Expected file_not_found immediately, with no additional buffer or success bang."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.063, 0.012, 0.871, 1.0 ],
                                                    "hidden": 1,
                                                    "id": "s7",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 742.0, 984.0, 190.0, 23.0 ],
                                                    "text": "s #0-mb-command",
                                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 13.0,
                                                    "id": "h8",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 22.0, 611.0, 375.0, 24.0 ],
                                                    "text": "9. Remove loaded samples"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "m8",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 22.0, 637.0, 355.0, 23.0 ],
                                                    "text": "/clear"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 13.0,
                                                    "id": "e8",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 412.0, 611.0, 590.0, 48.0 ],
                                                    "text": "Expected cleared 0, empty menu and no owned buffers. Audio preview should be stopped first."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.063, 0.012, 0.871, 1.0 ],
                                                    "hidden": 1,
                                                    "id": "s8",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 22.0, 1018.0, 190.0, 23.0 ],
                                                    "text": "s #0-mb-command",
                                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 13.0,
                                                    "id": "firstch-head",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 22.0, 736.0, 975.0, 25.0 ],
                                                    "text": "Optional first-channel verification (after /mono 1, then /refresh):"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "sample-index",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 22.0, 777.0, 64.0, 23.0 ],
                                                    "text": "1000"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "sample-read",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 114.0, 777.0, 229.0, 23.0 ],
                                                    "text": "peek~ stereo_test.wav 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "format": 6,
                                                    "id": "sample-value",
                                                    "maxclass": "flonum",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 370.0, 777.0, 110.0, 23.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "firstch-note",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 505.0, 772.0, 490.0, 45.0 ],
                                                    "text": "Expected about -0.080. This checks channel 1, not a stereo sum or average."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "bottom",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 22.0, 685.0, 975.0, 42.0 ],
                                                    "text": "The test samples are synthesized PCM WAV files at 48 kHz, 16800 frames (350 ms). Preview output is attenuated and the patch does not enable audio automatically."
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "s0", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "m0", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "s1", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "m1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "s2", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "m2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "s3", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "m3", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "s4", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "m4", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "s5", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "m5", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "s6", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "m6", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "s7", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "m7", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "s8", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "m8", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "sample-read", 0 ],
                                                    "source": [ "sample-index", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "sample-value", 0 ],
                                                    "source": [ "sample-read", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 24.0, 329.0, 280.0, 23.0 ],
                                    "saved_object_attributes": {
                                        "fontsize": 13.0
                                    },
                                    "text": "p IN_MAX_SMOKE_TESTS"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 13.0,
                                    "id": "tests-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 330.0, 326.0, 665.0, 21.0 ],
                                    "text": "Run the original loading, channel-count, duplicate-name, and missing-file checks. Read their expected results first."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 13.0,
                                    "id": "warning",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 420.0, 902.0, 21.0 ],
                                    "text": "The tests may refresh or clear samples. Stop preview playback before running them."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontsize": 12.5,
                                    "id": "disk-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 485.0, 902.0, 20.0 ],
                                    "text": "Version 2.0.0: see V2_RELEASE_NOTES.md and tests/test_loader.js on disk."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Arial",
                                    "fontsize": 15.0,
                                    "id": "stability-label",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 548.0, 905.0, 25.0 ],
                                    "text": "STARTUP / SHUTDOWN DIAGNOSTICS"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "stability-checks",
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
                                        "rect": [ 120.0, 100.0, 980.0, 770.0 ],
                                        "default_fontsize": 13.0,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontname": "Arial",
                                                    "fontsize": 22.0,
                                                    "id": "head",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 24.0, 20.0, 920.0, 32.0 ],
                                                    "text": "STARTUP AND CLOSE CHECKS / version 2.0.0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 13.0,
                                                    "id": "intro",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 24.0, 66.0, 920.0, 45.0 ],
                                                    "text": "Run in a fresh Max session. Keep audio OFF for the first pass. These controls never close a patch automatically."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 13.0,
                                                    "id": "v",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 24.0, 132.0, 105.0, 25.0 ],
                                                    "text": "/version"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 13.0,
                                                    "id": "v-note",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 165.0, 132.0, 750.0, 30.0 ],
                                                    "text": "Expected status: version multibuf_js_v2 2.0.0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 13.0,
                                                    "id": "test",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 24.0, 188.0, 205.0, 25.0 ],
                                                    "text": "/folder ./test_samples"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 13.0,
                                                    "id": "test-note",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 257.0, 188.0, 665.0, 40.0 ],
                                                    "text": "Wait for done: 4 loaded, 0 errors, 0 skipped on the first load."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 13.0,
                                                    "id": "clear",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 24.0, 254.0, 95.0, 25.0 ],
                                                    "text": "/clear"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 13.0,
                                                    "id": "clear-note",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 165.0, 248.0, 755.0, 48.0 ],
                                                    "text": "Optional cleanup test: wait for cleared 0. Do not use clear to interrupt a decoder that has not completed."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.063, 0.012, 0.871, 1.0 ],
                                                    "fontname": "Arial",
                                                    "fontsize": 13.0,
                                                    "id": "send",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 24.0, 320.0, 190.0, 25.0 ],
                                                    "text": "s #0-mb-command",
                                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 13.0,
                                                    "id": "s1",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 24.0, 391.0, 914.0, 42.0 ],
                                                    "text": "1. Open and close the top-level help with no samples loaded. Repeat several times."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 13.0,
                                                    "id": "s2",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 24.0, 451.0, 914.0, 45.0 ],
                                                    "text": "2. Reopen, load the included folder, wait for done, then close the TOP-LEVEL help without clearing. Repeat several times."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 13.0,
                                                    "id": "s3",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 24.0, 512.0, 914.0, 45.0 ],
                                                    "text": "3. Load again. Open and close only p runtime_buffers. The loader must remain usable: closing a subpatch editor is not destruction."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 13.0,
                                                    "id": "s4",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 24.0, 573.0, 914.0, 45.0 ],
                                                    "text": "4. Repeat with a small folder of your own sounds. Enable preview audio only after the audio-off close tests pass."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 13.0,
                                                    "id": "s5",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 24.0, 634.0, 914.0, 45.0 ],
                                                    "text": "A timeout reports waiting ... native_read. Do not repeatedly submit folders. Capture the last loading line and any Max crash report."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontname": "Arial",
                                                    "fontsize": 13.0,
                                                    "id": "disclaimer",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 24.0, 695.0, 914.0, 45.0 ],
                                                    "text": "The 60 supplied automated tests use mock Max APIs, not the native Max runtime. Native opening, closing, and audio remain to be checked."
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "send", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "clear", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "send", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "test", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "send", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "v", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 24.0, 588.0, 298.0, 25.0 ],
                                    "saved_object_attributes": {
                                        "fontsize": 13.0
                                    },
                                    "text": "p STARTUP_AND_CLOSE_CHECKS"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "stability-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 350.0, 586.0, 574.0, 45.0 ],
                                    "text": "Check the build and repeat open/load/close with audio off. No forced-close commands are sent."
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "timeout-safety-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 650.0, 905.0, 43.0 ],
                                    "text": "Timeout behavior changed: unresolved native reads are retained, not force-deleted. See CRASH_FIX_NOTES.md."
                                }
                            }
                        ],
                        "lines": []
                    },
                    "patching_rect": [ 23.5, 678.0, 110.0, 23.0 ],
                    "saved_object_attributes": {
                        "description": "Developer examples and verification patchers.",
                        "fontsize": 13.0
                    },
                    "text": "p Developer Files"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.5,
                    "id": "buffer-location",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 581.0, 279.0, 433.0, 20.0 ],
                    "text": "To see the buffers: open multibuf_js_v2, then p runtime_buffers after loading."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.5,
                    "id": "primary-ref-note",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 17.0, 400.0, 220.0, 34.0 ],
                    "text": "Everyday commands: load, list, \ncount, refresh, stop loading, and clear."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.5,
                    "id": "developer-files-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 289.5, 676.0, 240.0, 20.0 ],
                    "text": "Collection examples and the in-Max tests."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.06274509803921569, 0.5215686274509804, 0.5725490196078431, 1.0 ],
                    "hidden": 1,
                    "id": "names-print",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 589.0, 394.0, 129.0, 23.0 ],
                    "text": "print multibuf_names"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.5,
                    "id": "diagnostic-copy-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 786.0, 1000.0, 20.0 ],
                    "text": "VERSION 2.0.0: existing controls, defaults, and safeguards retained. Save/close test: 01_LOADER_ONLY.maxpat. Not a verified native crash fix."
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "auto-menu-message", 0 ],
                    "hidden": 1,
                    "source": [ "auto-menu-bang", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "auto-menu-send", 0 ],
                    "hidden": 1,
                    "source": [ "auto-menu-message", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "auto-menu-bang", 0 ],
                    "hidden": 1,
                    "source": [ "auto-menu-route", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "auto-menu-bang", 0 ],
                    "hidden": 1,
                    "source": [ "auto-menu-route", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "auto-menu-bang", 0 ],
                    "hidden": 1,
                    "source": [ "auto-menu-route", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dialog-file", 0 ],
                    "source": [ "choose-file", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dialog-folder", 0 ],
                    "source": [ "choose-folder", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "prepend-file", 0 ],
                    "source": [ "dialog-file", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "prepend-folder", 0 ],
                    "source": [ "dialog-folder", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "drop-prepend", 0 ],
                    "source": [ "drop-folder", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "drop-send", 0 ],
                    "source": [ "drop-prepend", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "auto-menu-route", 0 ],
                    "hidden": 1,
                    "midpoints": [ 791.5, 324.82421875, 784.5, 324.82421875 ],
                    "order": 1,
                    "source": [ "loader", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "name-route", 0 ],
                    "source": [ "loader", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "status-route", 0 ],
                    "order": 0,
                    "source": [ "loader", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "success", 0 ],
                    "source": [ "loader", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "play-set", 0 ],
                    "source": [ "menu", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "name-set", 0 ],
                    "order": 1,
                    "source": [ "name-route", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "names-print", 0 ],
                    "hidden": 1,
                    "order": 0,
                    "source": [ "name-route", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "name-display", 0 ],
                    "source": [ "name-set", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dac", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-1", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "play", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "play", 0 ],
                    "source": [ "play-set", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "send-file", 0 ],
                    "source": [ "prepend-file", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "send-folder", 0 ],
                    "source": [ "prepend-folder", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "loader", 0 ],
                    "source": [ "recv", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "play", 0 ],
                    "source": [ "start", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "menu", 0 ],
                    "midpoints": [ 565.23828125, 351.765625, 565.23828125, 531.7890625, 576.5, 531.7890625 ],
                    "source": [ "status-route", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "status-print", 0 ],
                    "source": [ "status-route", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "play", 0 ],
                    "source": [ "stop", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "testsend", 0 ],
                    "source": [ "testfolder", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-1": [ "live.gain~", "live.gain~", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}