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
        "rect": [ 1963.0, 124.0, 1340.0, 849.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 878.0, 197.0, 35.0, 22.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 827.0, 109.0, 279.0, 20.0 ],
                    "text": "load your preset to add all the binaural mix settings"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "id": "obj-23",
                    "maxclass": "o.compose",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 878.0, 221.0, 301.0, 23.0 ],
                    "saved_bundle_data": [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0 ],
                    "saved_bundle_length": 16
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 799.0, 105.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-18",
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
                        "rect": [ 59.0, 119.0, 638.0, 674.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-21",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 92.0, 47.0, 311.0, 33.0 ],
                                    "text": "presetn setting for spat5.pan~ to turn 8-channels into a\n\"head related transfer function\" binaural headphone mix. "
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 45.0, 47.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-17",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 42.0, 636.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-15",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 44.0, 3.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "linecount": 33,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 44.0, 100.0, 136.0, 451.0 ],
                                    "text": "/panning/type binaural, /panning/subtype direct, /hrtf kemar, /source/1/aed -45. 0. 1., /source/2/aed 0. 0. 1., /source/3/aed 45. 0. 1., /source/4/aed 90. 0. 1., /source/5/aed 135. 0. 1., /source/6/aed 180. 0. 1., /source/7/aed -135. 0. 1., /source/8/aed -90. 0. 1., /source/1/mute 0, /source/2/mute 0, /source/3/mute 0, /source/4/mute 0, /source/5/mute 0, /source/6/mute 0, /source/7/mute 0, /source/8/mute 0, /listener/orientation 0. 0. 0. 1., /itd/type measurement, /itd/scaling 100., /itd/latencymode fixedlatency, /interpolation/mode allpass, /interpolation/time 30., /crossfade/duration 5., /crossfade/type linear, /dsp/mute 0, /dsp/bypass 0"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 799.0, 135.0, 257.0, 22.0 ],
                    "text": "p spat5_pan_binaural_spatial_headphone_mix"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 781.0, 34.0, 42.0, 22.0 ],
                    "text": "/dump"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 788.0, 348.0, 72.0, 60.0 ],
                    "text": "binaural spatial headphone mix!"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 782.0, 203.0, 48.0, 136.0 ],
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
                    "id": "obj-7",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 827.0, 77.0, 328.0, 33.0 ],
                    "presentation_linecount": 2,
                    "text": "connect the audio outputs from your 8 channel output from spat5.spat~ to the 8 inputs on the spat5.pan~ below"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 827.0, 15.0, 314.0, 60.0 ],
                    "text": "once you have created your 8 sources and 8 speakers out you can listen with headphones using the special \"binaural\" mix that will simulate for your headphones the full spatial audio"
                }
            },
            {
                "box": {
                    "id": "obj-45",
                    "maxclass": "newobj",
                    "numinlets": 8,
                    "numoutlets": 3,
                    "outlettype": [ "signal", "signal", "" ],
                    "patching_rect": [ 782.0, 162.0, 384.0, 22.0 ],
                    "saved_object_attributes": {
                        "parameter_enable": 0
                    },
                    "text": "spat5.pan~ @inputs 8 @outputs 2 @initwith \"/panning/type binaural\""
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 99.0, 442.0, 48.0, 22.0 ],
                    "text": "pipe 10"
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "int", "" ],
                    "patching_rect": [ 99.0, 411.0, 97.0, 22.0 ],
                    "text": "t 1 l"
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 95.5, 704.0, 55.0, 22.0 ],
                    "text": "dac~ 1 2"
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 99.0, 534.0, 48.0, 136.0 ],
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
                    "id": "obj-16",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 99.0, 384.0, 97.0, 22.0 ],
                    "text": "clear, append $1"
                }
            },
            {
                "box": {
                    "clipheight": 34.0,
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "impls02-wood-smash.wav",
                                "filename": "impls02-wood-smash.wav",
                                "filekind": "audiofile",
                                "id": "u394008561",
                                "loop": 0,
                                "content_state": {                                }
                            }
                        ]
                    },
                    "id": "obj-14",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 99.0, 481.0, 271.0, 35.0 ],
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
                    "autopopulate": 1,
                    "depth": 1,
                    "id": "obj-9",
                    "items": [ "anacru01-human-strong.wav", ",", "anacru02-pitch-high-swell.wav", ",", "anacru03-pitch-high-swell2.wav", ",", "anacru04-zipper1.wav", ",", "atkdcy01-noise-waterdrop-delicate.wav", ",", "atkdcy02-wood-block-bright.wav", ",", "atkdcy03-wood-note-high-D.wav", ",", "atkdcy04-wood-note-mid-D.wav", ",", "continuant01-coinspin.wav", ",", "continuant02_inharm-thick.aif", ",", "elec01-atkdcy-.wav", ",", "elec02-atkdcy-falling-long.wav", ",", "elec03-atkdcy-muscular.wav", ",", "elec04-atkdcy-tone-thick.wav", ",", "elec05-conintuant-dcy-tone-thick.wav", ",", "elec06-contuant-dcy-tone-inharm-thick.wav", ",", "elec07-event-thick.wav", ",", "elec08-noise-muscular.wav", ",", "event01-bell-pitch-atkdcy-reverse.wav", ",", "event02-bell-pitch-atkdcy.wav", ",", "event03-bubbles-impls.wav", ",", "event04-carcrash-phrase-muscular.wav", ",", "event05-cicadas-fading.wav", ",", "event06-icecubes-noise.wav", ",", "event07-potterycrash-atkdcy.wav", ",", "event08-whip-swish2.wav.wav", ",", "event09-whip-swish3.wav", ",", "human-hiss-fade.wav", ",", "human-scream-male.aif", ",", "impls01-event-knock-mid.wav", ",", "impls02-wood-smash.wav", ",", "impls03-wood-dull.wav", ",", "impls04-wood-complex-breaking.wav", ",", "impls05-skin-low-muscular.wav", ",", "impls06-bounce-wood.wav", ",", "impls07-metal-muscular.wav", ",", "impls08-inharm-garbagecan-wirebrush.wav", ",", "impls09-inharm-garbagecan-strike-brigh.wav", ",", "impls10-gun-muscular.wav", ",", "impls11-gun-muscular-bright.wav", ",", "impls12-flashbulb-low-strong.wav", ",", "impls13-flashbulb-complex.wav", ",", "impls14-explosion-low-muscular.wav", ",", "impls15-event-crashingglass.wav", ",", "impls16-event-camerashutter3.wav", ",", "impls17-event-camerashutter2.wav", ",", "impls18-event-camerashutter.wav", ",", "impls19-doorclose-powerful.wav", ",", "impls20-crashing-low.wav", ",", "impls21-crashing-bright.wav", ",", "impls22-event-thump-low.wav", ",", "inharm01-metal-bright-low.wav", ",", "inharm02-Clock-complex.aif", ",", "inharm03-metal-bright.wav", ",", "inharm04-metal-gong.aif", ",", "inharm05-cymbal-dense.aif", ",", "noise01-dcy-event-ocean-brown.wav", ",", "noise02-dcy-event-ocean-brown2.wav", ",", "noise03-downward-elecfanslowing.wav", ",", "noise04-fillingbottle-decay.wav", ",", "noise05-splashing-complex.wav", ",", "noise06-white-fade-elec.wav", ",", "noise07-white-water-fade.wav", ",", "phrase01-saxes-dcy.wav", ",", "phrase02-orchestral-comples.aif", ",", "pitch01-A-Low-clarinet.wav", ",", "pitch02-gliss-delicate-atkdcy2.wav", ",", "pitch03-gliss-delicate-atkdcy.wav", ",", "pitch04-Bb-mid-atkdcy-.wav", ",", "pitch05-Bb-mid-atkdcy-clear.wav", ",", "pitch06-Bb-mid-bowedstrng-swell.wav", ",", "pitch07-Bb-mid-bowedstrng1-swell.wav", ",", "pitch08-C-atkdcy-harpsichord-mid.wav", ",", "pitch09-D-low-piano.wav", ",", "pitch10-D-piano-mid.wav", ",", "pitch11-F-mid-bowedstrng-atckdcy.wav", ",", "pitch12-G-low-bowedstrng-swell.wav", ",", "pitch13-human-glissando.wav", ",", "pitch14-human-phrase-gliss.wav", ",", "pitch15-low-thick-swell.wav", ",", "pitch16-metal-high-atkdcy.wav", ",", "pitch17-noise-Harp-low-dull.wav", ",", "pitch18-noise-Harp-low-dull2.wav", ",", "pitch19-noise-Harp-mid-dull.wav", ",", "pitch20-piano-high-atkdcy.wav", ",", "pitch21-D-mid-wood.wav" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 98.0, 356.0, 272.0, 22.0 ],
                    "prefix": "Package:/CNMAT MMJ Depot 2.0/media/Audio/mixing_sounds/"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "obj-5",
                    "linecount": 5,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 104.5, 191.0, 632.0, 85.0 ],
                    "text": "PART 2:  reconfigure the spat5 objects to accommodate 8 sources and 8 speakers.\nCreate an 8 channel mix piece using sounds selected from the soundfiles listed in the menu below \n(note: you must have the CNMAT Depot installed properly for sounds to load). OPTION: If you want to create your two new presets PART 1 for your 8-channel spat, then you can just submit one file with both parts -- otherwise submit two max patches."
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "obj-4",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 104.5, 133.0, 530.0, 38.0 ],
                    "text": "PART 1:  Create two new presets using the model shown in p preset-settings-DUMP\nusing the 00_EC_SPAT5_1v_BASIC-tut.maxpat"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "obj-1",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 114.0, 47.0, 605.0, 53.0 ],
                    "text": "Begin with the patch 00_EC_SPAT5_1v_BASIC-tut.maxpat\n found in the Music 158A GitHub repository in the folder _158a2026_ClassPatches/1006_IRCAM_SPAT5-tutorials"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "obj-2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 67.0, 11.0, 605.0, 22.0 ],
                    "text": "Homework #3:  IRCAM SPAT 5  Spatial Audio"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-45", 0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-45", 0 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 1 ],
                    "order": 0,
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "order": 1,
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "midpoints": [ 186.5, 470.765625, 108.5, 470.765625 ],
                    "source": [ "obj-31", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 1 ],
                    "source": [ "obj-45", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 1 ],
                    "source": [ "obj-45", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-45", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "source": [ "obj-9", 1 ]
                }
            }
        ],
        "parameters": {
            "obj-25": [ "live.gain~", "live.gain~", 0 ],
            "obj-8": [ "live.gain~[1]", "live.gain~", 0 ],
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