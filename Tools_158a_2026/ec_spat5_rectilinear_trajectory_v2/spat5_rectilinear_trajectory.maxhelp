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
        "rect": [ 42.0, 100.0, 1386.0, 852.0 ],
        "default_fontsize": 13.0,
        "boxes": [
            {
                "box": {
                    "id": "obj-32",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 547.0, 133.0, 471.0, 36.0 ],
                    "presentation_linecount": 3,
                    "text": "reset source presence fade in multiples of the radius-1 circle\n2 = no source (reverb continues) by 2X distance, 4 = no source by 4X distance"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-31",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 461.0, 146.0, 84.0, 23.0 ],
                    "presentation_linecount": 2,
                    "text": "sourcepres 4"
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 518.0, 106.0, 395.0, 21.0 ],
                    "text": "reset distance in multiples of the radius-1 circle, launch on \"go\""
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-29",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 445.0, 106.0, 68.0, 23.0 ],
                    "text": "distance 4"
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 485.0, 64.0, 279.0, 36.0 ],
                    "text": "global \"cycle\" time in seconds from center to \nedge in seconds for all sources, launch on \"go\""
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-21",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 427.0, 77.0, 56.0, 23.0 ],
                    "text": "cycle 10"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 486.0, 38.0, 281.0, 21.0 ],
                    "text": "number of sources <int (1-150)> launch on \"go\""
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-13",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 411.0, 37.0, 65.0, 23.0 ],
                    "text": "sources 1"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 160.0, 140.5, 195.0, 21.0 ],
                    "text": "bang = restart with active values"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ -0.5, 572.0, 41.0, 36.0 ],
                    "text": "dac \non/off"
                }
            },
            {
                "box": {
                    "channels": 8,
                    "id": "obj-19",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 8,
                    "numoutlets": 11,
                    "outlettype": [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 37.0, 661.0, 485.0, 100.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -80 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.gain~[11]",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.gain~",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~[9]"
                }
            },
            {
                "box": {
                    "id": "obj-46",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 8.0, 620.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 8,
                    "numoutlets": 0,
                    "patching_rect": [ 37.0, 782.0, 345.2, 23.0 ],
                    "text": "dac~ 1 2 3 4 5 6 7 8"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 137.0, 116.0, 241.0, 21.0 ],
                    "text": "go = new weighted random launch order"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 121.0, 86.0, 301.0, 21.0 ],
                    "text": "hold = stop and return all sources to outer distance"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-7",
                    "linecount": 6,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1051.0, 416.5, 319.0, 94.0 ],
                    "text": "init = reinstall preset + HOLD\n\ngo / bang = new weighted random launch order\nLaunch spacing = cycle seconds / source count.\nEach source launches once, then cycles continuously.\nWide angular jumps favored; nearby jumps possible."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 104.0, 58.0, 175.0, 21.0 ],
                    "text": "init = reinstall preset + HOLD"
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 37.0, 413.0, 112.0, 23.0 ],
                    "text": "delaydrift 300 300"
                }
            },
            {
                "box": {
                    "channels": 1,
                    "id": "obj-56",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 998.0, 389.5, 39.0, 64.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -80 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.gain~[9]",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.gain~",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~[7]"
                }
            },
            {
                "box": {
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "prim.loop.aif",
                                "filename": "prim.loop.aif",
                                "filekind": "audiofile",
                                "id": "u910004020",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            }
                        ]
                    },
                    "id": "obj-55",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1027.0, 329.0, 150.0, 30.0 ],
                    "quality": "basic",
                    "saved_attribute_attributes": {
                        "candicane2": {
                            "expression": ""
                        },
                        "candicane3": {
                            "expression": ""
                        },
                        "candicane4": {
                            "expression": ""
                        },
                        "candicane5": {
                            "expression": ""
                        },
                        "candicane6": {
                            "expression": ""
                        },
                        "candicane7": {
                            "expression": ""
                        },
                        "candicane8": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "id": "obj-53",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1195.0, 364.5, 31.0, 23.0 ],
                    "text": "-12."
                }
            },
            {
                "box": {
                    "channels": 1,
                    "id": "obj-50",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 818.0, 403.0, 39.0, 64.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -80 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.gain~[8]",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.gain~",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~[6]"
                }
            },
            {
                "box": {
                    "clipheight": 29.0,
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "isthatyou.aiff",
                                "filename": "isthatyou.aiff",
                                "filekind": "audiofile",
                                "id": "u931003560",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            }
                        ]
                    },
                    "id": "obj-49",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 905.0, 329.0, 107.0, 30.0 ],
                    "quality": "basic",
                    "saved_attribute_attributes": {
                        "candicane2": {
                            "expression": ""
                        },
                        "candicane3": {
                            "expression": ""
                        },
                        "candicane4": {
                            "expression": ""
                        },
                        "candicane5": {
                            "expression": ""
                        },
                        "candicane6": {
                            "expression": ""
                        },
                        "candicane7": {
                            "expression": ""
                        },
                        "candicane8": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "clipheight": 30.5,
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "rightlefttest.wav",
                                "filename": "rightlefttest.wav",
                                "filekind": "audiofile",
                                "id": "u522004869",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            }
                        ]
                    },
                    "id": "obj-47",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 776.0, 328.25, 119.0, 31.5 ],
                    "quality": "basic",
                    "saved_attribute_attributes": {
                        "candicane2": {
                            "expression": ""
                        },
                        "candicane3": {
                            "expression": ""
                        },
                        "candicane4": {
                            "expression": ""
                        },
                        "candicane5": {
                            "expression": ""
                        },
                        "candicane6": {
                            "expression": ""
                        },
                        "candicane7": {
                            "expression": ""
                        },
                        "candicane8": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "channels": 1,
                    "id": "obj-45",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 569.0, 372.0, 39.0, 64.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -80 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.gain~[7]",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.gain~",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~[5]"
                }
            },
            {
                "box": {
                    "clipheight": 29.0,
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "cello-f2.aif",
                                "filename": "cello-f2.aif",
                                "filekind": "audiofile",
                                "id": "u718003026",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            }
                        ]
                    },
                    "id": "obj-44",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 619.0, 329.75, 129.0, 30.0 ],
                    "quality": "basic",
                    "saved_attribute_attributes": {
                        "candicane2": {
                            "expression": ""
                        },
                        "candicane3": {
                            "expression": ""
                        },
                        "candicane4": {
                            "expression": ""
                        },
                        "candicane5": {
                            "expression": ""
                        },
                        "candicane6": {
                            "expression": ""
                        },
                        "candicane7": {
                            "expression": ""
                        },
                        "candicane8": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "channels": 1,
                    "id": "obj-41",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 639.0, 408.0, 39.0, 64.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -80 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.gain~[6]",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.gain~",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~[4]"
                }
            },
            {
                "box": {
                    "clipheight": 29.0,
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "bass.aiff",
                                "filename": "bass.aiff",
                                "filekind": "audiofile",
                                "id": "u500002760",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            }
                        ]
                    },
                    "id": "obj-39",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 484.0, 329.75, 115.0, 30.0 ],
                    "quality": "basic",
                    "saved_attribute_attributes": {
                        "candicane2": {
                            "expression": ""
                        },
                        "candicane3": {
                            "expression": ""
                        },
                        "candicane4": {
                            "expression": ""
                        },
                        "candicane5": {
                            "expression": ""
                        },
                        "candicane6": {
                            "expression": ""
                        },
                        "candicane7": {
                            "expression": ""
                        },
                        "candicane8": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "channels": 1,
                    "id": "obj-37",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 413.0, 405.0, 39.0, 64.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -80 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.gain~[5]",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.gain~",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~[3]"
                }
            },
            {
                "box": {
                    "clipheight": 29.0,
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "rainstick.aif",
                                "filename": "rainstick.aif",
                                "filekind": "audiofile",
                                "id": "u847011403",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            }
                        ]
                    },
                    "id": "obj-35",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 365.0, 329.75, 101.0, 30.0 ],
                    "quality": "basic",
                    "saved_attribute_attributes": {
                        "candicane2": {
                            "expression": ""
                        },
                        "candicane3": {
                            "expression": ""
                        },
                        "candicane4": {
                            "expression": ""
                        },
                        "candicane5": {
                            "expression": ""
                        },
                        "candicane6": {
                            "expression": ""
                        },
                        "candicane7": {
                            "expression": ""
                        },
                        "candicane8": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "channels": 1,
                    "id": "obj-34",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 352.0, 403.0, 39.0, 64.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -80 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.gain~[4]",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.gain~",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~[2]"
                }
            },
            {
                "box": {
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "impls19-doorclose-powerful.wav",
                                "filename": "impls19-doorclose-powerful.wav",
                                "filekind": "audiofile",
                                "id": "u848006236",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            }
                        ]
                    },
                    "id": "obj-28",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 196.0, 327.5, 150.0, 30.0 ],
                    "quality": "basic",
                    "saved_attribute_attributes": {
                        "candicane2": {
                            "expression": ""
                        },
                        "candicane3": {
                            "expression": ""
                        },
                        "candicane4": {
                            "expression": ""
                        },
                        "candicane5": {
                            "expression": ""
                        },
                        "candicane6": {
                            "expression": ""
                        },
                        "candicane7": {
                            "expression": ""
                        },
                        "candicane8": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "channels": 1,
                    "id": "obj-25",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 204.0, 405.0, 39.0, 64.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -80 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.gain~[1]",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.gain~",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~[1]"
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 325.0, 178.0, 105.0, 21.0 ],
                    "text": "source presence"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 455.0, 171.0, 95.0, 21.0 ],
                    "text": "room presence"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 575.0, 171.0, 57.0, 21.0 ],
                    "text": "aperture"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "number",
                    "maximum": 120,
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 575.0, 197.0, 50.0, 23.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 575.0, 229.0, 130.0, 23.0 ],
                    "text": "/source/*/aperture $1"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "number",
                    "maximum": 120,
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 458.0, 197.0, 50.0, 23.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 458.0, 229.0, 105.0, 23.0 ],
                    "text": "/source/*/prer $1"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "number",
                    "maximum": 120,
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 332.0, 197.0, 50.0, 23.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 332.0, 229.0, 107.0, 23.0 ],
                    "text": "/source/*/pres $1"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 32,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 79.0, 487.0, 961.6818181818182, 23.0 ],
                    "text": "mc.pack~ 32"
                }
            },
            {
                "box": {
                    "id": "obj-42",
                    "maxclass": "spat5.osc.view",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "int", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 56.0, 292.0, 562.0, 26.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 50.0, 373.0, 62.0, 23.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "full",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 32,
                    "outlettype": [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
                    "patching_rect": [ 52.0, 555.0, 617.9999999999994, 23.0 ],
                    "text": "ec_tapdelay64_breakout~ 32"
                }
            },
            {
                "box": {
                    "id": "m0",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 57.0, 452.0, 55.0, 23.0 ],
                    "text": "1500 32"
                }
            },
            {
                "box": {
                    "id": "delay",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [ "multichannelsignal", "signal", "" ],
                    "patching_rect": [ 57.0, 524.0, 259.5, 23.0 ],
                    "text": "ec_tapdelay64_v3~ 32"
                }
            },
            {
                "box": {
                    "channels": 1,
                    "id": "obj-3",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 137.0, 373.0, 50.0, 97.0 ],
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
                    "clipheight": 29.0,
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "Snare 01.wav",
                                "filename": "Snare 01.wav",
                                "filekind": "audiofile",
                                "id": "u289002214",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            }
                        ]
                    },
                    "id": "obj-2",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 56.0, 327.5, 131.0, 30.0 ],
                    "quality": "basic",
                    "saved_attribute_attributes": {
                        "candicane2": {
                            "expression": ""
                        },
                        "candicane3": {
                            "expression": ""
                        },
                        "candicane4": {
                            "expression": ""
                        },
                        "candicane5": {
                            "expression": ""
                        },
                        "candicane6": {
                            "expression": ""
                        },
                        "candicane7": {
                            "expression": ""
                        },
                        "candicane8": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 22.0,
                    "id": "title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 37.0, 5.0, 572.0, 31.0 ],
                    "text": "ec_SPAT5 RECTILINEAR TRAJECTORY — VERSION 2"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "init",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 37.0, 57.0, 65.0, 23.0 ],
                    "text": "init"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "hold",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 85.0, 65.0, 23.0 ],
                    "text": "hold"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "go",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 61.0, 120.0, 65.0, 23.0 ],
                    "text": "go"
                }
            },
            {
                "box": {
                    "id": "bang",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 133.0, 139.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "js",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 37.0, 170.0, 255.0, 23.0 ],
                    "saved_object_attributes": {
                        "filename": "spat5_rectilinear_trajectory.js",
                        "parameter_enable": 0
                    },
                    "text": "js spat5_rectilinear_trajectory.js 32 20 10 2"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "status",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 145.0, 200.0, 133.0, 23.0 ],
                    "text": "print trajectory_status"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "args",
                    "linecount": 9,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1007.0, 64.0, 363.0, 137.0 ],
                    "text": "ARGUMENT INDEX (after the filename)\n1. Sources: integer 1–150; default 1.\n2. Cycle: full outer → center → outer trip in seconds; positive number; default 10.\n3. Distance: outer radius in multiples of the radius-1 circle; \n2X = distance 2.0; 10X = distance 10.0.\nOmitted arguments use defaults.\n4. sourcepres = rate of source drop off into distance.\n2 = no source by 2X distance, 4 = no source by 4X distance"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "states",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1007.0, 31.0, 319.0, 21.0 ],
                    "text": "Each source launches once, then cycles continuously."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "oper",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 37.0, 260.0, 653.0, 23.0 ],
                    "saved_object_attributes": {
                        "parameter_enable": 0
                    },
                    "text": "spat5.oper @internals 8 @initwith \"/source/number 1, /room/number 1, /speaker/number 2, /speakers/az -45 45\""
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "opentext",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 57.0, 237.0, 269.0, 21.0 ],
                    "text": "Double-click Oper to view the moving source."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "noise_label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 98.0, 800.0, 205.0, 21.0 ],
                    "text": "Test sound ON / OFF (starts OFF)"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "spat",
                    "maxclass": "newobj",
                    "numinlets": 32,
                    "numoutlets": 9,
                    "outlettype": [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "" ],
                    "patching_rect": [ 37.0, 620.5, 551.0, 23.0 ],
                    "saved_object_attributes": {
                        "parameter_enable": 0
                    },
                    "text": "spat5.spat~ @inputs 32 @outputs 8 @rooms 1 @internals 8 @initwith \"/panning/type angular\""
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "dac_label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 305.0, 800.0, 313.0, 21.0 ],
                    "text": "Click to enable DSP. Begin with low listening volume."
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "curve",
                    "linecount": 5,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1087.0, 214.0, 227.0, 79.0 ],
                    "text": "DISTANCE / SOURCEPRES\n0.00–0.25 : 100%\n1.00 : 50%\n1.50 : 5%\n2.00 : muted; reverb feed continues"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "scale",
                    "linecount": 6,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 702.0, 549.5, 435.0, 94.0 ],
                    "text": "TO TEST MORE SOURCES\nChange the JS count AND spat5.spat~ @inputs to N. Connect N audio signals. Oper source count comes from the JS.\n\nThe two-speaker demo is for auditioning the fade/reverb behavior; it cannot reproduce a full 360° scene."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "note",
                    "linecount": 5,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 662.0, 700.0, 437.0, 79.0 ],
                    "text": "HOLD needs live input audio and DSP to build the room sound. The script does not load sound files, change your audio hardware, or normalize for source count.\nStatus outlet prints launch_order (source IDs), then state + the three argument values."
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "js", 0 ],
                    "source": [ "bang", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "full", 0 ],
                    "source": [ "delay", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "spat", 1 ],
                    "source": [ "full", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "spat", 0 ],
                    "source": [ "full", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "js", 0 ],
                    "source": [ "go", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "js", 0 ],
                    "source": [ "hold", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "js", 0 ],
                    "source": [ "init", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "oper", 0 ],
                    "source": [ "js", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "status", 0 ],
                    "source": [ "js", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "delay", 1 ],
                    "midpoints": [ 66.5, 518.93359375, 307.0, 518.93359375 ],
                    "source": [ "m0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "m0", 0 ],
                    "order": 0,
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "order": 1,
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "oper", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "js", 0 ],
                    "midpoints": [ 420.5, 166.984375, 46.5, 166.984375 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "oper", 0 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 7 ],
                    "source": [ "obj-19", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 6 ],
                    "source": [ "obj-19", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 5 ],
                    "source": [ "obj-19", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 4 ],
                    "source": [ "obj-19", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 3 ],
                    "source": [ "obj-19", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 2 ],
                    "source": [ "obj-19", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 1 ],
                    "source": [ "obj-19", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "js", 0 ],
                    "midpoints": [ 436.5, 166.58203125, 46.5, 166.58203125 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 25 ],
                    "order": 0,
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 17 ],
                    "order": 1,
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 9 ],
                    "order": 2,
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 1 ],
                    "order": 3,
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "delay", 1 ],
                    "midpoints": [ 46.5, 521.77734375, 307.0, 521.77734375 ],
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "js", 0 ],
                    "midpoints": [ 454.5, 165.15625, 46.5, 165.15625 ],
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 24 ],
                    "order": 0,
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 16 ],
                    "order": 1,
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 8 ],
                    "order": 2,
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "order": 3,
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "js", 0 ],
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 26 ],
                    "order": 0,
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 18 ],
                    "order": 1,
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 10 ],
                    "order": 2,
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 2 ],
                    "order": 3,
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 27 ],
                    "order": 0,
                    "source": [ "obj-37", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 19 ],
                    "order": 1,
                    "source": [ "obj-37", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 11 ],
                    "order": 2,
                    "source": [ "obj-37", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 3 ],
                    "order": 3,
                    "source": [ "obj-37", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "source": [ "obj-39", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "delay", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 29 ],
                    "order": 0,
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 21 ],
                    "order": 1,
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 13 ],
                    "order": 2,
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 5 ],
                    "order": 3,
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-45", 0 ],
                    "source": [ "obj-44", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 28 ],
                    "order": 0,
                    "source": [ "obj-45", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 20 ],
                    "order": 1,
                    "source": [ "obj-45", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 12 ],
                    "order": 2,
                    "source": [ "obj-45", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 4 ],
                    "order": 3,
                    "source": [ "obj-45", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 0 ],
                    "source": [ "obj-47", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 0 ],
                    "source": [ "obj-49", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 30 ],
                    "order": 0,
                    "source": [ "obj-50", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 22 ],
                    "order": 1,
                    "source": [ "obj-50", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 14 ],
                    "order": 2,
                    "source": [ "obj-50", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 6 ],
                    "order": 3,
                    "source": [ "obj-50", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "order": 6,
                    "source": [ "obj-53", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "order": 7,
                    "source": [ "obj-53", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "order": 5,
                    "source": [ "obj-53", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "order": 4,
                    "source": [ "obj-53", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 0 ],
                    "order": 2,
                    "source": [ "obj-53", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-45", 0 ],
                    "order": 3,
                    "source": [ "obj-53", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 0 ],
                    "order": 1,
                    "source": [ "obj-53", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-56", 0 ],
                    "order": 0,
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
                    "destination": [ "obj-4", 31 ],
                    "order": 0,
                    "source": [ "obj-56", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 23 ],
                    "order": 1,
                    "source": [ "obj-56", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 15 ],
                    "order": 2,
                    "source": [ "obj-56", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 7 ],
                    "order": 3,
                    "source": [ "obj-56", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "oper", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-9", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "order": 0,
                    "source": [ "oper", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "spat", 0 ],
                    "order": 1,
                    "source": [ "oper", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 7 ],
                    "source": [ "spat", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 6 ],
                    "source": [ "spat", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 5 ],
                    "source": [ "spat", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 4 ],
                    "source": [ "spat", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 3 ],
                    "source": [ "spat", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 2 ],
                    "source": [ "spat", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 1 ],
                    "source": [ "spat", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "spat", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-19": [ "live.gain~[11]", "live.gain~", 0 ],
            "obj-25": [ "live.gain~[1]", "live.gain~", 0 ],
            "obj-3": [ "live.gain~", "live.gain~", 0 ],
            "obj-34": [ "live.gain~[4]", "live.gain~", 0 ],
            "obj-37": [ "live.gain~[5]", "live.gain~", 0 ],
            "obj-41": [ "live.gain~[6]", "live.gain~", 0 ],
            "obj-45": [ "live.gain~[7]", "live.gain~", 0 ],
            "obj-50": [ "live.gain~[8]", "live.gain~", 0 ],
            "obj-56": [ "live.gain~[9]", "live.gain~", 0 ],
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