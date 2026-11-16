{
	"patcher": {
		"fileversion": 1,
		"appversion": {
			"major": 9,
			"minor": 1,
			"revision": 0,
			"architecture": "x64",
			"modernui": 1
		},
		"classnamespace": "box",
		"gridsize": [
			15.0,
			15.0
		],
		"assistshowspatchername": 0,
		"commentary": "",
		"showcommentary": 0,
		"parameters": {
			"obj-18": [
				"shift",
				"shift",
				0
			],
			"obj-20": [
				"mix",
				"mix",
				0
			],
			"obj-22": [
				"window",
				"window",
				0
			],
			"obj-24": [
				"wide",
				"wide",
				0
			],
			"obj-25": [
				"final_output_gain",
				"FX gain",
				0
			],
			"obj-28": [
				"dry reference gain",
				"dry gain",
				0
			],
			"parameterbanks": {
				"0": {
					"index": 0,
					"name": "",
					"parameters": [
						"-",
						"-",
						"-",
						"-",
						"-",
						"-",
						"-",
						"-"
					]
				}
			},
			"inherited_shortname": 1
		},
		"autosave": 0,
		"rect": [
			37,
			288,
			1239,
			592
		],
		"boxes": [
			{
				"box": {
					"id": "hdr_title",
					"maxclass": "comment",
					"text": "abl.device.drift~",
					"fontsize": 22,
					"fontface": 1,
					"patching_rect": [
						24,
						18,
						366,
						31
					]
				}
			},
			{
				"box": {
					"id": "hdr_sub",
					"maxclass": "comment",
					"text": "Drift synthesizer",
					"fontsize": 13,
					"fontface": 1,
					"patching_rect": [
						24,
						50,
						350,
						21
					]
				}
			},
			{
				"box": {
					"id": "hdr_desc",
					"maxclass": "comment",
					"text": "A complete polyphonic synthesizer voice based on Ableton Live Drift; it generates audio rather than processing an incoming audio signal.",
					"fontsize": 11,
					"patching_rect": [
						396,
						18,
						520,
						45
					]
				}
			},
			{
				"box": {
					"angle": 270,
					"background": 1,
					"grad1": [
						0.964705882352941,
						0.701960784313725,
						0.701960784313725,
						1
					],
					"grad2": [
						0.2,
						0.2,
						0.2,
						1
					],
					"id": "ex_panel",
					"maxclass": "panel",
					"mode": 1,
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						8,
						103,
						500,
						352
					],
					"proportion": 0.5,
					"bgcolor": [
						0.8509803921568627,
						0.7803921568627451,
						0.6666666666666666,
						1
					]
				}
			},
			{
				"box": {
					"fontface": 1,
					"fontsize": 13,
					"id": "ex_label",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						25,
						109,
						71,
						21
					],
					"text": "EXAMPLE"
				}
			},
			{
				"box": {
					"id": "src_label",
					"maxclass": "comment",
					"text": "SOURCE",
					"fontface": 1,
					"fontsize": 10,
					"patching_rect": [
						32.5,
						136,
						56,
						18
					]
				}
			},
			{
				"box": {
					"id": "src_menu",
					"maxclass": "umenu",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"int",
						"",
						""
					],
					"items": [
						"Noise",
						",",
						"drumLoop.aif",
						",",
						"MUTED"
					],
					"parameter_enable": 0,
					"patching_rect": [
						92,
						134,
						108,
						22
					],
					"hint": "Select Noise (1), drumLoop.aif (2), or MUTED (3). MUTED is the default."
				}
			},
			{
				"box": {
					"id": "src_noise",
					"maxclass": "newobj",
					"text": "noise~",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						109.66666666666667,
						162,
						51,
						22
					]
				}
			},
			{
				"box": {
					"id": "src_noise_label",
					"maxclass": "comment",
					"text": "Noise",
					"fontsize": 9.5,
					"patching_rect": [
						73.5,
						164.5,
						33,
						17
					]
				}
			},
			{
				"box": {
					"channelcount": 1,
					"clipheight": 24,
					"data": {
						"clips": [
							{
								"absolutepath": "drumLoop.aif",
								"filename": "drumLoop.aif",
								"filekind": "audiofile",
								"id": "drumloop_single",
								"loop": 0,
								"content_state": {
									"loop": 0
								}
							}
						]
					},
					"hint": "Shared demo soundfile: drumLoop.aif",
					"id": "src_playlist",
					"maxclass": "playlist~",
					"mode": "basic",
					"numinlets": 1,
					"numoutlets": 4,
					"outlettype": [
						"signal",
						"signal",
						"",
						"dictionary"
					],
					"parameter_enable": 0,
					"patching_rect": [
						220,
						126,
						212,
						24
					],
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
					},
					"presentation_rect": [
						220,
						126,
						212,
						24
					],
					"loop": 0
				}
			},
			{
				"box": {
					"fontsize": 9.5,
					"id": "src_drum_label",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						191,
						164.5,
						33,
						17
					],
					"text": "Drum"
				}
			},
			{
				"box": {
					"id": "src_selector",
					"maxclass": "newobj",
					"text": "selector~ 3",
					"numinlets": 4,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						92,
						192,
						72,
						22
					],
					"hint": "Selects Noise (1), drumLoop.aif (2), or the unconnected MUTED input (3)."
				}
			},
			{
				"box": {
					"id": "src_plusone",
					"maxclass": "newobj",
					"text": "+ 1",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"int"
					],
					"patching_rect": [
						170,
						192,
						36,
						22
					]
				}
			},
			{
				"box": {
					"id": "src_loadmenu",
					"maxclass": "newobj",
					"text": "loadmess 2",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						92,
						109,
						72,
						22
					],
					"hidden": 1
				}
			},
			{
				"box": {
					"id": "src_loadsel",
					"maxclass": "newobj",
					"text": "loadmess 3",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						17,
						188,
						72,
						22
					],
					"hidden": 1
				}
			},
			{
				"box": {
					"id": "x_obj",
					"maxclass": "newobj",
					"text": "abl.device.drift~",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"signal",
						"signal"
					],
					"patching_rect": [
						540,
						310,
						286,
						22
					],
					"varname": "abl_device_drift",
					"color": [
						0.8156862745098039,
						0.07058823529411765,
						0.07058823529411765,
						1.0
					],
					"textcolor": [
						0.8156862745098039,
						0.07058823529411765,
						0.07058823529411765,
						1.0
					],
					"hint": "Red object is the ABL supplier/target for parameter control and state recall."
				}
			},
			{
				"box": {
					"id": "open_msg",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						540,
						252,
						44,
						24
					],
					"text": "open",
					"fontsize": 14,
					"bgcolor": [
						0,
						1,
						0.945,
						1
					]
				}
			},
			{
				"box": {
					"fontface": 0,
					"fontsize": 10,
					"id": "open_comment",
					"linecount": 2,
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						590,
						255,
						118,
						20
					],
					"text": "open device controls"
				}
			},
			{
				"box": {
					"color": [
						0.055,
						0.247,
						0.702,
						1
					],
					"hint": "External signal input: send~ ABL_drift",
					"id": "ext_receive",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						540,
						282,
						210,
						22
					],
					"text": "receive~ ABL_drift_send"
				}
			},
			{
				"box": {
					"hint": "Final stereo output gain; initializes to -65 dB and remains mouse-adjustable.",
					"id": "fx_gain",
					"lastchannelcount": 0,
					"maxclass": "live.gain~",
					"numinlets": 2,
					"numoutlets": 5,
					"orientation": 1,
					"outlettype": [
						"signal",
						"signal",
						"",
						"float",
						"list"
					],
					"parameter_enable": 1,
					"patching_rect": [
						91,
						330,
						163,
						36
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_initial": [
								-65
							],
							"parameter_initial_enable": 1,
							"parameter_linknames": 1,
							"parameter_longname": "final_output_gain",
							"parameter_mmax": 6,
							"parameter_mmin": -70,
							"parameter_modmode": 2,
							"parameter_shortname": "final gain",
							"parameter_type": 0,
							"parameter_unitstyle": 4
						}
					},
					"showname": 0,
					"varname": "final_output_gain",
					"active": 1,
					"ignoreclick": 0
				}
			},
			{
				"box": {
					"fontface": 1,
					"fontsize": 10,
					"id": "fx_gain_label",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						103,
						310,
						125,
						18
					],
					"text": "FX OUTPUT GAIN"
				}
			},
			{
				"box": {
					"hint": "Final stereo output gain; initializes to -65 dB and remains mouse-adjustable.",
					"id": "dry_gain",
					"lastchannelcount": 0,
					"maxclass": "live.gain~",
					"numinlets": 2,
					"numoutlets": 5,
					"orientation": 1,
					"outlettype": [
						"signal",
						"signal",
						"",
						"float",
						"list"
					],
					"parameter_enable": 1,
					"patching_rect": [
						271,
						330,
						163,
						36
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_initial": [
								-65
							],
							"parameter_initial_enable": 1,
							"parameter_linknames": 1,
							"parameter_longname": "dry_output_gain",
							"parameter_mmax": 6,
							"parameter_mmin": -70,
							"parameter_modmode": 2,
							"parameter_shortname": "dry gain",
							"parameter_type": 0,
							"parameter_unitstyle": 4
						}
					},
					"showname": 0,
					"varname": "dry_output_gain"
				}
			},
			{
				"box": {
					"fontface": 1,
					"fontsize": 10,
					"id": "dry_gain_label",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						284,
						310,
						150,
						18
					],
					"text": "DRY Signal before effect"
				}
			},
			{
				"box": {
					"id": "dac",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 0,
					"patching_rect": [
						91,
						400,
						55,
						22
					],
					"text": "dac~ 1 2"
				}
			},
			{
				"box": {
					"hint": "Start DSP for this help patch window",
					"id": "startwindow",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						14,
						374,
						78,
						22
					],
					"text": "startwindow"
				}
			},
			{
				"box": {
					"hint": "Stop MSP audio processing",
					"id": "stopdsp",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						14,
						400,
						42,
						22
					],
					"text": "stop"
				}
			},
			{
				"box": {
					"id": "direct_params",
					"maxclass": "newobj",
					"text": "p generate random settings",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						840,
						310,
						155,
						22
					],
					"varname": "direct_parameter_messaging",
					"hint": "Double-click for exact ABL attribute tuning and native-range RANDOM SET.",
					"patcher": {
						"fileversion": 1,
						"appversion": {
							"major": 9,
							"minor": 0,
							"revision": 3,
							"architecture": "x64",
							"modernui": 1
						},
						"classnamespace": "box",
						"rect": [
							100,
							100,
							1160,
							670
						],
						"default_fontsize": 12,
						"default_fontface": 0,
						"default_fontname": "Arial",
						"gridonopen": 1,
						"gridsize": [
							15,
							15
						],
						"boxes": [
							{
								"box": {
									"id": "dpm_title",
									"maxclass": "comment",
									"text": "abl.device.drift~ \u2014 Direct_Parameter_Messaging / Dynamic Tuning",
									"fontsize": 18,
									"fontface": 1,
									"patching_rect": [
										24,
										18,
										900,
										28
									]
								}
							},
							{
								"box": {
									"id": "dpm_note1",
									"maxclass": "comment",
									"text": "Exact ABL attribute names are used. Change a number box \u2192 <attribute> $1 \u2192 exact selector reconstruction \u2192 the main ABL object.",
									"fontsize": 11,
									"patching_rect": [
										24,
										49,
										1050,
										18
									]
								}
							},
							{
								"box": {
									"id": "dpm_note2",
									"maxclass": "comment",
									"text": "RANDOM SET uses each attribute\u2019s native parameter binding (normalized rawfloat), so random values stay inside the ABL object\u2019s own range. Wet/mix and gain-like safety controls are excluded.",
									"fontsize": 11,
									"patching_rect": [
										24,
										68,
										1080,
										18
									]
								}
							},
							{
								"box": {
									"id": "dpm_out",
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										1110,
										96,
										24,
										24
									]
								}
							},
							{
								"box": {
									"id": "dpm_sync_label",
									"maxclass": "comment",
									"text": "SYNC:",
									"patching_rect": [
										24,
										99,
										55,
										18
									]
								}
							},
							{
								"box": {
									"id": "dpm_sync",
									"maxclass": "message",
									"text": "sync",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										80,
										96,
										52,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_in",
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										850,
										96,
										24,
										24
									],
									"comment": "RANDOM SET bang from parent EXAMPLE panel"
								}
							},
							{
								"box": {
									"id": "dpm_bang",
									"maxclass": "button",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										"bang"
									],
									"patching_rect": [
										880,
										96,
										24,
										24
									],
									"hint": "Randomize this ABL parameter set from inside Direct_Parameter_Messaging."
								}
							},
							{
								"box": {
									"id": "dpm_js",
									"maxclass": "newobj",
									"text": "js abl_help_randomizer.js voicemode:random voices:random legato:random unison:random stereospread:random glidetime:random drift:random modamt1:random modsrc1:random moddst1:random lfoamount:random lfofreq:random env1release:random env1sustain:random env1decay:random env1attack:random lpres:random lpfreq:random osc1type:random osc2type:random env2sustain:random osc1shape:random osc2gain:random osc1gain:random osc2detune:random osc2octave:random",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										910,
										96,
										190,
										22
									],
									"varname": "random_set_values_js"
								}
							},
							{
								"box": {
									"id": "dpm_val_0",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"patching_rect": [
										24,
										140,
										76,
										22
									],
									"varname": "display_voicemode"
								}
							},
							{
								"box": {
									"id": "dpm_msg_0",
									"maxclass": "message",
									"text": "voicemode $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										106,
										140,
										205,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_route_0",
									"maxclass": "newobj",
									"text": "route voicemode",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										106,
										164,
										120,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_pre_0",
									"maxclass": "newobj",
									"text": "prepend voicemode",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										230,
										164,
										132,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_cmt_0",
									"maxclass": "comment",
									"text": "ABL ATTRIBUTE \u2014 native bound range",
									"patching_rect": [
										318,
										142,
										258,
										18
									]
								}
							},
							{
								"box": {
									"id": "dpm_val_1",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"patching_rect": [
										24,
										174,
										76,
										22
									],
									"varname": "display_voices"
								}
							},
							{
								"box": {
									"id": "dpm_msg_1",
									"maxclass": "message",
									"text": "voices $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										106,
										174,
										205,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_route_1",
									"maxclass": "newobj",
									"text": "route voices",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										106,
										198,
										120,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_pre_1",
									"maxclass": "newobj",
									"text": "prepend voices",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										230,
										198,
										132,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_cmt_1",
									"maxclass": "comment",
									"text": "ABL ATTRIBUTE \u2014 native bound range",
									"patching_rect": [
										318,
										176,
										258,
										18
									]
								}
							},
							{
								"box": {
									"id": "dpm_val_2",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"patching_rect": [
										24,
										208,
										76,
										22
									],
									"varname": "display_legato"
								}
							},
							{
								"box": {
									"id": "dpm_msg_2",
									"maxclass": "message",
									"text": "legato $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										106,
										208,
										205,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_route_2",
									"maxclass": "newobj",
									"text": "route legato",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										106,
										232,
										120,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_pre_2",
									"maxclass": "newobj",
									"text": "prepend legato",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										230,
										232,
										132,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_cmt_2",
									"maxclass": "comment",
									"text": "ABL ATTRIBUTE \u2014 native bound range",
									"patching_rect": [
										318,
										210,
										258,
										18
									]
								}
							},
							{
								"box": {
									"id": "dpm_val_3",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"patching_rect": [
										24,
										242,
										76,
										22
									],
									"varname": "display_unison"
								}
							},
							{
								"box": {
									"id": "dpm_msg_3",
									"maxclass": "message",
									"text": "unison $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										106,
										242,
										205,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_route_3",
									"maxclass": "newobj",
									"text": "route unison",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										106,
										266,
										120,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_pre_3",
									"maxclass": "newobj",
									"text": "prepend unison",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										230,
										266,
										132,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_cmt_3",
									"maxclass": "comment",
									"text": "ABL ATTRIBUTE \u2014 native bound range",
									"patching_rect": [
										318,
										244,
										258,
										18
									]
								}
							},
							{
								"box": {
									"id": "dpm_val_4",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"patching_rect": [
										24,
										276,
										76,
										22
									],
									"varname": "display_stereospread"
								}
							},
							{
								"box": {
									"id": "dpm_msg_4",
									"maxclass": "message",
									"text": "stereospread $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										106,
										276,
										205,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_route_4",
									"maxclass": "newobj",
									"text": "route stereospread",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										106,
										300,
										120,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_pre_4",
									"maxclass": "newobj",
									"text": "prepend stereospread",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										230,
										300,
										132,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_cmt_4",
									"maxclass": "comment",
									"text": "ABL ATTRIBUTE \u2014 native bound range",
									"patching_rect": [
										318,
										278,
										258,
										18
									]
								}
							},
							{
								"box": {
									"id": "dpm_val_5",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"patching_rect": [
										24,
										310,
										76,
										22
									],
									"varname": "display_glidetime"
								}
							},
							{
								"box": {
									"id": "dpm_msg_5",
									"maxclass": "message",
									"text": "glidetime $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										106,
										310,
										205,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_route_5",
									"maxclass": "newobj",
									"text": "route glidetime",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										106,
										334,
										120,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_pre_5",
									"maxclass": "newobj",
									"text": "prepend glidetime",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										230,
										334,
										132,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_cmt_5",
									"maxclass": "comment",
									"text": "ABL ATTRIBUTE \u2014 native bound range",
									"patching_rect": [
										318,
										312,
										258,
										18
									]
								}
							},
							{
								"box": {
									"id": "dpm_val_6",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"patching_rect": [
										24,
										344,
										76,
										22
									],
									"varname": "display_drift"
								}
							},
							{
								"box": {
									"id": "dpm_msg_6",
									"maxclass": "message",
									"text": "drift $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										106,
										344,
										205,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_route_6",
									"maxclass": "newobj",
									"text": "route drift",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										106,
										368,
										120,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_pre_6",
									"maxclass": "newobj",
									"text": "prepend drift",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										230,
										368,
										132,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_cmt_6",
									"maxclass": "comment",
									"text": "ABL ATTRIBUTE \u2014 native bound range",
									"patching_rect": [
										318,
										346,
										258,
										18
									]
								}
							},
							{
								"box": {
									"id": "dpm_val_7",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"patching_rect": [
										24,
										378,
										76,
										22
									],
									"varname": "display_modamt1"
								}
							},
							{
								"box": {
									"id": "dpm_msg_7",
									"maxclass": "message",
									"text": "modamt1 $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										106,
										378,
										205,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_route_7",
									"maxclass": "newobj",
									"text": "route modamt1",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										106,
										402,
										120,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_pre_7",
									"maxclass": "newobj",
									"text": "prepend modamt1",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										230,
										402,
										132,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_cmt_7",
									"maxclass": "comment",
									"text": "ABL ATTRIBUTE \u2014 native bound range",
									"patching_rect": [
										318,
										380,
										258,
										18
									]
								}
							},
							{
								"box": {
									"id": "dpm_val_8",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"patching_rect": [
										24,
										412,
										76,
										22
									],
									"varname": "display_modsrc1"
								}
							},
							{
								"box": {
									"id": "dpm_msg_8",
									"maxclass": "message",
									"text": "modsrc1 $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										106,
										412,
										205,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_route_8",
									"maxclass": "newobj",
									"text": "route modsrc1",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										106,
										436,
										120,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_pre_8",
									"maxclass": "newobj",
									"text": "prepend modsrc1",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										230,
										436,
										132,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_cmt_8",
									"maxclass": "comment",
									"text": "ABL ATTRIBUTE \u2014 native bound range",
									"patching_rect": [
										318,
										414,
										258,
										18
									]
								}
							},
							{
								"box": {
									"id": "dpm_val_9",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"patching_rect": [
										24,
										446,
										76,
										22
									],
									"varname": "display_moddst1"
								}
							},
							{
								"box": {
									"id": "dpm_msg_9",
									"maxclass": "message",
									"text": "moddst1 $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										106,
										446,
										205,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_route_9",
									"maxclass": "newobj",
									"text": "route moddst1",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										106,
										470,
										120,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_pre_9",
									"maxclass": "newobj",
									"text": "prepend moddst1",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										230,
										470,
										132,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_cmt_9",
									"maxclass": "comment",
									"text": "ABL ATTRIBUTE \u2014 native bound range",
									"patching_rect": [
										318,
										448,
										258,
										18
									]
								}
							},
							{
								"box": {
									"id": "dpm_val_10",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"patching_rect": [
										24,
										480,
										76,
										22
									],
									"varname": "display_lfoamount"
								}
							},
							{
								"box": {
									"id": "dpm_msg_10",
									"maxclass": "message",
									"text": "lfoamount $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										106,
										480,
										205,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_route_10",
									"maxclass": "newobj",
									"text": "route lfoamount",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										106,
										504,
										120,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_pre_10",
									"maxclass": "newobj",
									"text": "prepend lfoamount",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										230,
										504,
										132,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_cmt_10",
									"maxclass": "comment",
									"text": "ABL ATTRIBUTE \u2014 native bound range",
									"patching_rect": [
										318,
										482,
										258,
										18
									]
								}
							},
							{
								"box": {
									"id": "dpm_val_11",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"patching_rect": [
										24,
										514,
										76,
										22
									],
									"varname": "display_lfofreq"
								}
							},
							{
								"box": {
									"id": "dpm_msg_11",
									"maxclass": "message",
									"text": "lfofreq $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										106,
										514,
										205,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_route_11",
									"maxclass": "newobj",
									"text": "route lfofreq",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										106,
										538,
										120,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_pre_11",
									"maxclass": "newobj",
									"text": "prepend lfofreq",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										230,
										538,
										132,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_cmt_11",
									"maxclass": "comment",
									"text": "ABL ATTRIBUTE \u2014 native bound range",
									"patching_rect": [
										318,
										516,
										258,
										18
									]
								}
							},
							{
								"box": {
									"id": "dpm_val_12",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"patching_rect": [
										24,
										548,
										76,
										22
									],
									"varname": "display_env1release"
								}
							},
							{
								"box": {
									"id": "dpm_msg_12",
									"maxclass": "message",
									"text": "env1release $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										106,
										548,
										205,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_route_12",
									"maxclass": "newobj",
									"text": "route env1release",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										106,
										572,
										120,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_pre_12",
									"maxclass": "newobj",
									"text": "prepend env1release",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										230,
										572,
										132,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_cmt_12",
									"maxclass": "comment",
									"text": "ABL ATTRIBUTE \u2014 native bound range",
									"patching_rect": [
										318,
										550,
										258,
										18
									]
								}
							},
							{
								"box": {
									"id": "dpm_val_13",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"patching_rect": [
										582,
										140,
										76,
										22
									],
									"varname": "display_env1sustain"
								}
							},
							{
								"box": {
									"id": "dpm_msg_13",
									"maxclass": "message",
									"text": "env1sustain $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										664,
										140,
										205,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_route_13",
									"maxclass": "newobj",
									"text": "route env1sustain",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										664,
										164,
										120,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_pre_13",
									"maxclass": "newobj",
									"text": "prepend env1sustain",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										788,
										164,
										132,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_cmt_13",
									"maxclass": "comment",
									"text": "ABL ATTRIBUTE \u2014 native bound range",
									"patching_rect": [
										876,
										142,
										258,
										18
									]
								}
							},
							{
								"box": {
									"id": "dpm_val_14",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"patching_rect": [
										582,
										174,
										76,
										22
									],
									"varname": "display_env1decay"
								}
							},
							{
								"box": {
									"id": "dpm_msg_14",
									"maxclass": "message",
									"text": "env1decay $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										664,
										174,
										205,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_route_14",
									"maxclass": "newobj",
									"text": "route env1decay",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										664,
										198,
										120,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_pre_14",
									"maxclass": "newobj",
									"text": "prepend env1decay",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										788,
										198,
										132,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_cmt_14",
									"maxclass": "comment",
									"text": "ABL ATTRIBUTE \u2014 native bound range",
									"patching_rect": [
										876,
										176,
										258,
										18
									]
								}
							},
							{
								"box": {
									"id": "dpm_val_15",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"patching_rect": [
										582,
										208,
										76,
										22
									],
									"varname": "display_env1attack"
								}
							},
							{
								"box": {
									"id": "dpm_msg_15",
									"maxclass": "message",
									"text": "env1attack $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										664,
										208,
										205,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_route_15",
									"maxclass": "newobj",
									"text": "route env1attack",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										664,
										232,
										120,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_pre_15",
									"maxclass": "newobj",
									"text": "prepend env1attack",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										788,
										232,
										132,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_cmt_15",
									"maxclass": "comment",
									"text": "ABL ATTRIBUTE \u2014 native bound range",
									"patching_rect": [
										876,
										210,
										258,
										18
									]
								}
							},
							{
								"box": {
									"id": "dpm_val_16",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"patching_rect": [
										582,
										242,
										76,
										22
									],
									"varname": "display_lpres"
								}
							},
							{
								"box": {
									"id": "dpm_msg_16",
									"maxclass": "message",
									"text": "lpres $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										664,
										242,
										205,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_route_16",
									"maxclass": "newobj",
									"text": "route lpres",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										664,
										266,
										120,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_pre_16",
									"maxclass": "newobj",
									"text": "prepend lpres",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										788,
										266,
										132,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_cmt_16",
									"maxclass": "comment",
									"text": "ABL ATTRIBUTE \u2014 native bound range",
									"patching_rect": [
										876,
										244,
										258,
										18
									]
								}
							},
							{
								"box": {
									"id": "dpm_val_17",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"patching_rect": [
										582,
										276,
										76,
										22
									],
									"varname": "display_lpfreq"
								}
							},
							{
								"box": {
									"id": "dpm_msg_17",
									"maxclass": "message",
									"text": "lpfreq $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										664,
										276,
										205,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_route_17",
									"maxclass": "newobj",
									"text": "route lpfreq",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										664,
										300,
										120,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_pre_17",
									"maxclass": "newobj",
									"text": "prepend lpfreq",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										788,
										300,
										132,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_cmt_17",
									"maxclass": "comment",
									"text": "ABL ATTRIBUTE \u2014 native bound range",
									"patching_rect": [
										876,
										278,
										258,
										18
									]
								}
							},
							{
								"box": {
									"id": "dpm_val_18",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"patching_rect": [
										582,
										310,
										76,
										22
									],
									"varname": "display_osc1type"
								}
							},
							{
								"box": {
									"id": "dpm_msg_18",
									"maxclass": "message",
									"text": "osc1type $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										664,
										310,
										205,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_route_18",
									"maxclass": "newobj",
									"text": "route osc1type",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										664,
										334,
										120,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_pre_18",
									"maxclass": "newobj",
									"text": "prepend osc1type",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										788,
										334,
										132,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_cmt_18",
									"maxclass": "comment",
									"text": "ABL ATTRIBUTE \u2014 native bound range",
									"patching_rect": [
										876,
										312,
										258,
										18
									]
								}
							},
							{
								"box": {
									"id": "dpm_val_19",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"patching_rect": [
										582,
										344,
										76,
										22
									],
									"varname": "display_osc2type"
								}
							},
							{
								"box": {
									"id": "dpm_msg_19",
									"maxclass": "message",
									"text": "osc2type $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										664,
										344,
										205,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_route_19",
									"maxclass": "newobj",
									"text": "route osc2type",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										664,
										368,
										120,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_pre_19",
									"maxclass": "newobj",
									"text": "prepend osc2type",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										788,
										368,
										132,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_cmt_19",
									"maxclass": "comment",
									"text": "ABL ATTRIBUTE \u2014 native bound range",
									"patching_rect": [
										876,
										346,
										258,
										18
									]
								}
							},
							{
								"box": {
									"id": "dpm_val_20",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"patching_rect": [
										582,
										378,
										76,
										22
									],
									"varname": "display_env2sustain"
								}
							},
							{
								"box": {
									"id": "dpm_msg_20",
									"maxclass": "message",
									"text": "env2sustain $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										664,
										378,
										205,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_route_20",
									"maxclass": "newobj",
									"text": "route env2sustain",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										664,
										402,
										120,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_pre_20",
									"maxclass": "newobj",
									"text": "prepend env2sustain",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										788,
										402,
										132,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_cmt_20",
									"maxclass": "comment",
									"text": "ABL ATTRIBUTE \u2014 native bound range",
									"patching_rect": [
										876,
										380,
										258,
										18
									]
								}
							},
							{
								"box": {
									"id": "dpm_val_21",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"patching_rect": [
										582,
										412,
										76,
										22
									],
									"varname": "display_osc1shape"
								}
							},
							{
								"box": {
									"id": "dpm_msg_21",
									"maxclass": "message",
									"text": "osc1shape $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										664,
										412,
										205,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_route_21",
									"maxclass": "newobj",
									"text": "route osc1shape",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										664,
										436,
										120,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_pre_21",
									"maxclass": "newobj",
									"text": "prepend osc1shape",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										788,
										436,
										132,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_cmt_21",
									"maxclass": "comment",
									"text": "ABL ATTRIBUTE \u2014 native bound range",
									"patching_rect": [
										876,
										414,
										258,
										18
									]
								}
							},
							{
								"box": {
									"id": "dpm_val_22",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"patching_rect": [
										582,
										446,
										76,
										22
									],
									"varname": "display_osc2gain"
								}
							},
							{
								"box": {
									"id": "dpm_msg_22",
									"maxclass": "message",
									"text": "osc2gain $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										664,
										446,
										205,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_route_22",
									"maxclass": "newobj",
									"text": "route osc2gain",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										664,
										470,
										120,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_pre_22",
									"maxclass": "newobj",
									"text": "prepend osc2gain",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										788,
										470,
										132,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_cmt_22",
									"maxclass": "comment",
									"text": "ABL ATTRIBUTE \u2014 native bound range",
									"patching_rect": [
										876,
										448,
										258,
										18
									]
								}
							},
							{
								"box": {
									"id": "dpm_val_23",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"patching_rect": [
										582,
										480,
										76,
										22
									],
									"varname": "display_osc1gain"
								}
							},
							{
								"box": {
									"id": "dpm_msg_23",
									"maxclass": "message",
									"text": "osc1gain $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										664,
										480,
										205,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_route_23",
									"maxclass": "newobj",
									"text": "route osc1gain",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										664,
										504,
										120,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_pre_23",
									"maxclass": "newobj",
									"text": "prepend osc1gain",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										788,
										504,
										132,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_cmt_23",
									"maxclass": "comment",
									"text": "ABL ATTRIBUTE \u2014 native bound range",
									"patching_rect": [
										876,
										482,
										258,
										18
									]
								}
							},
							{
								"box": {
									"id": "dpm_val_24",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"patching_rect": [
										582,
										514,
										76,
										22
									],
									"varname": "display_osc2detune"
								}
							},
							{
								"box": {
									"id": "dpm_msg_24",
									"maxclass": "message",
									"text": "osc2detune $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										664,
										514,
										205,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_route_24",
									"maxclass": "newobj",
									"text": "route osc2detune",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										664,
										538,
										120,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_pre_24",
									"maxclass": "newobj",
									"text": "prepend osc2detune",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										788,
										538,
										132,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_cmt_24",
									"maxclass": "comment",
									"text": "ABL ATTRIBUTE \u2014 native bound range",
									"patching_rect": [
										876,
										516,
										258,
										18
									]
								}
							},
							{
								"box": {
									"id": "dpm_val_25",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"patching_rect": [
										582,
										548,
										76,
										22
									],
									"varname": "display_osc2octave"
								}
							},
							{
								"box": {
									"id": "dpm_msg_25",
									"maxclass": "message",
									"text": "osc2octave $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										664,
										548,
										205,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_route_25",
									"maxclass": "newobj",
									"text": "route osc2octave",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										664,
										572,
										120,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_pre_25",
									"maxclass": "newobj",
									"text": "prepend osc2octave",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										788,
										572,
										132,
										22
									]
								}
							},
							{
								"box": {
									"id": "dpm_cmt_25",
									"maxclass": "comment",
									"text": "ABL ATTRIBUTE \u2014 native bound range",
									"patching_rect": [
										876,
										550,
										258,
										18
									]
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"source": [
										"dpm_in",
										0
									],
									"destination": [
										"dpm_bang",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_bang",
										0
									],
									"destination": [
										"dpm_js",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_sync",
										0
									],
									"destination": [
										"dpm_js",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_js",
										0
									],
									"destination": [
										"dpm_out",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_val_0",
										0
									],
									"destination": [
										"dpm_msg_0",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_msg_0",
										0
									],
									"destination": [
										"dpm_route_0",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_route_0",
										0
									],
									"destination": [
										"dpm_pre_0",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_pre_0",
										0
									],
									"destination": [
										"dpm_out",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_val_1",
										0
									],
									"destination": [
										"dpm_msg_1",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_msg_1",
										0
									],
									"destination": [
										"dpm_route_1",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_route_1",
										0
									],
									"destination": [
										"dpm_pre_1",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_pre_1",
										0
									],
									"destination": [
										"dpm_out",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_val_2",
										0
									],
									"destination": [
										"dpm_msg_2",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_msg_2",
										0
									],
									"destination": [
										"dpm_route_2",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_route_2",
										0
									],
									"destination": [
										"dpm_pre_2",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_pre_2",
										0
									],
									"destination": [
										"dpm_out",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_val_3",
										0
									],
									"destination": [
										"dpm_msg_3",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_msg_3",
										0
									],
									"destination": [
										"dpm_route_3",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_route_3",
										0
									],
									"destination": [
										"dpm_pre_3",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_pre_3",
										0
									],
									"destination": [
										"dpm_out",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_val_4",
										0
									],
									"destination": [
										"dpm_msg_4",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_msg_4",
										0
									],
									"destination": [
										"dpm_route_4",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_route_4",
										0
									],
									"destination": [
										"dpm_pre_4",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_pre_4",
										0
									],
									"destination": [
										"dpm_out",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_val_5",
										0
									],
									"destination": [
										"dpm_msg_5",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_msg_5",
										0
									],
									"destination": [
										"dpm_route_5",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_route_5",
										0
									],
									"destination": [
										"dpm_pre_5",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_pre_5",
										0
									],
									"destination": [
										"dpm_out",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_val_6",
										0
									],
									"destination": [
										"dpm_msg_6",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_msg_6",
										0
									],
									"destination": [
										"dpm_route_6",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_route_6",
										0
									],
									"destination": [
										"dpm_pre_6",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_pre_6",
										0
									],
									"destination": [
										"dpm_out",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_val_7",
										0
									],
									"destination": [
										"dpm_msg_7",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_msg_7",
										0
									],
									"destination": [
										"dpm_route_7",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_route_7",
										0
									],
									"destination": [
										"dpm_pre_7",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_pre_7",
										0
									],
									"destination": [
										"dpm_out",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_val_8",
										0
									],
									"destination": [
										"dpm_msg_8",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_msg_8",
										0
									],
									"destination": [
										"dpm_route_8",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_route_8",
										0
									],
									"destination": [
										"dpm_pre_8",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_pre_8",
										0
									],
									"destination": [
										"dpm_out",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_val_9",
										0
									],
									"destination": [
										"dpm_msg_9",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_msg_9",
										0
									],
									"destination": [
										"dpm_route_9",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_route_9",
										0
									],
									"destination": [
										"dpm_pre_9",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_pre_9",
										0
									],
									"destination": [
										"dpm_out",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_val_10",
										0
									],
									"destination": [
										"dpm_msg_10",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_msg_10",
										0
									],
									"destination": [
										"dpm_route_10",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_route_10",
										0
									],
									"destination": [
										"dpm_pre_10",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_pre_10",
										0
									],
									"destination": [
										"dpm_out",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_val_11",
										0
									],
									"destination": [
										"dpm_msg_11",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_msg_11",
										0
									],
									"destination": [
										"dpm_route_11",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_route_11",
										0
									],
									"destination": [
										"dpm_pre_11",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_pre_11",
										0
									],
									"destination": [
										"dpm_out",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_val_12",
										0
									],
									"destination": [
										"dpm_msg_12",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_msg_12",
										0
									],
									"destination": [
										"dpm_route_12",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_route_12",
										0
									],
									"destination": [
										"dpm_pre_12",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_pre_12",
										0
									],
									"destination": [
										"dpm_out",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_val_13",
										0
									],
									"destination": [
										"dpm_msg_13",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_msg_13",
										0
									],
									"destination": [
										"dpm_route_13",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_route_13",
										0
									],
									"destination": [
										"dpm_pre_13",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_pre_13",
										0
									],
									"destination": [
										"dpm_out",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_val_14",
										0
									],
									"destination": [
										"dpm_msg_14",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_msg_14",
										0
									],
									"destination": [
										"dpm_route_14",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_route_14",
										0
									],
									"destination": [
										"dpm_pre_14",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_pre_14",
										0
									],
									"destination": [
										"dpm_out",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_val_15",
										0
									],
									"destination": [
										"dpm_msg_15",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_msg_15",
										0
									],
									"destination": [
										"dpm_route_15",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_route_15",
										0
									],
									"destination": [
										"dpm_pre_15",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_pre_15",
										0
									],
									"destination": [
										"dpm_out",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_val_16",
										0
									],
									"destination": [
										"dpm_msg_16",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_msg_16",
										0
									],
									"destination": [
										"dpm_route_16",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_route_16",
										0
									],
									"destination": [
										"dpm_pre_16",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_pre_16",
										0
									],
									"destination": [
										"dpm_out",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_val_17",
										0
									],
									"destination": [
										"dpm_msg_17",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_msg_17",
										0
									],
									"destination": [
										"dpm_route_17",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_route_17",
										0
									],
									"destination": [
										"dpm_pre_17",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_pre_17",
										0
									],
									"destination": [
										"dpm_out",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_val_18",
										0
									],
									"destination": [
										"dpm_msg_18",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_msg_18",
										0
									],
									"destination": [
										"dpm_route_18",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_route_18",
										0
									],
									"destination": [
										"dpm_pre_18",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_pre_18",
										0
									],
									"destination": [
										"dpm_out",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_val_19",
										0
									],
									"destination": [
										"dpm_msg_19",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_msg_19",
										0
									],
									"destination": [
										"dpm_route_19",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_route_19",
										0
									],
									"destination": [
										"dpm_pre_19",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_pre_19",
										0
									],
									"destination": [
										"dpm_out",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_val_20",
										0
									],
									"destination": [
										"dpm_msg_20",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_msg_20",
										0
									],
									"destination": [
										"dpm_route_20",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_route_20",
										0
									],
									"destination": [
										"dpm_pre_20",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_pre_20",
										0
									],
									"destination": [
										"dpm_out",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_val_21",
										0
									],
									"destination": [
										"dpm_msg_21",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_msg_21",
										0
									],
									"destination": [
										"dpm_route_21",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_route_21",
										0
									],
									"destination": [
										"dpm_pre_21",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_pre_21",
										0
									],
									"destination": [
										"dpm_out",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_val_22",
										0
									],
									"destination": [
										"dpm_msg_22",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_msg_22",
										0
									],
									"destination": [
										"dpm_route_22",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_route_22",
										0
									],
									"destination": [
										"dpm_pre_22",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_pre_22",
										0
									],
									"destination": [
										"dpm_out",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_val_23",
										0
									],
									"destination": [
										"dpm_msg_23",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_msg_23",
										0
									],
									"destination": [
										"dpm_route_23",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_route_23",
										0
									],
									"destination": [
										"dpm_pre_23",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_pre_23",
										0
									],
									"destination": [
										"dpm_out",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_val_24",
										0
									],
									"destination": [
										"dpm_msg_24",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_msg_24",
										0
									],
									"destination": [
										"dpm_route_24",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_route_24",
										0
									],
									"destination": [
										"dpm_pre_24",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_pre_24",
										0
									],
									"destination": [
										"dpm_out",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_val_25",
										0
									],
									"destination": [
										"dpm_msg_25",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_msg_25",
										0
									],
									"destination": [
										"dpm_route_25",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_route_25",
										0
									],
									"destination": [
										"dpm_pre_25",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"dpm_pre_25",
										0
									],
									"destination": [
										"dpm_out",
										0
									],
									"hidden": 1
								}
							}
						]
					}
				}
			},
			{
				"box": {
					"hint": "Randomize all eligible ABL parameters. Wet/mix and gain-like safety controls remain fixed.",
					"id": "random_bang",
					"maxclass": "button",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"bang"
					],
					"parameter_enable": 0,
					"patching_rect": [
						1005,
						282,
						22,
						22
					]
				}
			},
			{
				"box": {
					"fontface": 1,
					"fontsize": 9.5,
					"id": "random_label",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						995,
						260,
						80,
						18
					],
					"text": "RANDOM SET"
				}
			},
			{
				"box": {
					"id": "dump_button",
					"maxclass": "button",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"bang"
					],
					"patching_rect": [
						1080,
						110,
						22,
						22
					],
					"varname": "fx_preset_dump_button",
					"hint": "Capture the complete ABL parameter state plus FX output gain."
				}
			},
			{
				"box": {
					"id": "dump_label",
					"maxclass": "comment",
					"text": "DUMP ABL SETTINGS",
					"fontface": 1,
					"fontsize": 10,
					"patching_rect": [
						955,
						112,
						120,
						18
					],
					"varname": "fx_preset_dump_label"
				}
			},
			{
				"box": {
					"id": "working_preset",
					"maxclass": "message",
					"text": "",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"fontsize": 9,
					"patching_rect": [
						542,
						167,
						500,
						79
					],
					"varname": "fx_preset_recall",
					"hint": "Complete comma-separated ABL state. DUMP ABL SETTINGS captures all bound attributes plus Final_Output_Gain. Click to recall.",
					"textjustification": 0,
					"linecount": 7,
					"bgcolor": [
						0.29411764705882354,
						0.6313725490196078,
						0.5372549019607843,
						1
					]
				}
			},
			{
				"box": {
					"id": "working_label",
					"maxclass": "comment",
					"text": "FULL ABL + FX OUTPUT-GAIN PRESET \u2014 click to recall",
					"fontsize": 9,
					"patching_rect": [
						955,
						140,
						190,
						18
					],
					"varname": "fx_preset_recall_label"
				}
			},
			{
				"box": {
					"id": "capture_js",
					"maxclass": "newobj",
					"text": "js abl_help_state_capture.js voicemode voices legato unison stereospread glidetime drift modamt1 modsrc1 moddst1 lfoamount lfofreq env1release env1sustain env1decay env1attack lpres lpfreq osc1type osc2type env2sustain osc1shape osc2gain osc1gain osc2detune osc2octave",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						""
					],
					"patching_rect": [
						538,
						214,
						420,
						22
					],
					"varname": "fx_preset_dump_js",
					"hidden": 1
				}
			},
			{
				"box": {
					"id": "capture_print",
					"maxclass": "newobj",
					"text": "print ABL_FULL_PRESET",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						605,
						238,
						160,
						22
					],
					"hidden": 1,
					"varname": "fx_preset_dump_monitor"
				}
			},
			{
				"box": {
					"id": "preset_menu",
					"maxclass": "umenu",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"int",
						"",
						""
					],
					"items": [
						"Preset 1",
						",",
						"Preset 2",
						",",
						"Preset 3",
						",",
						"Preset 4",
						",",
						"Preset 5",
						",",
						"Preset 6",
						",",
						"Preset 7",
						",",
						"Preset 8",
						",",
						"Preset 9",
						",",
						"Preset 10",
						",",
						"Preset 11",
						",",
						"Preset 12",
						",",
						"Preset 13",
						",",
						"Preset 14",
						",",
						"Preset 15",
						",",
						"Preset 16",
						",",
						"Preset 17",
						",",
						"Preset 18",
						",",
						"Preset 19",
						",",
						"Preset 20",
						",",
						"Preset 21",
						",",
						"Preset 22",
						",",
						"Preset 23",
						",",
						"Preset 24",
						",",
						"Choose Preset"
					],
					"parameter_enable": 0,
					"patching_rect": [
						605,
						86,
						150,
						24
					],
					"varname": "preset_slot_menu",
					"hint": "Choose and immediately recall preset 1\u201324. Choose Preset is the no-selection state.",
					"fontsize": 14
				}
			},
			{
				"box": {
					"id": "preset_plusone",
					"maxclass": "newobj",
					"text": "+ 1",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"int"
					],
					"patching_rect": [
						690,
						326,
						34,
						22
					],
					"hidden": 1,
					"varname": "preset_slot_plusone"
				}
			},
			{
				"box": {
					"id": "preset_store_int",
					"maxclass": "number",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"bang"
					],
					"minimum": 1,
					"maximum": 24,
					"parameter_enable": 0,
					"patching_rect": [
						875,
						86,
						45,
						22
					],
					"varname": "preset_store_slot_number"
				}
			},
			{
				"box": {
					"id": "preset_store_button",
					"maxclass": "button",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"bang"
					],
					"patching_rect": [
						925,
						86,
						22,
						22
					],
					"varname": "preset_store_button",
					"hint": "Store the current editable working preset in the selected slot.",
					"bgcolor": [
						1,
						0,
						0,
						1
					]
				}
			},
			{
				"box": {
					"id": "preset_store_label",
					"maxclass": "comment",
					"text": "STORE/OVERWRITE\nPRESET <num>",
					"fontface": 1,
					"fontsize": 10,
					"patching_rect": [
						760,
						83,
						112,
						29
					],
					"varname": "preset_store_label"
				}
			},
			{
				"box": {
					"id": "preset_store_prepend",
					"maxclass": "newobj",
					"text": "prepend store",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						730,
						350,
						86,
						22
					],
					"hidden": 1,
					"varname": "preset_store_prepend"
				}
			},
			{
				"box": {
					"id": "preset_recall_prepend",
					"maxclass": "newobj",
					"text": "prepend recall",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						820,
						350,
						90,
						22
					],
					"hidden": 1,
					"varname": "preset_recall_prepend"
				}
			},
			{
				"box": {
					"id": "preset_collection",
					"maxclass": "newobj",
					"text": "p PRESET STORAGE Dbl Clk to Open",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						530,
						137,
						420,
						22
					],
					"varname": "preset_collection",
					"hint": "Double-click to edit 24 stored ABL preset message boxes.",
					"patcher": {
						"fileversion": 1,
						"appversion": {
							"major": 9,
							"minor": 0,
							"revision": 3,
							"architecture": "x64",
							"modernui": 1
						},
						"classnamespace": "box",
						"rect": [
							120,
							120,
							1120,
							860
						],
						"default_fontsize": 12,
						"default_fontface": 0,
						"default_fontname": "Arial",
						"gridonopen": 1,
						"gridsize": [
							15,
							15
						],
						"boxes": [
							{
								"box": {
									"id": "obj-1",
									"maxclass": "comment",
									"text": "ABL Preset Collection \u2014 24 editable message presets",
									"fontsize": 18,
									"fontface": 1,
									"patching_rect": [
										24,
										18,
										690,
										28
									]
								}
							},
							{
								"box": {
									"id": "obj-2",
									"maxclass": "comment",
									"text": "STORE copies the large working preset into the selected slot. RECALL sends the selected slot to the Example ABL object and restores it to the working message box. External 'preset N' or OSC-style '/device/preset N' is routed above. PRESET 1 is refreshed from the factory/default state when this help file opens.",
									"fontsize": 11,
									"patching_rect": [
										25,
										49,
										1030,
										36
									]
								}
							},
							{
								"box": {
									"id": "obj-3",
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										24,
										94,
										24,
										24
									],
									"comment": "store N / recall N"
								}
							},
							{
								"box": {
									"id": "obj-4",
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										70,
										94,
										24,
										24
									],
									"comment": "working/slot message stream"
								}
							},
							{
								"box": {
									"id": "obj-5",
									"maxclass": "newobj",
									"text": "js abl_help_preset_bank.js",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										116,
										95,
										188,
										22
									]
								}
							},
							{
								"box": {
									"id": "obj-6",
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										326,
										94,
										24,
										24
									],
									"comment": "recalled parameter messages"
								}
							},
							{
								"box": {
									"id": "obj-7",
									"maxclass": "newobj",
									"text": "route preset /abl.device.drift/preset",
									"numinlets": 1,
									"numoutlets": 3,
									"outlettype": [
										"",
										"",
										""
									],
									"patching_rect": [
										382,
										92,
										238,
										22
									],
									"varname": "preset_osc_route"
								}
							},
							{
								"box": {
									"id": "obj-8",
									"maxclass": "message",
									"text": "recall $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										628,
										92,
										70,
										22
									],
									"varname": "preset_osc_recall_message",
									"hint": "Converts either routed preset number into an explicit recall N command."
								}
							},
							{
								"box": {
									"id": "obj-9",
									"maxclass": "comment",
									"text": "preset 1  OR  /abl.device.drift/preset 1  \u2192  [recall $1]  \u2192  stored slot",
									"fontsize": 9.5,
									"patching_rect": [
										100,
										150,
										68,
										18
									],
									"varname": "preset_route_comment"
								}
							},
							{
								"box": {
									"id": "obj-10",
									"maxclass": "comment",
									"text": "PRESET 1 \u2014 DEFAULT (AUTO)",
									"fontface": 1,
									"fontsize": 10,
									"patching_rect": [
										100,
										208,
										68,
										18
									]
								}
							},
							{
								"box": {
									"id": "obj-11",
									"maxclass": "message",
									"text": "",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 8.5,
									"patching_rect": [
										175,
										150,
										454,
										42
									],
									"varname": "preset_slot_1",
									"hint": "Preset 1: source AMXD explicit defaults, with recognized overall wet/dry controls forced to their declared maximum (100% wet). Parameters lacking an explicit source initial value are not invented.",
									"linecount": 4
								}
							},
							{
								"box": {
									"id": "obj-12",
									"maxclass": "comment",
									"text": "PRESET 2",
									"fontface": 1,
									"fontsize": 10,
									"patching_rect": [
										100,
										266,
										68,
										18
									]
								}
							},
							{
								"box": {
									"id": "obj-13",
									"maxclass": "message",
									"text": "",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 8.5,
									"patching_rect": [
										175,
										208,
										454,
										42
									],
									"varname": "preset_slot_2",
									"hint": "Editable stored AMXD preset slot 2. Click to audition directly.",
									"linecount": 4
								}
							},
							{
								"box": {
									"id": "obj-14",
									"maxclass": "comment",
									"text": "PRESET 3",
									"fontface": 1,
									"fontsize": 10,
									"patching_rect": [
										100,
										324,
										68,
										18
									]
								}
							},
							{
								"box": {
									"id": "obj-15",
									"maxclass": "message",
									"text": "",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 8.5,
									"patching_rect": [
										175,
										266,
										454,
										42
									],
									"varname": "preset_slot_3",
									"hint": "Editable stored AMXD preset slot 3. Click to audition directly.",
									"linecount": 4
								}
							},
							{
								"box": {
									"id": "obj-16",
									"maxclass": "comment",
									"text": "PRESET 4",
									"fontface": 1,
									"fontsize": 10,
									"patching_rect": [
										100,
										382,
										68,
										18
									]
								}
							},
							{
								"box": {
									"id": "obj-17",
									"maxclass": "message",
									"text": "",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 8.5,
									"patching_rect": [
										175,
										324,
										454,
										42
									],
									"varname": "preset_slot_4",
									"hint": "Editable stored AMXD preset slot 4. Click to audition directly.",
									"linecount": 4
								}
							},
							{
								"box": {
									"id": "obj-18",
									"maxclass": "comment",
									"text": "PRESET 5",
									"fontface": 1,
									"fontsize": 10,
									"patching_rect": [
										100,
										440,
										68,
										18
									]
								}
							},
							{
								"box": {
									"id": "obj-19",
									"maxclass": "message",
									"text": "",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 8.5,
									"patching_rect": [
										175,
										382,
										454,
										42
									],
									"varname": "preset_slot_5",
									"hint": "Editable stored AMXD preset slot 5. Click to audition directly.",
									"linecount": 4
								}
							},
							{
								"box": {
									"id": "obj-20",
									"maxclass": "comment",
									"text": "PRESET 6",
									"fontface": 1,
									"fontsize": 10,
									"patching_rect": [
										100,
										498,
										68,
										18
									]
								}
							},
							{
								"box": {
									"id": "obj-21",
									"maxclass": "message",
									"text": "",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 8.5,
									"patching_rect": [
										175,
										440,
										454,
										42
									],
									"varname": "preset_slot_6",
									"hint": "Editable stored AMXD preset slot 6. Click to audition directly.",
									"linecount": 4
								}
							},
							{
								"box": {
									"id": "obj-22",
									"maxclass": "comment",
									"text": "PRESET 7",
									"fontface": 1,
									"fontsize": 10,
									"patching_rect": [
										100,
										556,
										68,
										18
									]
								}
							},
							{
								"box": {
									"id": "obj-23",
									"maxclass": "message",
									"text": "",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 8.5,
									"patching_rect": [
										175,
										498,
										454,
										42
									],
									"varname": "preset_slot_7",
									"hint": "Editable stored AMXD preset slot 7. Click to audition directly.",
									"linecount": 4
								}
							},
							{
								"box": {
									"id": "obj-24",
									"maxclass": "comment",
									"text": "PRESET 8",
									"fontface": 1,
									"fontsize": 10,
									"patching_rect": [
										100,
										614,
										68,
										18
									]
								}
							},
							{
								"box": {
									"id": "obj-25",
									"maxclass": "message",
									"text": "",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 8.5,
									"patching_rect": [
										175,
										556,
										454,
										42
									],
									"varname": "preset_slot_8",
									"hint": "Editable stored AMXD preset slot 8. Click to audition directly.",
									"linecount": 4
								}
							},
							{
								"box": {
									"id": "obj-26",
									"maxclass": "comment",
									"text": "PRESET 9",
									"fontface": 1,
									"fontsize": 10,
									"patching_rect": [
										100,
										672,
										68,
										18
									]
								}
							},
							{
								"box": {
									"id": "obj-27",
									"maxclass": "message",
									"text": "",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 8.5,
									"patching_rect": [
										175,
										614,
										454,
										42
									],
									"varname": "preset_slot_9",
									"hint": "Editable stored AMXD preset slot 9. Click to audition directly.",
									"linecount": 4
								}
							},
							{
								"box": {
									"id": "obj-28",
									"maxclass": "comment",
									"text": "PRESET 10",
									"fontface": 1,
									"fontsize": 10,
									"patching_rect": [
										100,
										730,
										68,
										18
									]
								}
							},
							{
								"box": {
									"id": "obj-29",
									"maxclass": "message",
									"text": "",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 8.5,
									"patching_rect": [
										175,
										672,
										454,
										42
									],
									"varname": "preset_slot_10",
									"hint": "Editable stored AMXD preset slot 10. Click to audition directly.",
									"linecount": 4
								}
							},
							{
								"box": {
									"id": "obj-30",
									"maxclass": "comment",
									"text": "PRESET 11",
									"fontface": 1,
									"fontsize": 10,
									"patching_rect": [
										100,
										788,
										68,
										18
									]
								}
							},
							{
								"box": {
									"id": "obj-31",
									"maxclass": "message",
									"text": "",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 8.5,
									"patching_rect": [
										175,
										730,
										454,
										42
									],
									"varname": "preset_slot_11",
									"hint": "Editable stored AMXD preset slot 11. Click to audition directly.",
									"linecount": 4
								}
							},
							{
								"box": {
									"id": "obj-32",
									"maxclass": "comment",
									"text": "PRESET 12",
									"fontface": 1,
									"fontsize": 10,
									"patching_rect": [
										100,
										846,
										68,
										18
									]
								}
							},
							{
								"box": {
									"id": "obj-33",
									"maxclass": "message",
									"text": "",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 8.5,
									"patching_rect": [
										175,
										788,
										454,
										42
									],
									"varname": "preset_slot_12",
									"hint": "Editable stored AMXD preset slot 12. Click to audition directly.",
									"linecount": 4
								}
							},
							{
								"box": {
									"id": "obj-34",
									"maxclass": "comment",
									"text": "PRESET 13",
									"fontface": 1,
									"fontsize": 10,
									"patching_rect": [
										100,
										904,
										68,
										18
									]
								}
							},
							{
								"box": {
									"id": "obj-35",
									"maxclass": "message",
									"text": "",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 8.5,
									"patching_rect": [
										175,
										846,
										454,
										42
									],
									"varname": "preset_slot_13",
									"hint": "Editable stored AMXD preset slot 13. Click to audition directly.",
									"linecount": 4
								}
							},
							{
								"box": {
									"id": "obj-36",
									"maxclass": "comment",
									"text": "PRESET 14",
									"fontface": 1,
									"fontsize": 10,
									"patching_rect": [
										100,
										962,
										68,
										18
									]
								}
							},
							{
								"box": {
									"id": "obj-37",
									"maxclass": "message",
									"text": "",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 8.5,
									"patching_rect": [
										175,
										904,
										454,
										42
									],
									"varname": "preset_slot_14",
									"hint": "Editable stored AMXD preset slot 14. Click to audition directly.",
									"linecount": 4
								}
							},
							{
								"box": {
									"id": "obj-38",
									"maxclass": "comment",
									"text": "PRESET 15",
									"fontface": 1,
									"fontsize": 10,
									"patching_rect": [
										100,
										1020,
										68,
										18
									]
								}
							},
							{
								"box": {
									"id": "obj-39",
									"maxclass": "message",
									"text": "",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 8.5,
									"patching_rect": [
										175,
										962,
										454,
										42
									],
									"varname": "preset_slot_15",
									"hint": "Editable stored AMXD preset slot 15. Click to audition directly.",
									"linecount": 4
								}
							},
							{
								"box": {
									"id": "obj-40",
									"maxclass": "comment",
									"text": "PRESET 16",
									"fontface": 1,
									"fontsize": 10,
									"patching_rect": [
										100,
										1078,
										68,
										18
									]
								}
							},
							{
								"box": {
									"id": "obj-41",
									"maxclass": "message",
									"text": "",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 8.5,
									"patching_rect": [
										175,
										1020,
										454,
										42
									],
									"varname": "preset_slot_16",
									"hint": "Editable stored AMXD preset slot 16. Click to audition directly.",
									"linecount": 4
								}
							},
							{
								"box": {
									"id": "obj-42",
									"maxclass": "comment",
									"text": "PRESET 17",
									"fontface": 1,
									"fontsize": 10,
									"patching_rect": [
										100,
										1136,
										68,
										18
									]
								}
							},
							{
								"box": {
									"id": "obj-43",
									"maxclass": "message",
									"text": "",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 8.5,
									"patching_rect": [
										175,
										1078,
										454,
										42
									],
									"varname": "preset_slot_17",
									"hint": "Editable stored AMXD preset slot 17. Click to audition directly.",
									"linecount": 4
								}
							},
							{
								"box": {
									"id": "obj-44",
									"maxclass": "comment",
									"text": "PRESET 18",
									"fontface": 1,
									"fontsize": 10,
									"patching_rect": [
										100,
										1194,
										68,
										18
									]
								}
							},
							{
								"box": {
									"id": "obj-45",
									"maxclass": "message",
									"text": "",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 8.5,
									"patching_rect": [
										175,
										1136,
										454,
										42
									],
									"varname": "preset_slot_18",
									"hint": "Editable stored AMXD preset slot 18. Click to audition directly.",
									"linecount": 4
								}
							},
							{
								"box": {
									"id": "obj-46",
									"maxclass": "comment",
									"text": "PRESET 19",
									"fontface": 1,
									"fontsize": 10,
									"patching_rect": [
										100,
										1252,
										68,
										18
									]
								}
							},
							{
								"box": {
									"id": "obj-47",
									"maxclass": "message",
									"text": "",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 8.5,
									"patching_rect": [
										175,
										1194,
										454,
										42
									],
									"varname": "preset_slot_19",
									"hint": "Editable stored AMXD preset slot 19. Click to audition directly.",
									"linecount": 4
								}
							},
							{
								"box": {
									"id": "obj-48",
									"maxclass": "comment",
									"text": "PRESET 20",
									"fontface": 1,
									"fontsize": 10,
									"patching_rect": [
										100,
										1310,
										68,
										18
									]
								}
							},
							{
								"box": {
									"id": "obj-49",
									"maxclass": "message",
									"text": "",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 8.5,
									"patching_rect": [
										175,
										1252,
										454,
										42
									],
									"varname": "preset_slot_20",
									"hint": "Editable stored AMXD preset slot 20. Click to audition directly.",
									"linecount": 4
								}
							},
							{
								"box": {
									"id": "obj-50",
									"maxclass": "comment",
									"text": "PRESET 21",
									"fontface": 1,
									"fontsize": 10,
									"patching_rect": [
										100,
										1368,
										68,
										18
									]
								}
							},
							{
								"box": {
									"id": "obj-51",
									"maxclass": "message",
									"text": "",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 8.5,
									"patching_rect": [
										175,
										1310,
										454,
										42
									],
									"varname": "preset_slot_21",
									"hint": "Editable stored AMXD preset slot 21. Click to audition directly.",
									"linecount": 4
								}
							},
							{
								"box": {
									"id": "obj-52",
									"maxclass": "comment",
									"text": "PRESET 22",
									"fontface": 1,
									"fontsize": 10,
									"patching_rect": [
										100,
										1426,
										68,
										18
									]
								}
							},
							{
								"box": {
									"id": "obj-53",
									"maxclass": "message",
									"text": "",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 8.5,
									"patching_rect": [
										175,
										1368,
										454,
										42
									],
									"varname": "preset_slot_22",
									"hint": "Editable stored AMXD preset slot 22. Click to audition directly.",
									"linecount": 4
								}
							},
							{
								"box": {
									"id": "obj-54",
									"maxclass": "comment",
									"text": "PRESET 23",
									"fontface": 1,
									"fontsize": 10,
									"patching_rect": [
										100,
										1484,
										68,
										18
									]
								}
							},
							{
								"box": {
									"id": "obj-55",
									"maxclass": "message",
									"text": "",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 8.5,
									"patching_rect": [
										175,
										1426,
										454,
										42
									],
									"varname": "preset_slot_23",
									"hint": "Editable stored AMXD preset slot 23. Click to audition directly.",
									"linecount": 4
								}
							},
							{
								"box": {
									"id": "obj-56",
									"maxclass": "comment",
									"text": "PRESET 24",
									"fontface": 1,
									"fontsize": 10,
									"patching_rect": [
										100,
										1542,
										68,
										18
									]
								}
							},
							{
								"box": {
									"id": "obj-57",
									"maxclass": "message",
									"text": "",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 8.5,
									"patching_rect": [
										175,
										1484,
										454,
										42
									],
									"varname": "preset_slot_24",
									"hint": "Editable stored AMXD preset slot 24. Click to audition directly.",
									"linecount": 4
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"source": [
										"obj-4",
										0
									],
									"destination": [
										"obj-5",
										1
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-5",
										0
									],
									"destination": [
										"obj-6",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-3",
										0
									],
									"destination": [
										"obj-7",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-11",
										0
									],
									"destination": [
										"obj-5",
										1
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-13",
										0
									],
									"destination": [
										"obj-5",
										1
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-15",
										0
									],
									"destination": [
										"obj-5",
										1
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-17",
										0
									],
									"destination": [
										"obj-5",
										1
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-19",
										0
									],
									"destination": [
										"obj-5",
										1
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-21",
										0
									],
									"destination": [
										"obj-5",
										1
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-23",
										0
									],
									"destination": [
										"obj-5",
										1
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-25",
										0
									],
									"destination": [
										"obj-5",
										1
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-27",
										0
									],
									"destination": [
										"obj-5",
										1
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-29",
										0
									],
									"destination": [
										"obj-5",
										1
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-31",
										0
									],
									"destination": [
										"obj-5",
										1
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-33",
										0
									],
									"destination": [
										"obj-5",
										1
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-35",
										0
									],
									"destination": [
										"obj-5",
										1
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-37",
										0
									],
									"destination": [
										"obj-5",
										1
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-39",
										0
									],
									"destination": [
										"obj-5",
										1
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-41",
										0
									],
									"destination": [
										"obj-5",
										1
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-43",
										0
									],
									"destination": [
										"obj-5",
										1
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-45",
										0
									],
									"destination": [
										"obj-5",
										1
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-47",
										0
									],
									"destination": [
										"obj-5",
										1
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-49",
										0
									],
									"destination": [
										"obj-5",
										1
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-51",
										0
									],
									"destination": [
										"obj-5",
										1
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-53",
										0
									],
									"destination": [
										"obj-5",
										1
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-55",
										0
									],
									"destination": [
										"obj-5",
										1
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-57",
										0
									],
									"destination": [
										"obj-5",
										1
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-7",
										0
									],
									"destination": [
										"obj-8",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-7",
										1
									],
									"destination": [
										"obj-8",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-8",
										0
									],
									"destination": [
										"obj-5",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-7",
										2
									],
									"destination": [
										"obj-5",
										0
									],
									"hidden": 1
								}
							}
						],
						"autosave": 0,
						"enablevscroll": 1
					}
				}
			},
			{
				"box": {
					"id": "preset_receive",
					"maxclass": "newobj",
					"text": "r abl.device.drift",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						782,
						295,
						128,
						22
					],
					"varname": "preset_main_receive",
					"hint": "External preset recall receive for abl.device.drift~.",
					"hidden": 1
				}
			},
			{
				"box": {
					"id": "preset_message",
					"maxclass": "message",
					"text": "/abl.device.drift/preset 1",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"fontsize": 9.5,
					"patching_rect": [
						930,
						428,
						210,
						19
					],
					"varname": "preset_main_recall_message",
					"hint": "Editable preset recall. Send the same message to [s abl.device.drift] for external control."
				}
			},
			{
				"box": {
					"id": "loadbang",
					"maxclass": "newobj",
					"text": "loadbang",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						815,
						221,
						60,
						22
					],
					"hidden": 1
				}
			},
			{
				"box": {
					"id": "load_trigger",
					"maxclass": "newobj",
					"text": "t b b",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"bang",
						"bang"
					],
					"patching_rect": [
						919,
						251,
						42,
						22
					],
					"hidden": 1
				}
			},
			{
				"box": {
					"id": "playlist_stop",
					"maxclass": "message",
					"text": "0",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						919,
						280,
						30,
						22
					],
					"hidden": 1
				}
			},
			{
				"box": {
					"id": "abl_bootstrap",
					"maxclass": "newobj",
					"text": "js abl_help_bootstrap.js",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						815,
						251,
						190,
						22
					],
					"hidden": 1,
					"varname": "abl_help_bootstrap"
				}
			},
			{
				"box": {
					"id": "abl_ctl_voicemode",
					"maxclass": "live.numbox",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"param_connect": "abl_device_drift::voicemode",
					"parameter_enable": 1,
					"patching_rect": [
						-700.0,
						-500.0,
						78.0,
						15.0
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "voicemode",
							"parameter_shortname": "voicemode",
							"parameter_modmode": 0,
							"parameter_type": 0,
							"parameter_unitstyle": 1
						}
					},
					"varname": "abl_param_voicemode",
					"hidden": 1
				}
			},
			{
				"box": {
					"id": "abl_ctl_voices",
					"maxclass": "live.numbox",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"param_connect": "abl_device_drift::voices",
					"parameter_enable": 1,
					"patching_rect": [
						-700.0,
						-500.0,
						76.0,
						15.0
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "voices",
							"parameter_shortname": "voices",
							"parameter_modmode": 0,
							"parameter_type": 0,
							"parameter_unitstyle": 1
						}
					},
					"varname": "abl_param_voices",
					"hidden": 1
				}
			},
			{
				"box": {
					"id": "abl_ctl_legato",
					"maxclass": "live.numbox",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"param_connect": "abl_device_drift::legato",
					"parameter_enable": 1,
					"patching_rect": [
						-700.0,
						-500.0,
						78.0,
						15.0
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "legato",
							"parameter_shortname": "legato",
							"parameter_modmode": 0,
							"parameter_type": 0,
							"parameter_unitstyle": 1
						}
					},
					"varname": "abl_param_legato",
					"hidden": 1
				}
			},
			{
				"box": {
					"id": "abl_ctl_unison",
					"maxclass": "live.numbox",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"param_connect": "abl_device_drift::unison",
					"parameter_enable": 1,
					"patching_rect": [
						-700.0,
						-500.0,
						92.0,
						15.0
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "unison",
							"parameter_shortname": "unison",
							"parameter_modmode": 0,
							"parameter_type": 0,
							"parameter_unitstyle": 1
						}
					},
					"varname": "abl_param_unison",
					"hidden": 1
				}
			},
			{
				"box": {
					"id": "abl_ctl_stereospread",
					"maxclass": "live.numbox",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"param_connect": "abl_device_drift::stereospread",
					"parameter_enable": 1,
					"patching_rect": [
						-700.0,
						-500.0,
						60.0,
						15.0
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "stereospread",
							"parameter_shortname": "stereospread",
							"parameter_modmode": 0,
							"parameter_type": 0,
							"parameter_unitstyle": 1
						}
					},
					"varname": "abl_param_stereospread",
					"hidden": 1
				}
			},
			{
				"box": {
					"id": "abl_ctl_glidetime",
					"maxclass": "live.numbox",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"param_connect": "abl_device_drift::glidetime",
					"parameter_enable": 1,
					"patching_rect": [
						-700.0,
						-500.0,
						60.0,
						15.0
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "glidetime",
							"parameter_shortname": "glidetime",
							"parameter_modmode": 0,
							"parameter_type": 0,
							"parameter_unitstyle": 1
						}
					},
					"varname": "abl_param_glidetime",
					"hidden": 1
				}
			},
			{
				"box": {
					"id": "abl_ctl_drift",
					"maxclass": "live.numbox",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"param_connect": "abl_device_drift::drift",
					"parameter_enable": 1,
					"patching_rect": [
						-700.0,
						-500.0,
						60.0,
						15.0
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "drift",
							"parameter_shortname": "drift",
							"parameter_modmode": 0,
							"parameter_type": 0,
							"parameter_unitstyle": 1
						}
					},
					"varname": "abl_param_drift",
					"hidden": 1
				}
			},
			{
				"box": {
					"id": "abl_ctl_modamt1",
					"maxclass": "live.numbox",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"param_connect": "abl_device_drift::modamt1",
					"parameter_enable": 1,
					"patching_rect": [
						-700.0,
						-500.0,
						60.0,
						15.0
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "modamt1",
							"parameter_shortname": "modamt1",
							"parameter_modmode": 0,
							"parameter_type": 0,
							"parameter_unitstyle": 1
						}
					},
					"varname": "abl_param_modamt1",
					"hidden": 1
				}
			},
			{
				"box": {
					"id": "abl_ctl_modsrc1",
					"maxclass": "live.numbox",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"param_connect": "abl_device_drift::modsrc1",
					"parameter_enable": 1,
					"patching_rect": [
						-700.0,
						-500.0,
						60.0,
						15.0
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "modsrc1",
							"parameter_shortname": "modsrc1",
							"parameter_modmode": 0,
							"parameter_type": 0,
							"parameter_unitstyle": 1
						}
					},
					"varname": "abl_param_modsrc1",
					"hidden": 1
				}
			},
			{
				"box": {
					"id": "abl_ctl_moddst1",
					"maxclass": "live.numbox",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"param_connect": "abl_device_drift::moddst1",
					"parameter_enable": 1,
					"patching_rect": [
						-700.0,
						-500.0,
						60.0,
						15.0
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "moddst1",
							"parameter_shortname": "moddst1",
							"parameter_modmode": 0,
							"parameter_type": 0,
							"parameter_unitstyle": 1
						}
					},
					"varname": "abl_param_moddst1",
					"hidden": 1
				}
			},
			{
				"box": {
					"id": "abl_ctl_lfoamount",
					"maxclass": "live.numbox",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"param_connect": "abl_device_drift::lfoamount",
					"parameter_enable": 1,
					"patching_rect": [
						-700.0,
						-500.0,
						60.0,
						15.0
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "lfoamount",
							"parameter_shortname": "lfoamount",
							"parameter_modmode": 0,
							"parameter_type": 0,
							"parameter_unitstyle": 1
						}
					},
					"varname": "abl_param_lfoamount",
					"hidden": 1
				}
			},
			{
				"box": {
					"id": "abl_ctl_lfofreq",
					"maxclass": "live.numbox",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"param_connect": "abl_device_drift::lfofreq",
					"parameter_enable": 1,
					"patching_rect": [
						-700.0,
						-500.0,
						60.0,
						15.0
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "lfofreq",
							"parameter_shortname": "lfofreq",
							"parameter_modmode": 0,
							"parameter_type": 0,
							"parameter_unitstyle": 1
						}
					},
					"varname": "abl_param_lfofreq",
					"hidden": 1
				}
			},
			{
				"box": {
					"id": "abl_ctl_env1release",
					"maxclass": "live.numbox",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"param_connect": "abl_device_drift::env1release",
					"parameter_enable": 1,
					"patching_rect": [
						-700.0,
						-500.0,
						60.0,
						15.0
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "env1release",
							"parameter_shortname": "env1release",
							"parameter_modmode": 0,
							"parameter_type": 0,
							"parameter_unitstyle": 1
						}
					},
					"varname": "abl_param_env1release",
					"hidden": 1
				}
			},
			{
				"box": {
					"id": "abl_ctl_env1sustain",
					"maxclass": "live.numbox",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"param_connect": "abl_device_drift::env1sustain",
					"parameter_enable": 1,
					"patching_rect": [
						-700.0,
						-500.0,
						60.0,
						15.0
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "env1sustain",
							"parameter_shortname": "env1sustain",
							"parameter_modmode": 0,
							"parameter_type": 0,
							"parameter_unitstyle": 1
						}
					},
					"varname": "abl_param_env1sustain",
					"hidden": 1
				}
			},
			{
				"box": {
					"id": "abl_ctl_env1decay",
					"maxclass": "live.numbox",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"param_connect": "abl_device_drift::env1decay",
					"parameter_enable": 1,
					"patching_rect": [
						-700.0,
						-500.0,
						60.0,
						15.0
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "env1decay",
							"parameter_shortname": "env1decay",
							"parameter_modmode": 0,
							"parameter_type": 0,
							"parameter_unitstyle": 1
						}
					},
					"varname": "abl_param_env1decay",
					"hidden": 1
				}
			},
			{
				"box": {
					"id": "abl_ctl_env1attack",
					"maxclass": "live.numbox",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"param_connect": "abl_device_drift::env1attack",
					"parameter_enable": 1,
					"patching_rect": [
						-700.0,
						-500.0,
						60.0,
						15.0
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "env1attack",
							"parameter_shortname": "env1attack",
							"parameter_modmode": 0,
							"parameter_type": 0,
							"parameter_unitstyle": 1
						}
					},
					"varname": "abl_param_env1attack",
					"hidden": 1
				}
			},
			{
				"box": {
					"id": "abl_ctl_lpres",
					"maxclass": "live.numbox",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"param_connect": "abl_device_drift::lpres",
					"parameter_enable": 1,
					"patching_rect": [
						-700.0,
						-500.0,
						60.0,
						15.0
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "lpres",
							"parameter_shortname": "lpres",
							"parameter_modmode": 0,
							"parameter_type": 0,
							"parameter_unitstyle": 1
						}
					},
					"varname": "abl_param_lpres",
					"hidden": 1
				}
			},
			{
				"box": {
					"id": "abl_ctl_lpfreq",
					"maxclass": "live.numbox",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"param_connect": "abl_device_drift::lpfreq",
					"parameter_enable": 1,
					"patching_rect": [
						-700.0,
						-500.0,
						60.0,
						15.0
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "lpfreq",
							"parameter_shortname": "lpfreq",
							"parameter_modmode": 0,
							"parameter_type": 0,
							"parameter_unitstyle": 1
						}
					},
					"varname": "abl_param_lpfreq",
					"hidden": 1
				}
			},
			{
				"box": {
					"id": "abl_ctl_osc1type",
					"maxclass": "live.numbox",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"param_connect": "abl_device_drift::osc1type",
					"parameter_enable": 1,
					"patching_rect": [
						-700.0,
						-500.0,
						60.0,
						15.0
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "osc1type",
							"parameter_shortname": "osc1type",
							"parameter_modmode": 0,
							"parameter_type": 0,
							"parameter_unitstyle": 1
						}
					},
					"varname": "abl_param_osc1type",
					"hidden": 1
				}
			},
			{
				"box": {
					"id": "abl_ctl_osc2type",
					"maxclass": "live.numbox",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"param_connect": "abl_device_drift::osc2type",
					"parameter_enable": 1,
					"patching_rect": [
						-700.0,
						-500.0,
						60.0,
						15.0
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "osc2type",
							"parameter_shortname": "osc2type",
							"parameter_modmode": 0,
							"parameter_type": 0,
							"parameter_unitstyle": 1
						}
					},
					"varname": "abl_param_osc2type",
					"hidden": 1
				}
			},
			{
				"box": {
					"id": "abl_ctl_env2sustain",
					"maxclass": "live.numbox",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"param_connect": "abl_device_drift::env2sustain",
					"parameter_enable": 1,
					"patching_rect": [
						-700.0,
						-500.0,
						60.0,
						15.0
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "env2sustain",
							"parameter_shortname": "env2sustain",
							"parameter_modmode": 0,
							"parameter_type": 0,
							"parameter_unitstyle": 1
						}
					},
					"varname": "abl_param_env2sustain",
					"hidden": 1
				}
			},
			{
				"box": {
					"id": "abl_ctl_osc1shape",
					"maxclass": "live.numbox",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"param_connect": "abl_device_drift::osc1shape",
					"parameter_enable": 1,
					"patching_rect": [
						-700.0,
						-500.0,
						60.0,
						15.0
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "osc1shape",
							"parameter_shortname": "osc1shape",
							"parameter_modmode": 0,
							"parameter_type": 0,
							"parameter_unitstyle": 1
						}
					},
					"varname": "abl_param_osc1shape",
					"hidden": 1
				}
			},
			{
				"box": {
					"id": "abl_ctl_osc2gain",
					"maxclass": "live.numbox",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"param_connect": "abl_device_drift::osc2gain",
					"parameter_enable": 1,
					"patching_rect": [
						-700.0,
						-500.0,
						60.0,
						15.0
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "osc2gain",
							"parameter_shortname": "osc2gain",
							"parameter_modmode": 0,
							"parameter_type": 0,
							"parameter_unitstyle": 1
						}
					},
					"varname": "abl_param_osc2gain",
					"hidden": 1
				}
			},
			{
				"box": {
					"id": "abl_ctl_osc1gain",
					"maxclass": "live.numbox",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"param_connect": "abl_device_drift::osc1gain",
					"parameter_enable": 1,
					"patching_rect": [
						-700.0,
						-500.0,
						60.0,
						15.0
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "osc1gain",
							"parameter_shortname": "osc1gain",
							"parameter_modmode": 0,
							"parameter_type": 0,
							"parameter_unitstyle": 1
						}
					},
					"varname": "abl_param_osc1gain",
					"hidden": 1
				}
			},
			{
				"box": {
					"id": "abl_ctl_osc2detune",
					"maxclass": "live.numbox",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"param_connect": "abl_device_drift::osc2detune",
					"parameter_enable": 1,
					"patching_rect": [
						-700.0,
						-500.0,
						60.0,
						15.0
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "osc2detune",
							"parameter_shortname": "osc2detune",
							"parameter_modmode": 0,
							"parameter_type": 0,
							"parameter_unitstyle": 1
						}
					},
					"varname": "abl_param_osc2detune",
					"hidden": 1
				}
			},
			{
				"box": {
					"id": "abl_ctl_osc2octave",
					"maxclass": "live.numbox",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"param_connect": "abl_device_drift::osc2octave",
					"parameter_enable": 1,
					"patching_rect": [
						-700.0,
						-500.0,
						60.0,
						15.0
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "osc2octave",
							"parameter_shortname": "osc2octave",
							"parameter_modmode": 0,
							"parameter_type": 0,
							"parameter_unitstyle": 1
						}
					},
					"varname": "abl_param_osc2octave",
					"hidden": 1
				}
			},
			{
				"box": {
					"id": "max9_help_link",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						930,
						18,
						220,
						22
					],
					"text": "OPEN ORIGINAL ABL HELP",
					"hint": "Click to open the original Max 9 Ableton DSP help file for abl.device.drift~."
				}
			},
			{
				"box": {
					"id": "max9_help_link_comment",
					"maxclass": "comment",
					"patching_rect": [
						930,
						42,
						220,
						17
					],
					"text": "Installed Ableton DSP / Max 9 help",
					"fontsize": 10.0
				}
			},
			{
				"box": {
					"id": "max9_help_pcontrol",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1010,
						92,
						58,
						22
					],
					"text": "pcontrol",
					"hidden": 1,
					"hint": "Loads the exact resolved Ableton DSP package help patch."
				}
			},
			{
				"box": {
					"id": "max9_help_trigger",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"bang"
					],
					"patching_rect": [
						990,
						18,
						31,
						22
					],
					"text": "t b",
					"hidden": 1,
					"hint": "Converts the visible help-link message into a bang."
				}
			},
			{
				"box": {
					"id": "max9_help_package_path",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						990,
						42,
						360,
						22
					],
					"text": "\"Package:/Ableton DSP/help/abl.device.drift~.maxhelp\"",
					"hidden": 1,
					"hint": "Exact portable Max package path for the original abl.device.drift~ help file."
				}
			},
			{
				"box": {
					"id": "max9_help_abspath",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						990,
						67,
						78,
						22
					],
					"text": "absolutepath",
					"hidden": 1,
					"hint": "Resolves Package:/Ableton DSP/... to the installed absolute path."
				}
			},
			{
				"box": {
					"id": "max9_help_prepend_load",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1075,
						67,
						82,
						22
					],
					"text": "prepend load",
					"hidden": 1,
					"hint": "Formats the resolved path as a pcontrol load message."
				}
			},
			{
				"box": {
					"id": "v6_main_panel",
					"maxclass": "panel",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						520,
						72,
						633,
						383
					],
					"bgcolor": [
						0.2901960784313726,
						0.8509803921568627,
						0.6980392156862745,
						1
					],
					"background": 1,
					"border": 1,
					"rounded": 8
				}
			},
			{
				"box": {
					"id": "v6_recall_label",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						530,
						76,
						70,
						40
					],
					"text": "CURRENT\nPRESET\nRECALL",
					"fontface": 1,
					"fontsize": 10
				}
			},
			{
				"box": {
					"id": "v6_choose_init",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						605,
						112,
						100,
						22
					],
					"text": "loadmess set 24",
					"hidden": 1
				}
			},
			{
				"box": {
					"id": "v6_store_init",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						875,
						112,
						80,
						22
					],
					"text": "loadmess 1",
					"hidden": 1
				}
			},
			{
				"box": {
					"id": "v6_menu_split",
					"maxclass": "newobj",
					"numinlets": 3,
					"numoutlets": 2,
					"outlettype": [
						"int",
						"int"
					],
					"patching_rect": [
						660,
						112,
						65,
						22
					],
					"text": "split 0 23",
					"hidden": 1
				}
			},
			{
				"box": {
					"id": "v6_menu_store_set",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						730,
						112,
						45,
						22
					],
					"text": "set $1",
					"hidden": 1
				}
			},
			{
				"box": {
					"id": "v6_external_preset",
					"maxclass": "newobj",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						960,
						350,
						180,
						22
					],
					"text": "receive ABL_drift_preset"
				}
			},
			{
				"box": {
					"id": "v6_external_split",
					"maxclass": "newobj",
					"numinlets": 3,
					"numoutlets": 2,
					"outlettype": [
						"int",
						"int"
					],
					"patching_rect": [
						960,
						376,
						65,
						22
					],
					"text": "split 1 24",
					"hidden": 1
				}
			},
			{
				"box": {
					"id": "v6_external_trigger",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"int",
						"int",
						"int"
					],
					"patching_rect": [
						1030,
						376,
						50,
						22
					],
					"text": "t i i i",
					"hidden": 1
				}
			},
			{
				"box": {
					"id": "v6_store_set",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1085,
						376,
						45,
						22
					],
					"text": "set $1",
					"hidden": 1
				}
			},
			{
				"box": {
					"id": "v6_menu_minus",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"int"
					],
					"patching_rect": [
						1030,
						402,
						32,
						22
					],
					"text": "- 1",
					"hidden": 1
				}
			},
			{
				"box": {
					"id": "v6_menu_set",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1067,
						402,
						45,
						22
					],
					"text": "set $1",
					"hidden": 1
				}
			},
			{
				"box": {
					"id": "v6_input_send",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						226,
						215,
						210,
						22
					],
					"text": "send~ ABL_drift_send",
					"color": [
						0.055,
						0.247,
						0.702,
						1
					]
				}
			},
			{
				"box": {
					"id": "v6_out_send_0",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						540,
						340,
						205,
						22
					],
					"text": "send~ ABL_drift_out_L",
					"color": [
						0.055,
						0.247,
						0.702,
						1
					]
				}
			},
			{
				"box": {
					"id": "v6_out_receive_0",
					"maxclass": "newobj",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						91,
						282,
						205,
						22
					],
					"text": "receive~ ABL_drift_out_L",
					"color": [
						0.055,
						0.247,
						0.702,
						1
					]
				}
			},
			{
				"box": {
					"id": "v6_out_send_1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						755,
						340,
						205,
						22
					],
					"text": "send~ ABL_drift_out_R",
					"color": [
						0.055,
						0.247,
						0.702,
						1
					]
				}
			},
			{
				"box": {
					"id": "v6_out_receive_1",
					"maxclass": "newobj",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						306,
						282,
						205,
						22
					],
					"text": "receive~ ABL_drift_out_R",
					"color": [
						0.055,
						0.247,
						0.702,
						1
					]
				}
			},
			{
				"box": {
					"id": "v6_caution",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						412,
						456,
						722,
						27
					],
					"fontsize": 9,
					"textcolor": [
						1,
						0,
						0,
						1
					],
					"text": "CAUTION: Always keep output gains low when testing and building presets. Certain parameter settings such as high feedback, resonance, or high gain values can become loud or unstable."
				}
			},
			{
				"box": {
					"id": "v6_parameter_guide",
					"maxclass": "newobj",
					"numinlets": 0,
					"numoutlets": 0,
					"outlettype": [],
					"patching_rect": [
						24,
						463,
						265,
						40
					],
					"text": "p Parameter Guide",
					"fontsize": 24,
					"fontface": 1,
					"bgcolor": [
						0.055,
						0.247,
						0.702,
						1
					],
					"textcolor": [
						1,
						1,
						1,
						1
					],
					"varname": "parameter_guide",
					"patcher": {
						"fileversion": 1,
						"appversion": {
							"major": 9,
							"minor": 0,
							"revision": 0,
							"architecture": "x64",
							"modernui": 1
						},
						"classnamespace": "box",
						"rect": [
							80,
							120,
							1160,
							780
						],
						"bglocked": 0,
						"openinpresentation": 0,
						"default_fontsize": 12,
						"default_fontface": 0,
						"default_fontname": "Arial",
						"gridonopen": 1,
						"gridsize": [
							15,
							15
						],
						"toolbarvisible": 1,
						"boxanimatetime": 200,
						"enablehscroll": 1,
						"enablevscroll": 1,
						"boxes": [
							{
								"box": {
									"id": "guide-title",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										18,
										1080,
										34
									],
									"text": "PARAMETER GUIDE \u2014 abl.device.drift~",
									"fontsize": 24,
									"fontface": 1,
									"textcolor": [
										0.055,
										0.247,
										0.702,
										1
									]
								}
							},
							{
								"box": {
									"id": "guide-subtitle",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										60,
										1080,
										22
									],
									"text": "Drift synthesizer",
									"fontsize": 14,
									"fontface": 1
								}
							},
							{
								"box": {
									"id": "guide-overview",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										88,
										1080,
										38
									],
									"text": "A complete polyphonic synthesizer voice based on Ableton Live Drift; it generates audio rather than processing an incoming audio signal.",
									"fontsize": 12,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-sonic-head",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										134,
										1080,
										20
									],
									"text": "SONIC RESULT",
									"fontsize": 12,
									"fontface": 1
								}
							},
							{
								"box": {
									"id": "guide-sonic",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										156,
										1080,
										38
									],
									"text": "Produces subtractive-synthesis tones with oscillator variation, filtering, envelopes, modulation, unison and controlled pitch drift.",
									"fontsize": 12,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-key",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										204,
										1080,
										24
									],
									"text": "KEY CONTROLS: Voicemode, Voices, Legato, Unison",
									"fontsize": 12,
									"fontface": 1
								}
							},
							{
								"box": {
									"id": "guide-range-note",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										242,
										1080,
										40
									],
									"text": "Ranges and types are supplied by the installed Ableton DSP package through native ABL parameter binding. The numeric display in p generate random settings shows the exact current value for this installation.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-name-0",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										294,
										260,
										20
									],
									"text": "Voicemode",
									"fontsize": 12,
									"fontface": 1,
									"textcolor": [
										0.055,
										0.247,
										0.702,
										1
									]
								}
							},
							{
								"box": {
									"id": "guide-type-0",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										294,
										820,
										20
									],
									"text": "Type/range: integer/enum or on\u2013off state.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-effect-0",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										316,
										820,
										34
									],
									"text": "Selects among discrete algorithms or operating modes; the numbers identify choices rather than a continuously increasing amount.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-name-1",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										356,
										260,
										20
									],
									"text": "Voices",
									"fontsize": 12,
									"fontface": 1,
									"textcolor": [
										0.055,
										0.247,
										0.702,
										1
									]
								}
							},
							{
								"box": {
									"id": "guide-type-1",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										356,
										820,
										20
									],
									"text": "Type/range: native ABL-bound value.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-effect-1",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										378,
										820,
										34
									],
									"text": "Changes this named part of the ABL algorithm. Compare low and high settings while keeping the output gain low.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-name-2",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										418,
										260,
										20
									],
									"text": "Legato",
									"fontsize": 12,
									"fontface": 1,
									"textcolor": [
										0.055,
										0.247,
										0.702,
										1
									]
								}
							},
							{
								"box": {
									"id": "guide-type-2",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										418,
										820,
										20
									],
									"text": "Type/range: native ABL-bound value.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-effect-2",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										440,
										820,
										34
									],
									"text": "Changes this named part of the ABL algorithm. Compare low and high settings while keeping the output gain low.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-name-3",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										480,
										260,
										20
									],
									"text": "Unison",
									"fontsize": 12,
									"fontface": 1,
									"textcolor": [
										0.055,
										0.247,
										0.702,
										1
									]
								}
							},
							{
								"box": {
									"id": "guide-type-3",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										480,
										820,
										20
									],
									"text": "Type/range: native ABL-bound value.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-effect-3",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										502,
										820,
										34
									],
									"text": "Changes this named part of the ABL algorithm. Compare low and high settings while keeping the output gain low.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-name-4",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										542,
										260,
										20
									],
									"text": "Stereospread",
									"fontsize": 12,
									"fontface": 1,
									"textcolor": [
										0.055,
										0.247,
										0.702,
										1
									]
								}
							},
							{
								"box": {
									"id": "guide-type-4",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										542,
										820,
										20
									],
									"text": "Type/range: amount; normally 0\u2013100% or a device-defined normalized value.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-effect-4",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										564,
										820,
										34
									],
									"text": "Lower values reduce this contribution; higher values make its effect more pronounced.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-name-5",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										604,
										260,
										20
									],
									"text": "Glidetime",
									"fontsize": 12,
									"fontface": 1,
									"textcolor": [
										0.055,
										0.247,
										0.702,
										1
									]
								}
							},
							{
								"box": {
									"id": "guide-type-5",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										604,
										820,
										20
									],
									"text": "Type/range: time; usually ms or a device-defined synchronized interval.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-effect-5",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										626,
										820,
										34
									],
									"text": "Changes this named part of the ABL algorithm. Compare low and high settings while keeping the output gain low.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-name-6",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										666,
										260,
										20
									],
									"text": "Drift",
									"fontsize": 12,
									"fontface": 1,
									"textcolor": [
										0.055,
										0.247,
										0.702,
										1
									]
								}
							},
							{
								"box": {
									"id": "guide-type-6",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										666,
										820,
										20
									],
									"text": "Type/range: native ABL-bound value.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-effect-6",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										688,
										820,
										34
									],
									"text": "Changes this named part of the ABL algorithm. Compare low and high settings while keeping the output gain low.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-name-7",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										728,
										260,
										20
									],
									"text": "Modamt1",
									"fontsize": 12,
									"fontface": 1,
									"textcolor": [
										0.055,
										0.247,
										0.702,
										1
									]
								}
							},
							{
								"box": {
									"id": "guide-type-7",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										728,
										820,
										20
									],
									"text": "Type/range: native ABL-bound value.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-effect-7",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										750,
										820,
										34
									],
									"text": "Changes this named part of the ABL algorithm. Compare low and high settings while keeping the output gain low.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-name-8",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										790,
										260,
										20
									],
									"text": "Modsrc1",
									"fontsize": 12,
									"fontface": 1,
									"textcolor": [
										0.055,
										0.247,
										0.702,
										1
									]
								}
							},
							{
								"box": {
									"id": "guide-type-8",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										790,
										820,
										20
									],
									"text": "Type/range: native ABL-bound value.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-effect-8",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										812,
										820,
										34
									],
									"text": "Changes this named part of the ABL algorithm. Compare low and high settings while keeping the output gain low.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-name-9",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										852,
										260,
										20
									],
									"text": "Moddst1",
									"fontsize": 12,
									"fontface": 1,
									"textcolor": [
										0.055,
										0.247,
										0.702,
										1
									]
								}
							},
							{
								"box": {
									"id": "guide-type-9",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										852,
										820,
										20
									],
									"text": "Type/range: native ABL-bound value.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-effect-9",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										874,
										820,
										34
									],
									"text": "Changes this named part of the ABL algorithm. Compare low and high settings while keeping the output gain low.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-name-10",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										914,
										260,
										20
									],
									"text": "Lfoamount",
									"fontsize": 12,
									"fontface": 1,
									"textcolor": [
										0.055,
										0.247,
										0.702,
										1
									]
								}
							},
							{
								"box": {
									"id": "guide-type-10",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										914,
										820,
										20
									],
									"text": "Type/range: amount; normally 0\u2013100% or a device-defined normalized value.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-effect-10",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										936,
										820,
										34
									],
									"text": "Lower values reduce this contribution; higher values make its effect more pronounced.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-name-11",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										976,
										260,
										20
									],
									"text": "Lfofreq",
									"fontsize": 12,
									"fontface": 1,
									"textcolor": [
										0.055,
										0.247,
										0.702,
										1
									]
								}
							},
							{
								"box": {
									"id": "guide-type-11",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										976,
										820,
										20
									],
									"text": "Type/range: frequency; normally Hz or a device-defined normalized value.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-effect-11",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										998,
										820,
										34
									],
									"text": "Lower values move the action downward in frequency; higher values move it upward. The audible result depends on the selected algorithm.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-name-12",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										1038,
										260,
										20
									],
									"text": "Env1Release",
									"fontsize": 12,
									"fontface": 1,
									"textcolor": [
										0.055,
										0.247,
										0.702,
										1
									]
								}
							},
							{
								"box": {
									"id": "guide-type-12",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										1038,
										820,
										20
									],
									"text": "Type/range: time; usually ms or a device-defined synchronized interval.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-effect-12",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										1060,
										820,
										34
									],
									"text": "Lower values recover or fade quickly; higher values extend the response or tail.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-name-13",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										1100,
										260,
										20
									],
									"text": "Env1Sustain",
									"fontsize": 12,
									"fontface": 1,
									"textcolor": [
										0.055,
										0.247,
										0.702,
										1
									]
								}
							},
							{
								"box": {
									"id": "guide-type-13",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										1100,
										820,
										20
									],
									"text": "Type/range: native ABL-bound value.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-effect-13",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										1122,
										820,
										34
									],
									"text": "Changes this named part of the ABL algorithm. Compare low and high settings while keeping the output gain low.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-name-14",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										1162,
										260,
										20
									],
									"text": "Env1Decay",
									"fontsize": 12,
									"fontface": 1,
									"textcolor": [
										0.055,
										0.247,
										0.702,
										1
									]
								}
							},
							{
								"box": {
									"id": "guide-type-14",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										1162,
										820,
										20
									],
									"text": "Type/range: time; usually ms or a device-defined synchronized interval.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-effect-14",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										1184,
										820,
										34
									],
									"text": "Lower values recover or fade quickly; higher values extend the response or tail.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-name-15",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										1224,
										260,
										20
									],
									"text": "Env1Attack",
									"fontsize": 12,
									"fontface": 1,
									"textcolor": [
										0.055,
										0.247,
										0.702,
										1
									]
								}
							},
							{
								"box": {
									"id": "guide-type-15",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										1224,
										820,
										20
									],
									"text": "Type/range: time; usually ms or a device-defined synchronized interval.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-effect-15",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										1246,
										820,
										34
									],
									"text": "Lower values react more quickly to an onset; higher values soften or delay the response.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-name-16",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										1286,
										260,
										20
									],
									"text": "Lpres",
									"fontsize": 12,
									"fontface": 1,
									"textcolor": [
										0.055,
										0.247,
										0.702,
										1
									]
								}
							},
							{
								"box": {
									"id": "guide-type-16",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										1286,
										820,
										20
									],
									"text": "Type/range: native ABL-bound value.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-effect-16",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										1308,
										820,
										34
									],
									"text": "Changes this named part of the ABL algorithm. Compare low and high settings while keeping the output gain low.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-name-17",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										1348,
										260,
										20
									],
									"text": "Lpfreq",
									"fontsize": 12,
									"fontface": 1,
									"textcolor": [
										0.055,
										0.247,
										0.702,
										1
									]
								}
							},
							{
								"box": {
									"id": "guide-type-17",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										1348,
										820,
										20
									],
									"text": "Type/range: frequency; normally Hz or a device-defined normalized value.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-effect-17",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										1370,
										820,
										34
									],
									"text": "Lower values move the action downward in frequency; higher values move it upward. The audible result depends on the selected algorithm.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-name-18",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										1410,
										260,
										20
									],
									"text": "Osc1Type",
									"fontsize": 12,
									"fontface": 1,
									"textcolor": [
										0.055,
										0.247,
										0.702,
										1
									]
								}
							},
							{
								"box": {
									"id": "guide-type-18",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										1410,
										820,
										20
									],
									"text": "Type/range: integer/enum or on\u2013off state.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-effect-18",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										1432,
										820,
										34
									],
									"text": "Selects among discrete algorithms or operating modes; the numbers identify choices rather than a continuously increasing amount.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-name-19",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										1472,
										260,
										20
									],
									"text": "Osc2Type",
									"fontsize": 12,
									"fontface": 1,
									"textcolor": [
										0.055,
										0.247,
										0.702,
										1
									]
								}
							},
							{
								"box": {
									"id": "guide-type-19",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										1472,
										820,
										20
									],
									"text": "Type/range: integer/enum or on\u2013off state.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-effect-19",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										1494,
										820,
										34
									],
									"text": "Selects among discrete algorithms or operating modes; the numbers identify choices rather than a continuously increasing amount.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-name-20",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										1534,
										260,
										20
									],
									"text": "Env2Sustain",
									"fontsize": 12,
									"fontface": 1,
									"textcolor": [
										0.055,
										0.247,
										0.702,
										1
									]
								}
							},
							{
								"box": {
									"id": "guide-type-20",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										1534,
										820,
										20
									],
									"text": "Type/range: native ABL-bound value.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-effect-20",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										1556,
										820,
										34
									],
									"text": "Changes this named part of the ABL algorithm. Compare low and high settings while keeping the output gain low.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-name-21",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										1596,
										260,
										20
									],
									"text": "Osc1Shape",
									"fontsize": 12,
									"fontface": 1,
									"textcolor": [
										0.055,
										0.247,
										0.702,
										1
									]
								}
							},
							{
								"box": {
									"id": "guide-type-21",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										1596,
										820,
										20
									],
									"text": "Type/range: continuous or stepped device-defined range.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-effect-21",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										1618,
										820,
										34
									],
									"text": "Lower values reduce this contribution; higher values make its effect more pronounced.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-name-22",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										1658,
										260,
										20
									],
									"text": "Osc2Gain",
									"fontsize": 12,
									"fontface": 1,
									"textcolor": [
										0.055,
										0.247,
										0.702,
										1
									]
								}
							},
							{
								"box": {
									"id": "guide-type-22",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										1658,
										820,
										20
									],
									"text": "Type/range: level; normally dB or a device-defined normalized value.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-effect-22",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										1680,
										820,
										34
									],
									"text": "Lower values reduce level; higher values increase level. Raise cautiously when distortion, feedback, or resonance is active.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-name-23",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										1720,
										260,
										20
									],
									"text": "Osc1Gain",
									"fontsize": 12,
									"fontface": 1,
									"textcolor": [
										0.055,
										0.247,
										0.702,
										1
									]
								}
							},
							{
								"box": {
									"id": "guide-type-23",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										1720,
										820,
										20
									],
									"text": "Type/range: level; normally dB or a device-defined normalized value.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-effect-23",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										1742,
										820,
										34
									],
									"text": "Lower values reduce level; higher values increase level. Raise cautiously when distortion, feedback, or resonance is active.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-name-24",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										1782,
										260,
										20
									],
									"text": "Osc2Detune",
									"fontsize": 12,
									"fontface": 1,
									"textcolor": [
										0.055,
										0.247,
										0.702,
										1
									]
								}
							},
							{
								"box": {
									"id": "guide-type-24",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										1782,
										820,
										20
									],
									"text": "Type/range: native ABL-bound value.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-effect-24",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										1804,
										820,
										34
									],
									"text": "Changes this named part of the ABL algorithm. Compare low and high settings while keeping the output gain low.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-name-25",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										1844,
										260,
										20
									],
									"text": "Osc2Octave",
									"fontsize": 12,
									"fontface": 1,
									"textcolor": [
										0.055,
										0.247,
										0.702,
										1
									]
								}
							},
							{
								"box": {
									"id": "guide-type-25",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										1844,
										820,
										20
									],
									"text": "Type/range: native ABL-bound value.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-effect-25",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										290,
										1866,
										820,
										34
									],
									"text": "Changes this named part of the ABL algorithm. Compare low and high settings while keeping the output gain low.",
									"fontsize": 11,
									"fontface": 0
								}
							},
							{
								"box": {
									"id": "guide-footer",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										1910,
										1080,
										36
									],
									"text": "Listening note: begin at a low output level. High feedback, resonance, input gain, drive, or output gain settings can become loud or unstable.",
									"fontsize": 11,
									"fontface": 1,
									"textcolor": [
										0.55,
										0.08,
										0.08,
										1
									]
								}
							}
						],
						"lines": []
					}
				}
			},
			{
				"box": {
					"id": "v6_win_active",
					"maxclass": "newobj",
					"text": "active",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						"int"
					],
					"patching_rect": [
						930,
						500,
						45,
						22
					],
					"hidden": 1
				}
			},
			{
				"box": {
					"id": "v6_win_sel",
					"maxclass": "newobj",
					"text": "sel 1",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"bang",
						""
					],
					"patching_rect": [
						980,
						500,
						42,
						22
					],
					"hidden": 1
				}
			},
			{
				"box": {
					"id": "v6_win_one",
					"maxclass": "newobj",
					"text": "onebang",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"bang"
					],
					"patching_rect": [
						1027,
						500,
						58,
						22
					],
					"hidden": 1
				}
			},
			{
				"box": {
					"id": "v6_win_delay",
					"maxclass": "newobj",
					"text": "delay 25",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"bang"
					],
					"patching_rect": [
						1090,
						500,
						57,
						22
					],
					"hidden": 1
				}
			},
			{
				"box": {
					"id": "v6_win_msg",
					"maxclass": "message",
					"text": "window size 37 288 1276 880, window exec",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						930,
						526,
						250,
						22
					],
					"hidden": 1
				}
			},
			{
				"box": {
					"id": "v6_win_this",
					"maxclass": "newobj",
					"text": "thispatcher",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						""
					],
					"patching_rect": [
						1185,
						526,
						75,
						22
					],
					"hidden": 1
				}
			}
		],
		"lines": [
			{
				"patchline": {
					"source": [
						"src_menu",
						0
					],
					"destination": [
						"src_plusone",
						0
					],
					"hidden": 1
				}
			},
			{
				"patchline": {
					"source": [
						"src_plusone",
						0
					],
					"destination": [
						"src_selector",
						0
					],
					"hidden": 1
				}
			},
			{
				"patchline": {
					"source": [
						"src_loadmenu",
						0
					],
					"destination": [
						"src_menu",
						0
					],
					"hidden": 1
				}
			},
			{
				"patchline": {
					"source": [
						"src_loadsel",
						0
					],
					"destination": [
						"src_selector",
						0
					],
					"hidden": 1
				}
			},
			{
				"patchline": {
					"source": [
						"src_noise",
						0
					],
					"destination": [
						"src_selector",
						1
					],
					"hidden": 1
				}
			},
			{
				"patchline": {
					"source": [
						"src_playlist",
						0
					],
					"destination": [
						"src_selector",
						2
					],
					"hidden": 1
				}
			},
			{
				"patchline": {
					"source": [
						"open_msg",
						0
					],
					"destination": [
						"x_obj",
						0
					],
					"hidden": 1
				}
			},
			{
				"patchline": {
					"source": [
						"ext_receive",
						0
					],
					"destination": [
						"dry_gain",
						0
					],
					"hidden": 0,
					"order": 0
				}
			},
			{
				"patchline": {
					"source": [
						"ext_receive",
						0
					],
					"destination": [
						"dry_gain",
						1
					],
					"hidden": 0,
					"order": 1
				}
			},
			{
				"patchline": {
					"source": [
						"fx_gain",
						0
					],
					"destination": [
						"dac",
						0
					],
					"hidden": 0
				}
			},
			{
				"patchline": {
					"source": [
						"fx_gain",
						1
					],
					"destination": [
						"dac",
						1
					],
					"hidden": 0
				}
			},
			{
				"patchline": {
					"source": [
						"dry_gain",
						0
					],
					"destination": [
						"dac",
						0
					],
					"hidden": 0
				}
			},
			{
				"patchline": {
					"source": [
						"dry_gain",
						1
					],
					"destination": [
						"dac",
						1
					],
					"hidden": 0
				}
			},
			{
				"patchline": {
					"source": [
						"startwindow",
						0
					],
					"destination": [
						"dac",
						0
					],
					"hidden": 1
				}
			},
			{
				"patchline": {
					"source": [
						"stopdsp",
						0
					],
					"destination": [
						"dac",
						0
					],
					"hidden": 1
				}
			},
			{
				"patchline": {
					"source": [
						"random_bang",
						0
					],
					"destination": [
						"direct_params",
						0
					],
					"hidden": 0
				}
			},
			{
				"patchline": {
					"source": [
						"direct_params",
						0
					],
					"destination": [
						"x_obj",
						0
					],
					"hidden": 0
				}
			},
			{
				"patchline": {
					"source": [
						"dump_button",
						0
					],
					"destination": [
						"capture_js",
						0
					],
					"hidden": 1
				}
			},
			{
				"patchline": {
					"source": [
						"working_preset",
						0
					],
					"destination": [
						"capture_js",
						0
					],
					"hidden": 1
				}
			},
			{
				"patchline": {
					"source": [
						"capture_js",
						0
					],
					"destination": [
						"x_obj",
						0
					],
					"hidden": 1
				}
			},
			{
				"patchline": {
					"source": [
						"capture_js",
						1
					],
					"destination": [
						"capture_print",
						0
					],
					"hidden": 1
				}
			},
			{
				"patchline": {
					"source": [
						"preset_store_button",
						0
					],
					"destination": [
						"preset_store_int",
						0
					],
					"hidden": 1
				}
			},
			{
				"patchline": {
					"source": [
						"preset_store_int",
						0
					],
					"destination": [
						"preset_store_prepend",
						0
					],
					"hidden": 1
				}
			},
			{
				"patchline": {
					"source": [
						"preset_store_prepend",
						0
					],
					"destination": [
						"preset_collection",
						0
					],
					"hidden": 1
				}
			},
			{
				"patchline": {
					"source": [
						"preset_recall_prepend",
						0
					],
					"destination": [
						"preset_collection",
						0
					],
					"hidden": 1
				}
			},
			{
				"patchline": {
					"source": [
						"working_preset",
						0
					],
					"destination": [
						"preset_collection",
						1
					],
					"hidden": 1
				}
			},
			{
				"patchline": {
					"source": [
						"preset_collection",
						0
					],
					"destination": [
						"capture_js",
						0
					],
					"hidden": 1
				}
			},
			{
				"patchline": {
					"source": [
						"preset_receive",
						0
					],
					"destination": [
						"preset_collection",
						0
					],
					"hidden": 1
				}
			},
			{
				"patchline": {
					"source": [
						"preset_message",
						0
					],
					"destination": [
						"preset_collection",
						0
					],
					"hidden": 0
				}
			},
			{
				"patchline": {
					"source": [
						"loadbang",
						0
					],
					"destination": [
						"load_trigger",
						0
					],
					"hidden": 1
				}
			},
			{
				"patchline": {
					"source": [
						"load_trigger",
						0
					],
					"destination": [
						"playlist_stop",
						0
					],
					"hidden": 1
				}
			},
			{
				"patchline": {
					"source": [
						"playlist_stop",
						0
					],
					"destination": [
						"src_playlist",
						0
					],
					"hidden": 1
				}
			},
			{
				"patchline": {
					"source": [
						"load_trigger",
						1
					],
					"destination": [
						"abl_bootstrap",
						0
					],
					"hidden": 1
				}
			},
			{
				"patchline": {
					"source": [
						"max9_help_link",
						0
					],
					"destination": [
						"max9_help_trigger",
						0
					],
					"hidden": 1
				}
			},
			{
				"patchline": {
					"source": [
						"max9_help_trigger",
						0
					],
					"destination": [
						"max9_help_package_path",
						0
					],
					"hidden": 1
				}
			},
			{
				"patchline": {
					"source": [
						"max9_help_package_path",
						0
					],
					"destination": [
						"max9_help_abspath",
						0
					],
					"hidden": 1
				}
			},
			{
				"patchline": {
					"source": [
						"max9_help_abspath",
						0
					],
					"destination": [
						"max9_help_prepend_load",
						0
					],
					"hidden": 1
				}
			},
			{
				"patchline": {
					"source": [
						"max9_help_prepend_load",
						0
					],
					"destination": [
						"max9_help_pcontrol",
						0
					],
					"hidden": 1
				}
			},
			{
				"patchline": {
					"source": [
						"v6_choose_init",
						0
					],
					"destination": [
						"preset_menu",
						0
					],
					"hidden": 1
				}
			},
			{
				"patchline": {
					"source": [
						"v6_store_init",
						0
					],
					"destination": [
						"preset_store_int",
						0
					],
					"hidden": 1
				}
			},
			{
				"patchline": {
					"source": [
						"preset_menu",
						0
					],
					"destination": [
						"v6_menu_split",
						0
					],
					"hidden": 1
				}
			},
			{
				"patchline": {
					"source": [
						"v6_menu_split",
						0
					],
					"destination": [
						"preset_plusone",
						0
					],
					"hidden": 1
				}
			},
			{
				"patchline": {
					"source": [
						"preset_plusone",
						0
					],
					"destination": [
						"v6_menu_store_set",
						0
					],
					"hidden": 1
				}
			},
			{
				"patchline": {
					"source": [
						"v6_menu_store_set",
						0
					],
					"destination": [
						"preset_store_int",
						0
					],
					"hidden": 1
				}
			},
			{
				"patchline": {
					"source": [
						"preset_plusone",
						0
					],
					"destination": [
						"preset_recall_prepend",
						0
					],
					"hidden": 1
				}
			},
			{
				"patchline": {
					"source": [
						"v6_external_preset",
						0
					],
					"destination": [
						"v6_external_split",
						0
					],
					"hidden": 1
				}
			},
			{
				"patchline": {
					"source": [
						"v6_external_split",
						0
					],
					"destination": [
						"v6_external_trigger",
						0
					],
					"hidden": 1
				}
			},
			{
				"patchline": {
					"source": [
						"v6_external_trigger",
						2
					],
					"destination": [
						"preset_recall_prepend",
						0
					],
					"hidden": 1
				}
			},
			{
				"patchline": {
					"source": [
						"v6_external_trigger",
						1
					],
					"destination": [
						"v6_store_set",
						0
					],
					"hidden": 1
				}
			},
			{
				"patchline": {
					"source": [
						"v6_store_set",
						0
					],
					"destination": [
						"preset_store_int",
						0
					],
					"hidden": 1
				}
			},
			{
				"patchline": {
					"source": [
						"v6_external_trigger",
						0
					],
					"destination": [
						"v6_menu_minus",
						0
					],
					"hidden": 1
				}
			},
			{
				"patchline": {
					"source": [
						"v6_menu_minus",
						0
					],
					"destination": [
						"v6_menu_set",
						0
					],
					"hidden": 1
				}
			},
			{
				"patchline": {
					"source": [
						"v6_menu_set",
						0
					],
					"destination": [
						"preset_menu",
						0
					],
					"hidden": 1
				}
			},
			{
				"patchline": {
					"source": [
						"src_selector",
						0
					],
					"destination": [
						"v6_input_send",
						0
					],
					"hidden": 0
				}
			},
			{
				"patchline": {
					"source": [
						"x_obj",
						0
					],
					"destination": [
						"v6_out_send_0",
						0
					],
					"hidden": 0
				}
			},
			{
				"patchline": {
					"source": [
						"v6_out_receive_0",
						0
					],
					"destination": [
						"fx_gain",
						0
					],
					"hidden": 0
				}
			},
			{
				"patchline": {
					"source": [
						"x_obj",
						1
					],
					"destination": [
						"v6_out_send_1",
						0
					],
					"hidden": 0
				}
			},
			{
				"patchline": {
					"source": [
						"v6_out_receive_1",
						0
					],
					"destination": [
						"fx_gain",
						1
					],
					"hidden": 0
				}
			},
			{
				"patchline": {
					"source": [
						"v6_win_active",
						0
					],
					"destination": [
						"v6_win_sel",
						0
					],
					"hidden": 1
				}
			},
			{
				"patchline": {
					"source": [
						"v6_win_sel",
						0
					],
					"destination": [
						"v6_win_one",
						0
					],
					"hidden": 1
				}
			},
			{
				"patchline": {
					"source": [
						"v6_win_one",
						0
					],
					"destination": [
						"v6_win_delay",
						0
					],
					"hidden": 1
				}
			},
			{
				"patchline": {
					"source": [
						"v6_win_delay",
						0
					],
					"destination": [
						"v6_win_msg",
						0
					],
					"hidden": 1
				}
			},
			{
				"patchline": {
					"source": [
						"v6_win_msg",
						0
					],
					"destination": [
						"v6_win_this",
						0
					],
					"hidden": 1
				}
			}
		],
		"dependency_cache": [
			{
				"name": "drumLoop.aif",
				"bootpath": ".",
				"type": "AIFF",
				"implicit": 1
			},
			{
				"name": "abl_help_state_capture.js",
				"bootpath": ".",
				"type": "TEXT",
				"implicit": 1
			},
			{
				"name": "abl_help_preset_bank.js",
				"bootpath": ".",
				"type": "TEXT",
				"implicit": 1
			},
			{
				"name": "abl_help_randomizer.js",
				"bootpath": ".",
				"type": "TEXT",
				"implicit": 1
			},
			{
				"name": "abl_help_bootstrap.js",
				"bootpath": ".",
				"type": "TEXT",
				"implicit": 1
			}
		],
		"openrect": [
			37,
			288,
			1239,
			592
		],
		"openrectmode": 0
	}
}
