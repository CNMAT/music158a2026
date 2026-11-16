{
	"patcher": {
		"fileversion": 1,
		"appversion": {
			"major": 9,
			"minor": 2,
			"revision": 1,
			"architecture": "x64",
			"modernui": 1
		},
		"classnamespace": "box",
		"openrect": [
			37,
			288,
			1239,
			592
		],
		"openrectmode": 0,
		"boxes": [
			{
				"box": {
					"hidden": 1,
					"id": "obj-55",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 2,
					"outlettype": [
						"",
						""
					],
					"patching_rect": [
						604,
						110,
						55,
						22
					],
					"text": "route set"
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-54",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						759,
						110,
						41,
						22
					],
					"text": "set $1"
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-46",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"int"
					],
					"patching_rect": [
						716,
						110,
						29.5,
						22
					],
					"text": "+ 1"
				}
			},
			{
				"box": {
					"id": "obj-20",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						767,
						87,
						48,
						20
					],
					"text": "careful!"
				}
			},
			{
				"box": {
					"id": "obj-9",
					"maxclass": "meter~",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"float"
					],
					"patching_rect": [
						89,
						369,
						80,
						12
					]
				}
			},
			{
				"box": {
					"id": "obj-19",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						841,
						287,
						48,
						20
					],
					"text": "careful!"
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
					"hint": "External signal input: send~ AMXD_FilterTaps",
					"id": "obj-31",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						896,
						243,
						244,
						22
					],
					"text": "receive~ AMXD_FilterTaps_out_MONO"
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
					"hint": "External signal input: send~ AMXD_FilterTaps",
					"id": "obj-28",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						613,
						404,
						231,
						22
					],
					"text": "send~ AMXD_FilterTaps_out_MONO"
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
					"hint": "External signal input: send~ AMXD_FilterTaps",
					"id": "obj-24",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						66,
						342,
						215,
						22
					],
					"text": "receive~ AMXD_FilterTaps_out_R"
				}
			},
			{
				"box": {
					"id": "obj-23",
					"maxclass": "number",
					"maximum": 24,
					"minimum": 1,
					"mousefilter": 1,
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"bang"
					],
					"parameter_enable": 0,
					"patching_rect": [
						898,
						355,
						50,
						22
					]
				}
			},
			{
				"box": {
					"format": 6,
					"id": "obj-21",
					"maxclass": "flonum",
					"maximum": 12,
					"minimum": -80,
					"mousefilter": 1,
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"bang"
					],
					"parameter_enable": 0,
					"patching_rect": [
						896,
						282,
						50,
						22
					]
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
					"hint": "External signal input: send~ AMXD_FilterTaps",
					"id": "obj-18",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						896,
						209,
						215,
						22
					],
					"text": "receive~ AMXD_FilterTaps_out_R"
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
					"hint": "External signal input: send~ AMXD_FilterTaps",
					"id": "obj-17",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						613,
						430,
						202,
						22
					],
					"text": "send~ AMXD_FilterTaps_out_R"
				}
			},
			{
				"box": {
					"id": "obj-16",
					"maxclass": "meter~",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"float"
					],
					"patching_rect": [
						548,
						291,
						80,
						12
					]
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
					"hint": "External signal input: send~ AMXD_FilterTaps",
					"id": "obj-8",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						92,
						233.5,
						196,
						22
					],
					"text": "send~ AMXD_FilterTaps_send"
				}
			},
			{
				"box": {
					"id": "obj-53",
					"linecount": 2,
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						947,
						276.5,
						164,
						33
					],
					"text": "set gain level on output effect\n-80-0.0 dBa"
				}
			},
			{
				"box": {
					"id": "obj-52",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						956,
						357,
						148,
						20
					],
					"text": "recall a stored preset 1-24"
				}
			},
			{
				"box": {
					"id": "obj-51",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						896,
						149,
						241,
						20
					],
					"text": "receive output effect signal to patch or dac~"
				}
			},
			{
				"box": {
					"id": "obj-50",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						896,
						77,
						115,
						20
					],
					"text": "send signal to effect"
				}
			},
			{
				"box": {
					"color": [
						0.4392156862745098,
						0.596078431372549,
						0.8313725490196079,
						1
					],
					"hint": "External signal input: send~ AMXD_FilterTaps",
					"id": "obj-48",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						898,
						383.5,
						197,
						22
					],
					"text": "send AMXD_FilterTaps_preset"
				}
			},
			{
				"box": {
					"color": [
						0.439,
						0.596,
						0.831,
						1
					],
					"hint": "External signal input: send~ AMXD_FilterTaps",
					"id": "obj-44",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						896,
						312,
						226,
						22
					],
					"text": "send AMXD_FilterTaps_output_gain"
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
					"hint": "External signal input: send~ AMXD_FilterTaps",
					"id": "obj-45",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						896,
						176,
						213,
						22
					],
					"text": "receive~ AMXD_FilterTaps_out_L"
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
					"hint": "External signal input: send~ AMXD_FilterTaps",
					"id": "obj-47",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						896,
						101,
						196,
						22
					],
					"text": "send~ AMXD_FilterTaps_send"
				}
			},
			{
				"box": {
					"fontface": 1,
					"fontsize": 13,
					"id": "obj-43",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						7.5,
						103,
						242,
						21
					],
					"text": "(for testing and building presets only)"
				}
			},
			{
				"box": {
					"fontface": 1,
					"fontsize": 13,
					"id": "obj-42",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						412,
						54,
						432,
						21
					],
					"text": "(copy and paste this full panel for full function in a separate patcher)"
				}
			},
			{
				"box": {
					"id": "obj-40",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						768,
						259,
						103,
						20
					],
					"text": "last loaded preset"
				}
			},
			{
				"box": {
					"bgcolor": [
						0.29411764705882354,
						0.6313725490196078,
						0.5372549019607843,
						1
					],
					"bgcolor2": [
						0.2,
						0.2,
						0.2,
						1
					],
					"bgfillcolor_angle": 270,
					"bgfillcolor_autogradient": 0,
					"bgfillcolor_color": [
						0.29411764705882354,
						0.6313725490196078,
						0.5372549019607843,
						1
					],
					"bgfillcolor_color1": [
						0.29411764705882354,
						0.6313725490196078,
						0.5372549019607843,
						1
					],
					"bgfillcolor_color2": [
						0.2,
						0.2,
						0.2,
						1
					],
					"bgfillcolor_proportion": 0.5,
					"bgfillcolor_type": "gradient",
					"fontsize": 9,
					"gradient": 1,
					"id": "obj-34",
					"linecount": 7,
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						415,
						167,
						456,
						79
					],
					"text": "live.toggle 0.5, mute5 0.5, mute4 0.5, seq11 0.5, seq22 0.5, mute1 0.5, freezeAll 0.5, \"slew rate\" 250, seq6 0.5, seq17 0.5, \"harmonic limit\" 12, \"change bug\" 0.5, \"mult bug\" 0.5, seq1 0.5, seq12 0.5, seq23 0.5, seq7 0.5, seq18 0.5, seq2 0.5, \"frequency adder\" 0, seq13 0.5, \"frequency multiplier\" 4, seq25 0.5, seq24 0.5, level 0, seq8 0.5, seq19 0.5, resonance 100, seq3 0.5, seq14 0.5, mute2 0.5, seq9 0.5, seq20 0.5, \"diffussion rate\" 2.5, \"damp rate\" 2.5, seq4 0.5, rnd_range 50, rand_all_period 30002.5, seq15 0.5, rand_all_switch 0.5, rand_cell_switch 0.5, rand_period 30002.5, mute3 0.5, cell_update 30002.5, cell_update_switch 0.5, \"base frequency\" 100, seq10 0.5, seq21 0.5, seq5 0.5, \"change rate\" 37.5, seq16 0.5, Final_Output_Gain -65.",
					"varname": "last_preset_display"
				}
			},
			{
				"box": {
					"bgcolor": [
						0,
						0.6941176470588235,
						0.6549019607843137,
						1
					],
					"id": "obj-30",
					"maxclass": "newobj",
					"numinlets": 4,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						""
					],
					"patcher": {
						"fileversion": 1,
						"appversion": {
							"major": 9,
							"minor": 2,
							"revision": 1,
							"architecture": "x64",
							"modernui": 1
						},
						"classnamespace": "box",
						"rect": [
							56,
							118,
							1574,
							799
						],
						"boxes": [
							{
								"box": {
									"id": "obj-74",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"int"
									],
									"patching_rect": [
										36,
										85,
										29.5,
										22
									],
									"text": "- 1"
								}
							},
							{
								"box": {
									"id": "obj-73",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										81.5,
										164.5,
										41,
										22
									],
									"text": "set $1"
								}
							},
							{
								"box": {
									"id": "obj-71",
									"linecount": 2,
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										113.5,
										188,
										39,
										33
									],
									"text": "set\nmenu"
								}
							},
							{
								"box": {
									"id": "obj-8",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"int",
										"int"
									],
									"patching_rect": [
										71,
										59,
										29.5,
										22
									],
									"text": "t i i"
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-7",
									"index": 2,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										81.5,
										188,
										30,
										30
									]
								}
							},
							{
								"box": {
									"id": "obj-70",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										73.5,
										2604,
										141,
										20
									],
									"text": "Preset message to effect"
								}
							},
							{
								"box": {
									"id": "obj-69",
									"linecount": 3,
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										456,
										2604,
										204,
										47
									],
									"text": "LAST PRESET Message formatted \ninto a single message ready to send \ndirectly to the effect out"
								}
							},
							{
								"box": {
									"id": "obj-68",
									"maxclass": "newobj",
									"numinlets": 3,
									"numoutlets": 2,
									"outlettype": [
										"int",
										"int"
									],
									"patching_rect": [
										71,
										85,
										57,
										22
									],
									"text": "split 1 24"
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
										48,
										3,
										716,
										27
									],
									"text": "AMXD Presets — empty startup; 150 ms fade-out / recall / 150 ms fade-in"
								}
							},
							{
								"box": {
									"id": "obj-5",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 3,
									"outlettype": [
										"",
										"",
										""
									],
									"patching_rect": [
										334,
										96,
										325,
										22
									],
									"saved_object_attributes": {
										"filename": "amxd_preset_collection.js",
										"parameter_enable": 0
									},
									"text": "js amxd_preset_collection.js AMXD_FilterTaps 150 -80"
								}
							},
							{
								"box": {
									"id": "obj-11",
									"maxclass": "newobj",
									"numinlets": 3,
									"numoutlets": 3,
									"outlettype": [
										"",
										"",
										""
									],
									"patching_rect": [
										334,
										41,
										238,
										22
									],
									"text": "route preset /filtertaps/preset",
									"varname": "preset_osc_route"
								}
							},
							{
								"box": {
									"hint": "Converts either routed preset number into an explicit recall N command.",
									"id": "obj-12",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										334,
										67,
										70,
										22
									],
									"text": "recall $1",
									"varname": "preset_osc_recall_message"
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 10,
									"id": "obj-10",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										100,
										138,
										68,
										18
									],
									"text": "PRESET 1"
								}
							},
							{
								"box": {
									"fontsize": 8.5,
									"hint": "Preset 1: source AMXD explicit defaults, with recognized overall wet/dry controls forced to their declared maximum (100% wet). Parameters lacking an explicit source initial value are not invented.",
									"id": "obj-13",
									"linecount": 8,
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										175,
										138,
										416,
										84
									],
									"text": "delay_rel3 2500.5, [40] 2500.5, pitch5 0, global_delay_scale 5.5, delay_rel4 2500.5, [5] 2500.5, pitch3 0, pitch6 0, gain5 150.5, global_q 0.5, pan4 0, pitch4 0, gain3 150.5, pan6 0, fb_gain 0.5, [35] 2500.5, gain[5] 150.5, pan3 0, [23] 150.5, [2] 10000, [18] 2500.5, dry/wet 100, [32] 10000, delay_rel6 2500.5, [26] 10000, [38] 2500.5, global_freq_scale 50.5, [14] 0, [27] 2500.5, [3] 2500.5, [34] 2500.5, pan2 0, gain2 150.5, [21] 10000, [1] 10000, pan5 0, pitch2 0, global_gain 0, [22] 2500.5, delay_rel5 2500.5, delay_rel2 2500.5, [15] 10000, [30] 50, gain6 150.5, Final_Output_Gain -65.",
									"varname": "preset_slot_1"
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 10,
									"id": "obj-15",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										100,
										238,
										68,
										18
									],
									"text": "PRESET 2"
								}
							},
							{
								"box": {
									"fontsize": 8.5,
									"hint": "Editable stored AMXD preset slot 2. Click to audition directly.",
									"id": "obj-16",
									"linecount": 8,
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										175,
										238,
										420,
										84
									],
									"text": "delay_rel3 1700.66, [40] 1700.66, pitch5 -15.36, global_delay_scale 4.06, delay_rel4 1700.66, [5] 1700.66, pitch3 -15.36, pitch6 -15.36, gain5 102.66, global_q 0.34, pan4 -40.64, pitch4 -15.36, gain3 102.66, pan6 -40.64, fb_gain 0.34, [35] 1700.66, gain[5] 102.66, pan3 -40.64, [23] 102.66, [2] 6800., [18] 1700.66, dry/wet 100., [32] 6800., delay_rel6 1700.66, [26] 6800., [38] 1700.66, global_freq_scale 34.66, [14] -40.64, [27] 1700.66, [3] 1700.66, [34] 1700.66, pan2 -40.64, gain2 102.66, [21] 6800., [1] 6800., pan5 -40.64, pitch2 -15.36, global_gain 0., [22] 1700.66, delay_rel5 1700.66, delay_rel2 1700.66, [15] 6800., [30] 34., gain6 102.66, Final_Output_Gain -65.",
									"varname": "preset_slot_2"
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 10,
									"id": "obj-17",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										100,
										338,
										68,
										18
									],
									"text": "PRESET 3"
								}
							},
							{
								"box": {
									"fontsize": 8.5,
									"hint": "Editable stored AMXD preset slot 3. Click to audition directly.",
									"id": "obj-18",
									"linecount": 8,
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										175,
										338,
										386,
										84
									],
									"text": "delay_rel3 3300.34, [40] 3300.34, pitch5 15.36, global_delay_scale 6.94, delay_rel4 3300.34, [5] 3300.34, pitch3 15.36, pitch6 15.36, gain5 198.34, global_q 0.66, pan4 40.64, pitch4 15.36, gain3 198.34, pan6 40.64, fb_gain 0.66, [35] 3300.34, gain[5] 198.34, pan3 40.64, [23] 198.34, [2] 13200., [18] 3300.34, dry/wet 100., [32] 13200., delay_rel6 3300.34, [26] 13200., [38] 3300.34, global_freq_scale 66.34, [14] 40.64, [27] 3300.34, [3] 3300.34, [34] 3300.34, pan2 40.64, gain2 198.34, [21] 13200., [1] 13200., pan5 40.64, pitch2 15.36, global_gain 0., [22] 3300.34, delay_rel5 3300.34, delay_rel2 3300.34, [15] 13200., [30] 66., gain6 198.34, Final_Output_Gain -65.",
									"varname": "preset_slot_3"
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 10,
									"id": "obj-19",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										100,
										438,
										68,
										18
									],
									"text": "PRESET 4"
								}
							},
							{
								"box": {
									"fontsize": 8.5,
									"hint": "Editable stored AMXD preset slot 4. Click to audition directly.",
									"id": "obj-21",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										175,
										438,
										454,
										18
									],
									"varname": "preset_slot_4",
									"text": ""
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 10,
									"id": "obj-23",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										100,
										538,
										68,
										18
									],
									"text": "PRESET 5"
								}
							},
							{
								"box": {
									"fontsize": 8.5,
									"hint": "Editable stored AMXD preset slot 5. Click to audition directly.",
									"id": "obj-26",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										175,
										538,
										454,
										18
									],
									"varname": "preset_slot_5",
									"text": ""
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 10,
									"id": "obj-27",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										100,
										638,
										68,
										18
									],
									"text": "PRESET 6"
								}
							},
							{
								"box": {
									"fontsize": 8.5,
									"hint": "Editable stored AMXD preset slot 6. Click to audition directly.",
									"id": "obj-30",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										175,
										638,
										454,
										18
									],
									"varname": "preset_slot_6",
									"text": ""
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 10,
									"id": "obj-31",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										100,
										738,
										68,
										18
									],
									"text": "PRESET 7"
								}
							},
							{
								"box": {
									"fontsize": 8.5,
									"hint": "Editable stored AMXD preset slot 7. Click to audition directly.",
									"id": "obj-32",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										175,
										738,
										454,
										18
									],
									"varname": "preset_slot_7",
									"text": ""
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 10,
									"id": "obj-33",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										100,
										838,
										68,
										18
									],
									"text": "PRESET 8"
								}
							},
							{
								"box": {
									"fontsize": 8.5,
									"hint": "Editable stored AMXD preset slot 8. Click to audition directly.",
									"id": "obj-34",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										175,
										838,
										454,
										18
									],
									"varname": "preset_slot_8",
									"text": ""
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 10,
									"id": "obj-35",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										100,
										938,
										68,
										18
									],
									"text": "PRESET 9"
								}
							},
							{
								"box": {
									"fontsize": 8.5,
									"hint": "Editable stored AMXD preset slot 9. Click to audition directly.",
									"id": "obj-36",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										175,
										938,
										454,
										18
									],
									"varname": "preset_slot_9",
									"text": ""
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 10,
									"id": "obj-37",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										100,
										1038,
										68,
										18
									],
									"text": "PRESET 10"
								}
							},
							{
								"box": {
									"fontsize": 8.5,
									"hint": "Editable stored AMXD preset slot 10. Click to audition directly.",
									"id": "obj-38",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										175,
										1038,
										454,
										18
									],
									"varname": "preset_slot_10",
									"text": ""
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 10,
									"id": "obj-39",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										100,
										1138,
										68,
										18
									],
									"text": "PRESET 11"
								}
							},
							{
								"box": {
									"fontsize": 8.5,
									"hint": "Editable stored AMXD preset slot 11. Click to audition directly.",
									"id": "obj-40",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										175,
										1138,
										454,
										18
									],
									"varname": "preset_slot_11",
									"text": ""
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 10,
									"id": "obj-41",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										100,
										1238,
										68,
										18
									],
									"text": "PRESET 12"
								}
							},
							{
								"box": {
									"fontsize": 8.5,
									"hint": "Editable stored AMXD preset slot 12. Click to audition directly.",
									"id": "obj-42",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										175,
										1238,
										454,
										18
									],
									"varname": "preset_slot_12",
									"text": ""
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 10,
									"id": "obj-43",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										100,
										1338,
										68,
										18
									],
									"text": "PRESET 13"
								}
							},
							{
								"box": {
									"fontsize": 8.5,
									"hint": "Editable stored AMXD preset slot 13. Click to audition directly.",
									"id": "obj-44",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										175,
										1338,
										454,
										18
									],
									"varname": "preset_slot_13",
									"text": ""
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 10,
									"id": "obj-45",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										100,
										1438,
										68,
										18
									],
									"text": "PRESET 14"
								}
							},
							{
								"box": {
									"fontsize": 8.5,
									"hint": "Editable stored AMXD preset slot 14. Click to audition directly.",
									"id": "obj-46",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										175,
										1438,
										454,
										18
									],
									"varname": "preset_slot_14",
									"text": ""
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 10,
									"id": "obj-47",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										100,
										1538,
										68,
										18
									],
									"text": "PRESET 15"
								}
							},
							{
								"box": {
									"fontsize": 8.5,
									"hint": "Editable stored AMXD preset slot 15. Click to audition directly.",
									"id": "obj-48",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										175,
										1538,
										454,
										18
									],
									"varname": "preset_slot_15",
									"text": ""
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 10,
									"id": "obj-49",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										100,
										1638,
										68,
										18
									],
									"text": "PRESET 16"
								}
							},
							{
								"box": {
									"fontsize": 8.5,
									"hint": "Editable stored AMXD preset slot 16. Click to audition directly.",
									"id": "obj-50",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										175,
										1638,
										454,
										18
									],
									"varname": "preset_slot_16",
									"text": ""
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 10,
									"id": "obj-51",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										100,
										1738,
										68,
										18
									],
									"text": "PRESET 17"
								}
							},
							{
								"box": {
									"fontsize": 8.5,
									"hint": "Editable stored AMXD preset slot 17. Click to audition directly.",
									"id": "obj-52",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										175,
										1738,
										454,
										18
									],
									"varname": "preset_slot_17",
									"text": ""
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 10,
									"id": "obj-53",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										100,
										1838,
										68,
										18
									],
									"text": "PRESET 18"
								}
							},
							{
								"box": {
									"fontsize": 8.5,
									"hint": "Editable stored AMXD preset slot 18. Click to audition directly.",
									"id": "obj-54",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										175,
										1838,
										454,
										18
									],
									"varname": "preset_slot_18",
									"text": ""
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 10,
									"id": "obj-55",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										100,
										1938,
										68,
										18
									],
									"text": "PRESET 19"
								}
							},
							{
								"box": {
									"fontsize": 8.5,
									"hint": "Editable stored AMXD preset slot 19. Click to audition directly.",
									"id": "obj-56",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										175,
										1938,
										454,
										18
									],
									"varname": "preset_slot_19",
									"text": ""
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 10,
									"id": "obj-57",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										100,
										2038,
										68,
										18
									],
									"text": "PRESET 20"
								}
							},
							{
								"box": {
									"fontsize": 8.5,
									"hint": "Editable stored AMXD preset slot 20. Click to audition directly.",
									"id": "obj-58",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										175,
										2038,
										454,
										18
									],
									"varname": "preset_slot_20",
									"text": ""
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 10,
									"id": "obj-59",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										100,
										2138,
										68,
										18
									],
									"text": "PRESET 21"
								}
							},
							{
								"box": {
									"fontsize": 8.5,
									"hint": "Editable stored AMXD preset slot 21. Click to audition directly.",
									"id": "obj-60",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										175,
										2138,
										454,
										18
									],
									"varname": "preset_slot_21",
									"text": ""
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 10,
									"id": "obj-61",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										100,
										2238,
										68,
										18
									],
									"text": "PRESET 22"
								}
							},
							{
								"box": {
									"fontsize": 8.5,
									"hint": "Editable stored AMXD preset slot 22. Click to audition directly.",
									"id": "obj-62",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										175,
										2238,
										454,
										18
									],
									"varname": "preset_slot_22",
									"text": ""
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 10,
									"id": "obj-63",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										100,
										2338,
										68,
										18
									],
									"text": "PRESET 23"
								}
							},
							{
								"box": {
									"fontsize": 8.5,
									"hint": "Editable stored AMXD preset slot 23. Click to audition directly.",
									"id": "obj-64",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										175,
										2338,
										454,
										18
									],
									"varname": "preset_slot_23",
									"text": ""
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 10,
									"id": "obj-65",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										100,
										2438,
										68,
										18
									],
									"text": "PRESET 24"
								}
							},
							{
								"box": {
									"fontsize": 8.5,
									"hint": "Editable stored AMXD preset slot 24. Click to audition directly.",
									"id": "obj-66",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										175,
										2438,
										454,
										18
									],
									"varname": "preset_slot_24",
									"text": ""
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
									"hint": "External signal input: send~ AMXD_FilterTaps",
									"id": "obj-14",
									"maxclass": "newobj",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										71,
										32,
										209,
										22
									],
									"text": "receive AMXD_FilterTaps_preset"
								}
							},
							{
								"box": {
									"bgcolor": [
										0.26666666666666666,
										0.8901960784313725,
										0.25098039215686274,
										1
									],
									"bgcolor2": [
										0.26666666666666666,
										0.8901960784313725,
										0.25098039215686274,
										1
									],
									"bgfillcolor_angle": 270,
									"bgfillcolor_autogradient": 0,
									"bgfillcolor_color": [
										0.23529411764705882,
										0.7215686274509804,
										0.1607843137254902,
										1
									],
									"bgfillcolor_color1": [
										0.26666666666666666,
										0.8901960784313725,
										0.25098039215686274,
										1
									],
									"bgfillcolor_color2": [
										0.2,
										0.2,
										0.2,
										1
									],
									"bgfillcolor_proportion": 0.5,
									"bgfillcolor_type": "color",
									"gradient": 1,
									"id": "obj-6",
									"linecount": 5,
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										712,
										2567,
										831,
										76
									],
									"text": "live.toggle 0.5, mute5 0.5, mute4 0.5, seq11 0.5, seq22 0.5, mute1 0.5, freezeAll 0.5, \"slew rate\" 250, seq6 0.5, seq17 0.5, \"harmonic limit\" 12, \"change bug\" 0.5, \"mult bug\" 0.5, seq1 0.5, seq12 0.5, seq23 0.5, seq7 0.5, seq18 0.5, seq2 0.5, \"frequency adder\" 0, seq13 0.5, \"frequency multiplier\" 4, seq25 0.5, seq24 0.5, level 0, seq8 0.5, seq19 0.5, resonance 100, seq3 0.5, seq14 0.5, mute2 0.5, seq9 0.5, seq20 0.5, \"diffussion rate\" 2.5, \"damp rate\" 2.5, seq4 0.5, rnd_range 50, rand_all_period 30002.5, seq15 0.5, rand_all_switch 0.5, rand_cell_switch 0.5, rand_period 30002.5, mute3 0.5, cell_update 30002.5, cell_update_switch 0.5, \"base frequency\" 100, seq10 0.5, seq21 0.5, seq5 0.5, \"change rate\" 37.5, seq16 0.5, Final_Output_Gain -65.",
									"textcolor": [
										0,
										0,
										0,
										1
									],
									"varname": "fx_preset_recall"
								}
							},
							{
								"box": {
									"id": "obj-4",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										711,
										2540,
										498,
										20
									],
									"text": "CURRENT/LAST PRESET — cleared at startup and whenever an empty slot is recalled"
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-3",
									"index": 3,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										666,
										2604,
										30,
										30
									]
								}
							},
							{
								"box": {
									"id": "obj-2",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										66,
										2545,
										152,
										20
									],
									"text": "preset parameters to effect"
								}
							},
							{
								"box": {
									"id": "obj-20",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										129,
										85,
										162,
										20
									],
									"text": "external preset number 1–24"
								}
							},
							{
								"box": {
									"id": "obj-95",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										36,
										2567,
										300,
										22
									],
									"saved_object_attributes": {
										"filename": "amxd_parameter_preset_dump.js",
										"parameter_enable": 0
									},
									"text": "js amxd_parameter_preset_dump.js",
									"varname": "fx_preset_dump_js"
								}
							},
							{
								"box": {
									"id": "obj-98",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"int"
									],
									"patching_rect": [
										668,
										79,
										34,
										22
									],
									"text": "+ 1",
									"varname": "preset_slot_plusone"
								}
							},
							{
								"box": {
									"id": "obj-99",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"int"
									],
									"patching_rect": [
										708,
										79,
										40,
										22
									],
									"text": "int 1",
									"varname": "preset_store_int"
								}
							},
							{
								"box": {
									"id": "obj-100",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"int"
									],
									"patching_rect": [
										750,
										79,
										40,
										22
									],
									"text": "int 1",
									"varname": "preset_recall_int"
								}
							},
							{
								"box": {
									"id": "obj-105",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										708,
										103,
										86,
										22
									],
									"text": "prepend store",
									"varname": "preset_store_prepend"
								}
							},
							{
								"box": {
									"id": "obj-106",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										798,
										103,
										90,
										22
									],
									"text": "prepend recall",
									"varname": "preset_recall_prepend"
								}
							},
							{
								"box": {
									"fontsize": 9,
									"id": "obj-108",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										900,
										5,
										238,
										17
									],
									"text": "double-click to edit 24 stored message presets",
									"varname": "preset_collection_note"
								}
							},
							{
								"box": {
									"fontsize": 9.5,
									"hint": "Editable OSC-style preset recall. Change 1 to any slot 1–24 and click. For external control send the same message to [s harmonicfilter].",
									"id": "obj-111",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										71,
										114,
										110,
										19
									],
									"text": "/filtertaps/preset $1",
									"varname": "preset_main_recall_message"
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-22",
									"index": 1,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										631,
										41,
										30,
										30
									]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-24",
									"index": 2,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"int"
									],
									"patching_rect": [
										668,
										41,
										30,
										30
									]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-25",
									"index": 3,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										708,
										41,
										30,
										30
									]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-29",
									"index": 1,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										36,
										2599,
										30,
										30
									]
								}
							},
							{
								"box": {
									"hidden": 1,
									"id": "obj-200",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										454,
										2567,
										60,
										22
									],
									"text": "route set"
								}
							},
							{
								"box": {
									"hidden": 1,
									"id": "obj-201",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										"bang"
									],
									"patching_rect": [
										522,
										2567,
										30,
										22
									],
									"text": "t b"
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-400",
									"index": 4,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"bang"
									],
									"patching_rect": [
										748,
										41,
										30,
										30
									]
								}
							},
							{
								"box": {
									"id": "obj-401",
									"maxclass": "newobj",
									"numinlets": 3,
									"numoutlets": 2,
									"outlettype": [
										"int",
										"int"
									],
									"patching_rect": [
										900,
										79,
										65,
										22
									],
									"text": "split 0 23"
								}
							},
							{
								"box": {
									"id": "obj-402",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										900,
										105,
										70,
										22
									],
									"text": "no_preset"
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"destination": [
										"obj-106",
										0
									],
									"hidden": 1,
									"source": [
										"obj-100",
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
										"obj-105",
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
										"obj-106",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-12",
										0
									],
									"hidden": 1,
									"source": [
										"obj-11",
										1
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-12",
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
										"obj-5",
										0
									],
									"hidden": 1,
									"source": [
										"obj-11",
										2
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
										"obj-111",
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
										"obj-12",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-5",
										1
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
										"obj-8",
										0
									],
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
										1
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
										1
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
										"obj-201",
										0
									],
									"hidden": 1,
									"source": [
										"obj-200",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-99",
										0
									],
									"hidden": 1,
									"source": [
										"obj-201",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-5",
										1
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
										"obj-95",
										1
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
										"obj-401",
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
										"obj-99",
										1
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
										"obj-5",
										1
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
										"obj-5",
										1
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
										"obj-5",
										1
									],
									"hidden": 1,
									"source": [
										"obj-32",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-5",
										1
									],
									"hidden": 1,
									"source": [
										"obj-34",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-5",
										1
									],
									"hidden": 1,
									"source": [
										"obj-36",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-5",
										1
									],
									"hidden": 1,
									"source": [
										"obj-38",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-5",
										1
									],
									"hidden": 1,
									"source": [
										"obj-40",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-95",
										0
									],
									"hidden": 1,
									"source": [
										"obj-400",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-402",
										0
									],
									"hidden": 1,
									"source": [
										"obj-401",
										1
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-98",
										0
									],
									"hidden": 1,
									"source": [
										"obj-401",
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
										"obj-402",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-5",
										1
									],
									"hidden": 1,
									"source": [
										"obj-42",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-5",
										1
									],
									"hidden": 1,
									"source": [
										"obj-44",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-5",
										1
									],
									"hidden": 1,
									"source": [
										"obj-46",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-5",
										1
									],
									"hidden": 1,
									"source": [
										"obj-48",
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
										"obj-5",
										1
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-7",
										0
									],
									"hidden": 1,
									"source": [
										"obj-5",
										2
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-95",
										0
									],
									"hidden": 1,
									"source": [
										"obj-5",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-5",
										1
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
										"obj-5",
										1
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
										"obj-5",
										1
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
										"obj-5",
										1
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
										"obj-5",
										1
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
										"obj-5",
										1
									],
									"hidden": 1,
									"source": [
										"obj-6",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-5",
										1
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
										"obj-5",
										1
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
										"obj-5",
										1
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
										"obj-5",
										1
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
										"obj-111",
										0
									],
									"source": [
										"obj-68",
										0
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
										"obj-73",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-73",
										0
									],
									"source": [
										"obj-74",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-68",
										0
									],
									"source": [
										"obj-8",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-74",
										0
									],
									"source": [
										"obj-8",
										1
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-200",
										0
									],
									"hidden": 1,
									"order": 1,
									"source": [
										"obj-95",
										1
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-29",
										0
									],
									"hidden": 1,
									"source": [
										"obj-95",
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
									"order": 0,
									"source": [
										"obj-95",
										1
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-100",
										0
									],
									"hidden": 1,
									"source": [
										"obj-98",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-105",
										0
									],
									"hidden": 1,
									"source": [
										"obj-99",
										0
									]
								}
							}
						],
						"enablevscroll": 1
					},
					"patching_rect": [
						403,
						137,
						430,
						22
					],
					"text": "p PRESET STORAGE Dbl Clk to Open"
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-15",
					"maxclass": "newobj",
					"numinlets": 3,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						530,
						340,
						61,
						22
					],
					"text": "clip -80 0."
				}
			},
			{
				"box": {
					"color": [
						0.439,
						0.596,
						0.831,
						1
					],
					"hint": "External signal input: send~ AMXD_FilterTaps",
					"id": "obj-14",
					"maxclass": "newobj",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						609,
						344,
						239,
						22
					],
					"text": "receive AMXD_FilterTaps_output_gain"
				}
			},
			{
				"box": {
					"id": "obj-12",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						66,
						273,
						122,
						20
					],
					"text": "effect output receives"
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
					"hint": "External signal input: send~ AMXD_FilterTaps",
					"id": "obj-7",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						66,
						295,
						213,
						22
					],
					"text": "receive~ AMXD_FilterTaps_out_L"
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
					"hint": "External signal input: send~ AMXD_FilterTaps",
					"id": "obj-6",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						401,
						430,
						200,
						22
					],
					"text": "send~ AMXD_FilterTaps_out_L"
				}
			},
			{
				"box": {
					"channels": 1,
					"id": "obj-4",
					"lastchannelcount": 0,
					"maxclass": "live.gain~",
					"numinlets": 1,
					"numoutlets": 4,
					"outlettype": [
						"signal",
						"",
						"float",
						"list"
					],
					"parameter_enable": 1,
					"patching_rect": [
						10,
						233.5,
						43,
						81
					],
					"saved_attribute_attributes": {
						"tribordercolor": {
							"expression": ""
						},
						"tricolor": {
							"expression": ""
						},
						"trioncolor": {
							"expression": ""
						},
						"valueof": {
							"parameter_initial": [
								-80
							],
							"parameter_initial_enable": 1,
							"parameter_longname": "direct out",
							"parameter_mmax": 6,
							"parameter_mmin": -70,
							"parameter_modmode": 3,
							"parameter_shortname": "direct out",
							"parameter_type": 0,
							"parameter_unitstyle": 4
						}
					},
					"tribordercolor": [
						0,
						0,
						0,
						1
					],
					"tricolor": [
						0.054901960784313725,
						0.9450980392156862,
						0,
						1
					],
					"trioncolor": [
						0.055,
						0.945,
						0,
						1
					],
					"varname": "live.gain~[1]"
				}
			},
			{
				"box": {
					"id": "obj-27",
					"items": [
						"MUTED",
						",",
						"noise~",
						",",
						"drumloop.aif",
						",",
						"tone"
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
						92,
						128,
						116,
						22
					]
				}
			},
			{
				"box": {
					"id": "obj-26",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patcher": {
						"fileversion": 1,
						"appversion": {
							"major": 9,
							"minor": 2,
							"revision": 1,
							"architecture": "x64",
							"modernui": 1
						},
						"classnamespace": "box",
						"rect": [
							59,
							119,
							902,
							325
						],
						"boxes": [
							{
								"box": {
									"id": "obj-23",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										868,
										220,
										29.5,
										22
									],
									"text": "720"
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
										831,
										220,
										29.5,
										22
									],
									"text": "360"
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
										789,
										220,
										29.5,
										22
									],
									"text": "270"
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
										750,
										220,
										29.5,
										22
									],
									"text": "180"
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
										672,
										220,
										29.5,
										22
									],
									"text": "45"
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
										711.4,
										220,
										29.5,
										22
									],
									"text": "90"
								}
							},
							{
								"box": {
									"id": "obj-13",
									"maxclass": "newobj",
									"numinlets": 6,
									"numoutlets": 6,
									"outlettype": [
										"bang",
										"bang",
										"bang",
										"bang",
										"bang",
										""
									],
									"patching_rect": [
										672,
										189,
										216,
										22
									],
									"text": "sel 0 1 2 3 4"
								}
							},
							{
								"box": {
									"id": "obj-12",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										672,
										159,
										59,
										22
									],
									"text": "random 5"
								}
							},
							{
								"box": {
									"id": "obj-7",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": [
										"bang",
										""
									],
									"patching_rect": [
										708,
										86,
										34,
										22
									],
									"text": "sel 3"
								}
							},
							{
								"box": {
									"id": "obj-6",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										708,
										126,
										145,
										22
									],
									"text": "0, 1. 20 1. 150 0 30 0 500"
								}
							},
							{
								"box": {
									"id": "obj-4",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": [
										"signal",
										"bang"
									],
									"patching_rect": [
										657,
										126,
										34,
										22
									],
									"text": "line~"
								}
							},
							{
								"box": {
									"id": "obj-3",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										576,
										184,
										34,
										22
									],
									"text": "*~ 0."
								}
							},
							{
								"box": {
									"id": "obj-2",
									"maxclass": "newobj",
									"numinlets": 3,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										576,
										126,
										59,
										22
									],
									"text": "tri~ 180 1"
								}
							},
							{
								"box": {
									"id": "obj-1",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										275,
										202,
										40,
										22
									],
									"text": "*~ 0.1"
								}
							},
							{
								"box": {
									"id": "obj-21",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": [
										"bang",
										""
									],
									"patching_rect": [
										371.5,
										90,
										34,
										22
									],
									"text": "sel 2"
								}
							},
							{
								"box": {
									"id": "obj-15",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"bang",
										"bang"
									],
									"patching_rect": [
										379.5,
										114,
										32,
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
										379.5,
										145,
										29.5,
										22
									],
									"text": "1"
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
										411.5,
										145,
										41,
										22
									],
									"text": "loop 1"
								}
							},
							{
								"box": {
									"id": "obj-75",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										275.83333333333337,
										173,
										51,
										22
									],
									"text": "noise~"
								}
							},
							{
								"box": {
									"fontsize": 9.5,
									"id": "obj-76",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										50,
										143,
										33,
										17
									],
									"text": "Noise"
								}
							},
							{
								"box": {
									"channelcount": 1,
									"clipheight": 20,
									"data": {
										"clips": [
											{
												"absolutepath": "drumLoop.aif",
												"filename": "drumLoop.aif",
												"filekind": "audiofile",
												"id": "drumloop_single",
												"loop": 1,
												"content_state": {
													"loop": 1
												}
											}
										]
									},
									"hint": "Shared demo soundfile: drumLoop.aif",
									"id": "obj-77",
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
										379.5,
										174,
										131,
										21
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
									}
								}
							},
							{
								"box": {
									"hint": "Selects Noise (1), drumLoop.aif (2), or the unconnected MUTED input (3).",
									"id": "obj-78",
									"maxclass": "newobj",
									"numinlets": 5,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										68.5,
										233,
										433.6666666666667,
										22
									],
									"text": "selector~ 4"
								}
							},
							{
								"box": {
									"id": "obj-79",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"int"
									],
									"patching_rect": [
										68.5,
										178,
										36,
										22
									],
									"text": "+ 1"
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-24",
									"index": 1,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"int"
									],
									"patching_rect": [
										68.5,
										35,
										30,
										30
									]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-25",
									"index": 1,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										68.5,
										277,
										30,
										30
									]
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"destination": [
										"obj-78",
										2
									],
									"source": [
										"obj-1",
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
										"obj-17",
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
										"obj-18",
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
										"obj-19",
										0
									],
									"source": [
										"obj-13",
										2
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-20",
										0
									],
									"source": [
										"obj-13",
										3
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-22",
										0
									],
									"source": [
										"obj-13",
										4
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
										"obj-13",
										5
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-77",
										0
									],
									"source": [
										"obj-14",
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
										"obj-15",
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
										"obj-15",
										1
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-2",
										0
									],
									"source": [
										"obj-17",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-2",
										0
									],
									"source": [
										"obj-18",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-2",
										0
									],
									"source": [
										"obj-19",
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
									"source": [
										"obj-2",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-2",
										0
									],
									"source": [
										"obj-20",
										0
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
										"obj-21",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-2",
										0
									],
									"source": [
										"obj-22",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-2",
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
										"obj-21",
										0
									],
									"order": 1,
									"source": [
										"obj-24",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-7",
										0
									],
									"order": 0,
									"source": [
										"obj-24",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-79",
										0
									],
									"order": 2,
									"source": [
										"obj-24",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-78",
										4
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
										"obj-12",
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
										"obj-3",
										1
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
										"obj-1",
										0
									],
									"source": [
										"obj-75",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-78",
										3
									],
									"source": [
										"obj-77",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-25",
										0
									],
									"source": [
										"obj-78",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-78",
										0
									],
									"source": [
										"obj-79",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-77",
										0
									],
									"source": [
										"obj-9",
										0
									]
								}
							}
						]
					},
					"patching_rect": [
						92,
						157,
						116,
						22
					],
					"text": "p audio test sources"
				}
			},
			{
				"box": {
					"id": "obj-5",
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
						401,
						371,
						109,
						47
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_initial": [
								-80
							],
							"parameter_initial_enable": 1,
							"parameter_longname": "effect output gain",
							"parameter_mmax": 0,
							"parameter_mmin": -80,
							"parameter_modmode": 3,
							"parameter_shortname": "effect output gain",
							"parameter_type": 0,
							"parameter_unitstyle": 4
						}
					},
					"varname": "final_output_gain"
				}
			},
			{
				"box": {
					"fontface": 1,
					"fontsize": 22,
					"id": "obj-1",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						24,
						18,
						366,
						31
					],
					"text": "FilterTaps.amxd"
				}
			},
			{
				"box": {
					"fontface": 1,
					"fontsize": 13,
					"id": "obj-2",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						24,
						50,
						320,
						21
					],
					"text": "Filtered Multi-Tap Delay"
				}
			},
			{
				"box": {
					"fontface": 0,
					"fontsize": 11,
					"id": "obj-3",
					"linecount": 2,
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						396,
						18,
						768,
						31
					],
					"text": "Six delay taps each include an independent bandpass filter, gain and pan, plus a seventh feedback tap and global scaling controls."
				}
			},
			{
				"box": {
					"autosave": 1,
					"bgcolor": [
						0.611764705882353,
						0.011764705882352941,
						0.011764705882352941,
						1
					],
					"bgmode": 1,
					"border": 0,
					"clickthrough": 0,
					"enablehscroll": 0,
					"enablevscroll": 0,
					"id": "obj-10",
					"lockeddragscroll": 0,
					"lockedsize": 0,
					"maxclass": "newobj",
					"numinlets": 3,
					"numoutlets": 4,
					"offset": [
						0,
						0
					],
					"outlettype": [
						"signal",
						"signal",
						"",
						""
					],
					"patching_rect": [
						402,
						310,
						286,
						22
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_invisible": 1,
							"parameter_longname": "amxd~",
							"parameter_modmode": 0,
							"parameter_shortname": "amxd~",
							"parameter_type": 3
						}
					},
					"saved_object_attributes": {
						"parameter_enable": 1
					},
					"text": "amxd~ \"FilterTaps\"",
					"varname": "amxd~",
					"viewvisibility": 0
				}
			},
			{
				"box": {
					"bgcolor": [
						0,
						1,
						0.945,
						1
					],
					"bgcolor2": [
						0.2,
						0.2,
						0.2,
						1
					],
					"bgfillcolor_angle": 270,
					"bgfillcolor_autogradient": 0,
					"bgfillcolor_color": [
						0,
						1,
						0.945,
						1
					],
					"bgfillcolor_color1": [
						0,
						1,
						0.945,
						1
					],
					"bgfillcolor_color2": [
						0.2,
						0.2,
						0.2,
						1
					],
					"bgfillcolor_proportion": 0.5,
					"bgfillcolor_type": "gradient",
					"fontsize": 14,
					"gradient": 1,
					"id": "obj-11",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						466,
						267,
						44,
						24
					],
					"text": "open",
					"textcolor": [
						1,
						1,
						1,
						1
					]
				}
			},
			{
				"box": {
					"id": "obj-67",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 0,
					"patching_rect": [
						10,
						426,
						55,
						22
					],
					"text": "dac~ 1 2"
				}
			},
			{
				"box": {
					"bgcolor": [
						0.9058823529411765,
						0.30980392156862746,
						0.30980392156862746,
						1
					],
					"bgcolor2": [
						0.2,
						0.2,
						0.2,
						1
					],
					"bgfillcolor_angle": 270,
					"bgfillcolor_autogradient": 0,
					"bgfillcolor_color": [
						0.9058823529411765,
						0.30980392156862746,
						0.30980392156862746,
						1
					],
					"bgfillcolor_color1": [
						0.9058823529411765,
						0.30980392156862746,
						0.30980392156862746,
						1
					],
					"bgfillcolor_color2": [
						0.2,
						0.2,
						0.2,
						1
					],
					"bgfillcolor_proportion": 0.5,
					"bgfillcolor_type": "gradient",
					"gradient": 1,
					"hint": "Start DSP for this help patch window",
					"id": "obj-68",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						113,
						400,
						78,
						22
					],
					"text": "startwindow"
				}
			},
			{
				"box": {
					"bgcolor": [
						0.9058823529411765,
						0.30980392156862746,
						0.30980392156862746,
						1
					],
					"bgcolor2": [
						0.2,
						0.2,
						0.2,
						1
					],
					"bgfillcolor_angle": 270,
					"bgfillcolor_autogradient": 0,
					"bgfillcolor_color": [
						0.9058823529411765,
						0.30980392156862746,
						0.30980392156862746,
						1
					],
					"bgfillcolor_color1": [
						0.9058823529411765,
						0.30980392156862746,
						0.30980392156862746,
						1
					],
					"bgfillcolor_color2": [
						0.2,
						0.2,
						0.2,
						1
					],
					"bgfillcolor_proportion": 0.5,
					"bgfillcolor_type": "gradient",
					"gradient": 1,
					"hint": "Stop MSP audio processing",
					"id": "obj-69",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						113,
						426,
						42,
						22
					],
					"text": "stop"
				}
			},
			{
				"box": {
					"angle": 270,
					"background": 1,
					"bgcolor": [
						0.8509803921568627,
						0.7803921568627451,
						0.6666666666666666,
						1
					],
					"id": "obj-13",
					"maxclass": "panel",
					"mode": 0,
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						8,
						103,
						308,
						352
					],
					"proportion": 0.5
				}
			},
			{
				"box": {
					"fontface": 1,
					"fontsize": 10,
					"id": "obj-73",
					"linecount": 2,
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						36,
						128,
						56,
						29
					],
					"text": "TEST\nSOURCE"
				}
			},
			{
				"box": {
					"fontface": 1,
					"fontsize": 10,
					"id": "obj-92",
					"linecount": 3,
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						403,
						76,
						57,
						40
					],
					"text": "CURRENT\nPRESET\nRECALL",
					"varname": "fx_preset_dump_label"
				}
			},
			{
				"box": {
					"bgfillcolor_angle": 270,
					"bgfillcolor_autogradient": 0,
					"bgfillcolor_color": [
						0,
						1,
						0.945,
						1
					],
					"bgfillcolor_color1": [
						0,
						1,
						0.945,
						1
					],
					"bgfillcolor_color2": [
						0.2,
						0.2,
						0.2,
						1
					],
					"bgfillcolor_proportion": 0.5,
					"bgfillcolor_type": "gradient",
					"fontsize": 14,
					"hint": "Select and immediately recall preset slot 1–24.",
					"id": "obj-97",
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
						478.5,
						86,
						129,
						24
					],
					"varname": "preset_slot_menu"
				}
			},
			{
				"box": {
					"bgcolor": [
						1,
						0,
						0,
						1
					],
					"blinkcolor": [
						0,
						0,
						0,
						1
					],
					"hint": "Store the current editable working preset in the selected slot.",
					"id": "obj-101",
					"maxclass": "button",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"bang"
					],
					"outlinecolor": [
						0,
						0,
						0,
						1
					],
					"parameter_enable": 0,
					"patching_rect": [
						814,
						86,
						22,
						22
					],
					"varname": "preset_store_button"
				}
			},
			{
				"box": {
					"fontface": 1,
					"fontsize": 10,
					"id": "obj-102",
					"linecount": 2,
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						612,
						83,
						107,
						29
					],
					"text": "STORE/OVERWRITE\nPRESET <num>",
					"varname": "preset_store_label"
				}
			},
			{
				"box": {
					"hint": "Double-click for exact-name AMXD tuning. Visible <parameter> $1 messages are selector-verified before reaching amxd~.",
					"id": "obj-113",
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
							933
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
									"text": "FilterTaps — Direct_Parameter_Messaging / Dynamic Tuning",
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
									"id": "obj-2",
									"maxclass": "comment",
									"text": "Exact AMXD parameter long names are used. Change a number box → <parameter> $1 → exact selector reconstruction → amxd~.",
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
									"id": "obj-3",
									"maxclass": "comment",
									"text": "The visible $1 message is the documented syntax. Hidden route/prepend objects verify and reconstruct the same selector before the subpatch outlet.",
									"fontsize": 10,
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
									"id": "obj-4",
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										1110,
										96,
										24,
										24
									],
									"comment": "exact parameter messages to parent amxd~"
								}
							},
							{
								"box": {
									"id": "obj-5",
									"maxclass": "comment",
									"text": "QUERY:",
									"fontface": 1,
									"fontsize": 9.5,
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
									"id": "obj-6",
									"maxclass": "message",
									"text": "getparams",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										80,
										96,
										74,
										22
									]
								}
							},
							{
								"box": {
									"id": "obj-7",
									"maxclass": "comment",
									"text": "getinfo <exact parameter name> / getvalue <exact parameter name> return from amxd~ outlet 4",
									"fontsize": 9.5,
									"patching_rect": [
										166,
										99,
										670,
										18
									]
								}
							},
							{
								"box": {
									"id": "obj-8",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"float",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										24,
										140,
										76,
										22
									],
									"numdecimalplaces": 3,
									"value": 288,
									"minimum": 1,
									"maximum": 5000,
									"varname": "random_delay_rel3"
								}
							},
							{
								"box": {
									"id": "obj-9",
									"maxclass": "message",
									"text": "delay_rel3 $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 9,
									"patching_rect": [
										106,
										140,
										205,
										22
									],
									"hint": "Native amxd~ setter: delay_rel3 <value>"
								}
							},
							{
								"box": {
									"id": "obj-10",
									"maxclass": "newobj",
									"text": "route delay_rel3",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-11",
									"maxclass": "newobj",
									"text": "prepend delay_rel3",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-12",
									"maxclass": "comment",
									"text": "FLOAT  1 … 5000",
									"fontsize": 8.5,
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
									"id": "obj-13",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"float",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										24,
										174,
										76,
										22
									],
									"numdecimalplaces": 3,
									"value": 1530,
									"minimum": 1,
									"maximum": 5000,
									"varname": "random__40_"
								}
							},
							{
								"box": {
									"id": "obj-14",
									"maxclass": "message",
									"text": "[40] $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 9,
									"patching_rect": [
										106,
										174,
										205,
										22
									],
									"hint": "Native amxd~ setter: [40] <value>"
								}
							},
							{
								"box": {
									"id": "obj-15",
									"maxclass": "newobj",
									"text": "route [40]",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-16",
									"maxclass": "newobj",
									"text": "prepend [40]",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-17",
									"maxclass": "comment",
									"text": "FLOAT  1 … 5000",
									"fontsize": 8.5,
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
									"id": "obj-18",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"float",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										24,
										208,
										76,
										22
									],
									"numdecimalplaces": 3,
									"value": 15,
									"varname": "random_pitch5"
								}
							},
							{
								"box": {
									"id": "obj-19",
									"maxclass": "message",
									"text": "pitch5 $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 9,
									"patching_rect": [
										106,
										208,
										205,
										22
									],
									"hint": "Native amxd~ setter: pitch5 <value>"
								}
							},
							{
								"box": {
									"id": "obj-20",
									"maxclass": "newobj",
									"text": "route pitch5",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-21",
									"maxclass": "newobj",
									"text": "prepend pitch5",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-22",
									"maxclass": "comment",
									"text": "FLOAT  — … —",
									"fontsize": 8.5,
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
									"id": "obj-23",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"float",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										24,
										242,
										76,
										22
									],
									"numdecimalplaces": 3,
									"value": 10,
									"minimum": 1,
									"maximum": 10,
									"varname": "random_global_delay_scale"
								}
							},
							{
								"box": {
									"id": "obj-24",
									"maxclass": "message",
									"text": "global_delay_scale $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 9,
									"patching_rect": [
										106,
										242,
										205,
										22
									],
									"hint": "Native amxd~ setter: global_delay_scale <value>"
								}
							},
							{
								"box": {
									"id": "obj-25",
									"maxclass": "newobj",
									"text": "route global_delay_scale",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-26",
									"maxclass": "newobj",
									"text": "prepend global_delay_scale",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-27",
									"maxclass": "comment",
									"text": "FLOAT  1 … 10",
									"fontsize": 8.5,
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
									"id": "obj-28",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"float",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										24,
										276,
										76,
										22
									],
									"numdecimalplaces": 3,
									"value": 7,
									"minimum": 1,
									"maximum": 5000,
									"varname": "random_delay_rel4"
								}
							},
							{
								"box": {
									"id": "obj-29",
									"maxclass": "message",
									"text": "delay_rel4 $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 9,
									"patching_rect": [
										106,
										276,
										205,
										22
									],
									"hint": "Native amxd~ setter: delay_rel4 <value>"
								}
							},
							{
								"box": {
									"id": "obj-30",
									"maxclass": "newobj",
									"text": "route delay_rel4",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-31",
									"maxclass": "newobj",
									"text": "prepend delay_rel4",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-32",
									"maxclass": "comment",
									"text": "FLOAT  1 … 5000",
									"fontsize": 8.5,
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
									"id": "obj-33",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"float",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										24,
										310,
										76,
										22
									],
									"numdecimalplaces": 3,
									"value": 43.991199,
									"minimum": 1,
									"maximum": 5000,
									"varname": "random__5_"
								}
							},
							{
								"box": {
									"id": "obj-34",
									"maxclass": "message",
									"text": "[5] $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 9,
									"patching_rect": [
										106,
										310,
										205,
										22
									],
									"hint": "Native amxd~ setter: [5] <value>"
								}
							},
							{
								"box": {
									"id": "obj-35",
									"maxclass": "newobj",
									"text": "route [5]",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-36",
									"maxclass": "newobj",
									"text": "prepend [5]",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-37",
									"maxclass": "comment",
									"text": "FLOAT  1 … 5000",
									"fontsize": 8.5,
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
									"id": "obj-38",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"float",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										24,
										344,
										76,
										22
									],
									"numdecimalplaces": 3,
									"value": 10,
									"varname": "random_pitch3"
								}
							},
							{
								"box": {
									"id": "obj-39",
									"maxclass": "message",
									"text": "pitch3 $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 9,
									"patching_rect": [
										106,
										344,
										205,
										22
									],
									"hint": "Native amxd~ setter: pitch3 <value>"
								}
							},
							{
								"box": {
									"id": "obj-40",
									"maxclass": "newobj",
									"text": "route pitch3",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-41",
									"maxclass": "newobj",
									"text": "prepend pitch3",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-42",
									"maxclass": "comment",
									"text": "FLOAT  — … —",
									"fontsize": 8.5,
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
									"id": "obj-43",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"float",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										24,
										378,
										76,
										22
									],
									"numdecimalplaces": 3,
									"value": 3,
									"varname": "random_pitch6"
								}
							},
							{
								"box": {
									"id": "obj-44",
									"maxclass": "message",
									"text": "pitch6 $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 9,
									"patching_rect": [
										106,
										378,
										205,
										22
									],
									"hint": "Native amxd~ setter: pitch6 <value>"
								}
							},
							{
								"box": {
									"id": "obj-45",
									"maxclass": "newobj",
									"text": "route pitch6",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-46",
									"maxclass": "newobj",
									"text": "prepend pitch6",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-47",
									"maxclass": "comment",
									"text": "FLOAT  — … —",
									"fontsize": 8.5,
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
									"id": "obj-48",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"float",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										24,
										412,
										76,
										22
									],
									"numdecimalplaces": 3,
									"value": 127,
									"minimum": 1,
									"maximum": 300,
									"varname": "random_gain5"
								}
							},
							{
								"box": {
									"id": "obj-49",
									"maxclass": "message",
									"text": "gain5 $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 9,
									"patching_rect": [
										106,
										412,
										205,
										22
									],
									"hint": "Native amxd~ setter: gain5 <value>"
								}
							},
							{
								"box": {
									"id": "obj-50",
									"maxclass": "newobj",
									"text": "route gain5",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-51",
									"maxclass": "newobj",
									"text": "prepend gain5",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-52",
									"maxclass": "comment",
									"text": "FLOAT  1 … 300",
									"fontsize": 8.5,
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
									"id": "obj-53",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"float",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										24,
										446,
										76,
										22
									],
									"numdecimalplaces": 3,
									"value": 0.39,
									"minimum": 0,
									"maximum": 1,
									"varname": "random_global_q"
								}
							},
							{
								"box": {
									"id": "obj-54",
									"maxclass": "message",
									"text": "global_q $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 9,
									"patching_rect": [
										106,
										446,
										205,
										22
									],
									"hint": "Native amxd~ setter: global_q <value>"
								}
							},
							{
								"box": {
									"id": "obj-55",
									"maxclass": "newobj",
									"text": "route global_q",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-56",
									"maxclass": "newobj",
									"text": "prepend global_q",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-57",
									"maxclass": "comment",
									"text": "FLOAT  0 … 1",
									"fontsize": 8.5,
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
									"id": "obj-58",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"float",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										24,
										480,
										76,
										22
									],
									"numdecimalplaces": 3,
									"value": -38,
									"minimum": -127,
									"varname": "random_pan4"
								}
							},
							{
								"box": {
									"id": "obj-59",
									"maxclass": "message",
									"text": "pan4 $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 9,
									"patching_rect": [
										106,
										480,
										205,
										22
									],
									"hint": "Native amxd~ setter: pan4 <value>"
								}
							},
							{
								"box": {
									"id": "obj-60",
									"maxclass": "newobj",
									"text": "route pan4",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-61",
									"maxclass": "newobj",
									"text": "prepend pan4",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-62",
									"maxclass": "comment",
									"text": "FLOAT  -127 … —",
									"fontsize": 8.5,
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
									"id": "obj-63",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"float",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										24,
										514,
										76,
										22
									],
									"numdecimalplaces": 3,
									"value": 0,
									"varname": "random_pitch4"
								}
							},
							{
								"box": {
									"id": "obj-64",
									"maxclass": "message",
									"text": "pitch4 $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 9,
									"patching_rect": [
										106,
										514,
										205,
										22
									],
									"hint": "Native amxd~ setter: pitch4 <value>"
								}
							},
							{
								"box": {
									"id": "obj-65",
									"maxclass": "newobj",
									"text": "route pitch4",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-66",
									"maxclass": "newobj",
									"text": "prepend pitch4",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-67",
									"maxclass": "comment",
									"text": "FLOAT  — … —",
									"fontsize": 8.5,
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
									"id": "obj-68",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"float",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										24,
										548,
										76,
										22
									],
									"numdecimalplaces": 3,
									"value": 127,
									"minimum": 1,
									"maximum": 300,
									"varname": "random_gain3"
								}
							},
							{
								"box": {
									"id": "obj-69",
									"maxclass": "message",
									"text": "gain3 $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 9,
									"patching_rect": [
										106,
										548,
										205,
										22
									],
									"hint": "Native amxd~ setter: gain3 <value>"
								}
							},
							{
								"box": {
									"id": "obj-70",
									"maxclass": "newobj",
									"text": "route gain3",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-71",
									"maxclass": "newobj",
									"text": "prepend gain3",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-72",
									"maxclass": "comment",
									"text": "FLOAT  1 … 300",
									"fontsize": 8.5,
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
									"id": "obj-73",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"float",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										24,
										582,
										76,
										22
									],
									"numdecimalplaces": 3,
									"value": -74,
									"minimum": -127,
									"varname": "random_pan6"
								}
							},
							{
								"box": {
									"id": "obj-74",
									"maxclass": "message",
									"text": "pan6 $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 9,
									"patching_rect": [
										106,
										582,
										205,
										22
									],
									"hint": "Native amxd~ setter: pan6 <value>"
								}
							},
							{
								"box": {
									"id": "obj-75",
									"maxclass": "newobj",
									"text": "route pan6",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										106,
										606,
										120,
										22
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-76",
									"maxclass": "newobj",
									"text": "prepend pan6",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										230,
										606,
										132,
										22
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-77",
									"maxclass": "comment",
									"text": "FLOAT  -127 … —",
									"fontsize": 8.5,
									"patching_rect": [
										318,
										584,
										258,
										18
									]
								}
							},
							{
								"box": {
									"id": "obj-78",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"float",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										24,
										616,
										76,
										22
									],
									"numdecimalplaces": 3,
									"value": 0,
									"minimum": 0,
									"maximum": 1,
									"varname": "random_fb_gain"
								}
							},
							{
								"box": {
									"id": "obj-79",
									"maxclass": "message",
									"text": "fb_gain $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 9,
									"patching_rect": [
										106,
										616,
										205,
										22
									],
									"hint": "Native amxd~ setter: fb_gain <value>"
								}
							},
							{
								"box": {
									"id": "obj-80",
									"maxclass": "newobj",
									"text": "route fb_gain",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										106,
										640,
										120,
										22
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-81",
									"maxclass": "newobj",
									"text": "prepend fb_gain",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										230,
										640,
										132,
										22
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-82",
									"maxclass": "comment",
									"text": "FLOAT  0 … 1",
									"fontsize": 8.5,
									"patching_rect": [
										318,
										618,
										258,
										18
									]
								}
							},
							{
								"box": {
									"id": "obj-83",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"float",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										24,
										650,
										76,
										22
									],
									"numdecimalplaces": 3,
									"value": 2879.42407,
									"minimum": 1,
									"maximum": 5000,
									"varname": "random__35_"
								}
							},
							{
								"box": {
									"id": "obj-84",
									"maxclass": "message",
									"text": "[35] $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 9,
									"patching_rect": [
										106,
										650,
										205,
										22
									],
									"hint": "Native amxd~ setter: [35] <value>"
								}
							},
							{
								"box": {
									"id": "obj-85",
									"maxclass": "newobj",
									"text": "route [35]",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										106,
										674,
										120,
										22
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-86",
									"maxclass": "newobj",
									"text": "prepend [35]",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										230,
										674,
										132,
										22
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-87",
									"maxclass": "comment",
									"text": "FLOAT  1 … 5000",
									"fontsize": 8.5,
									"patching_rect": [
										318,
										652,
										258,
										18
									]
								}
							},
							{
								"box": {
									"id": "obj-88",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"float",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										24,
										684,
										76,
										22
									],
									"numdecimalplaces": 3,
									"value": 127,
									"minimum": 1,
									"maximum": 300,
									"varname": "random_gain_5_"
								}
							},
							{
								"box": {
									"id": "obj-89",
									"maxclass": "message",
									"text": "gain[5] $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 9,
									"patching_rect": [
										106,
										684,
										205,
										22
									],
									"hint": "Native amxd~ setter: gain[5] <value>"
								}
							},
							{
								"box": {
									"id": "obj-90",
									"maxclass": "newobj",
									"text": "route gain[5]",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										106,
										708,
										120,
										22
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-91",
									"maxclass": "newobj",
									"text": "prepend gain[5]",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										230,
										708,
										132,
										22
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-92",
									"maxclass": "comment",
									"text": "FLOAT  1 … 300",
									"fontsize": 8.5,
									"patching_rect": [
										318,
										686,
										258,
										18
									]
								}
							},
							{
								"box": {
									"id": "obj-93",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"float",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										24,
										718,
										76,
										22
									],
									"numdecimalplaces": 3,
									"value": 46,
									"minimum": -127,
									"varname": "random_pan3"
								}
							},
							{
								"box": {
									"id": "obj-94",
									"maxclass": "message",
									"text": "pan3 $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 9,
									"patching_rect": [
										106,
										718,
										205,
										22
									],
									"hint": "Native amxd~ setter: pan3 <value>"
								}
							},
							{
								"box": {
									"id": "obj-95",
									"maxclass": "newobj",
									"text": "route pan3",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										106,
										742,
										120,
										22
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-96",
									"maxclass": "newobj",
									"text": "prepend pan3",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										230,
										742,
										132,
										22
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-97",
									"maxclass": "comment",
									"text": "FLOAT  -127 … —",
									"fontsize": 8.5,
									"patching_rect": [
										318,
										720,
										258,
										18
									]
								}
							},
							{
								"box": {
									"id": "obj-98",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"float",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										24,
										752,
										76,
										22
									],
									"numdecimalplaces": 3,
									"value": 127,
									"minimum": 1,
									"maximum": 300,
									"varname": "random__23_"
								}
							},
							{
								"box": {
									"id": "obj-99",
									"maxclass": "message",
									"text": "[23] $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 9,
									"patching_rect": [
										106,
										752,
										205,
										22
									],
									"hint": "Native amxd~ setter: [23] <value>"
								}
							},
							{
								"box": {
									"id": "obj-100",
									"maxclass": "newobj",
									"text": "route [23]",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										106,
										776,
										120,
										22
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-101",
									"maxclass": "newobj",
									"text": "prepend [23]",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										230,
										776,
										132,
										22
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-102",
									"maxclass": "comment",
									"text": "FLOAT  1 … 300",
									"fontsize": 8.5,
									"patching_rect": [
										318,
										754,
										258,
										18
									]
								}
							},
							{
								"box": {
									"id": "obj-103",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"float",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										24,
										786,
										76,
										22
									],
									"numdecimalplaces": 3,
									"value": 19.25943,
									"minimum": 0,
									"maximum": 20000,
									"varname": "random__2_"
								}
							},
							{
								"box": {
									"id": "obj-104",
									"maxclass": "message",
									"text": "[2] $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 9,
									"patching_rect": [
										106,
										786,
										205,
										22
									],
									"hint": "Native amxd~ setter: [2] <value>"
								}
							},
							{
								"box": {
									"id": "obj-105",
									"maxclass": "newobj",
									"text": "route [2]",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										106,
										810,
										120,
										22
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-106",
									"maxclass": "newobj",
									"text": "prepend [2]",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										230,
										810,
										132,
										22
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-107",
									"maxclass": "comment",
									"text": "FLOAT  0 … 20000",
									"fontsize": 8.5,
									"patching_rect": [
										318,
										788,
										258,
										18
									]
								}
							},
							{
								"box": {
									"id": "obj-108",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"float",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										24,
										820,
										76,
										22
									],
									"numdecimalplaces": 3,
									"value": 19,
									"minimum": 1,
									"maximum": 5000,
									"varname": "random__18_"
								}
							},
							{
								"box": {
									"id": "obj-109",
									"maxclass": "message",
									"text": "[18] $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 9,
									"patching_rect": [
										106,
										820,
										205,
										22
									],
									"hint": "Native amxd~ setter: [18] <value>"
								}
							},
							{
								"box": {
									"id": "obj-110",
									"maxclass": "newobj",
									"text": "route [18]",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										106,
										844,
										120,
										22
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-111",
									"maxclass": "newobj",
									"text": "prepend [18]",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										230,
										844,
										132,
										22
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-112",
									"maxclass": "comment",
									"text": "FLOAT  1 … 5000",
									"fontsize": 8.5,
									"patching_rect": [
										318,
										822,
										258,
										18
									]
								}
							},
							{
								"box": {
									"id": "obj-113",
									"maxclass": "number",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"int",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										24,
										854,
										68,
										22
									],
									"value": 100,
									"minimum": 0,
									"maximum": 100
								}
							},
							{
								"box": {
									"id": "obj-114",
									"maxclass": "message",
									"text": "dry/wet $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 9,
									"patching_rect": [
										106,
										854,
										205,
										22
									],
									"hint": "Native amxd~ setter: dry/wet <value>"
								}
							},
							{
								"box": {
									"id": "obj-115",
									"maxclass": "newobj",
									"text": "route dry/wet",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										106,
										878,
										120,
										22
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-116",
									"maxclass": "newobj",
									"text": "prepend dry/wet",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										230,
										878,
										132,
										22
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-117",
									"maxclass": "comment",
									"text": "INT  0 … 100",
									"fontsize": 8.5,
									"patching_rect": [
										318,
										856,
										258,
										18
									]
								}
							},
							{
								"box": {
									"id": "obj-118",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"float",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										582,
										140,
										76,
										22
									],
									"numdecimalplaces": 3,
									"value": 22.811558,
									"minimum": 0,
									"maximum": 20000,
									"varname": "random__32_"
								}
							},
							{
								"box": {
									"id": "obj-119",
									"maxclass": "message",
									"text": "[32] $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 9,
									"patching_rect": [
										664,
										140,
										205,
										22
									],
									"hint": "Native amxd~ setter: [32] <value>"
								}
							},
							{
								"box": {
									"id": "obj-120",
									"maxclass": "newobj",
									"text": "route [32]",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-121",
									"maxclass": "newobj",
									"text": "prepend [32]",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-122",
									"maxclass": "comment",
									"text": "FLOAT  0 … 20000",
									"fontsize": 8.5,
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
									"id": "obj-123",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"float",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										582,
										174,
										76,
										22
									],
									"numdecimalplaces": 3,
									"value": 1,
									"minimum": 1,
									"maximum": 5000,
									"varname": "random_delay_rel6"
								}
							},
							{
								"box": {
									"id": "obj-124",
									"maxclass": "message",
									"text": "delay_rel6 $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 9,
									"patching_rect": [
										664,
										174,
										205,
										22
									],
									"hint": "Native amxd~ setter: delay_rel6 <value>"
								}
							},
							{
								"box": {
									"id": "obj-125",
									"maxclass": "newobj",
									"text": "route delay_rel6",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-126",
									"maxclass": "newobj",
									"text": "prepend delay_rel6",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-127",
									"maxclass": "comment",
									"text": "FLOAT  1 … 5000",
									"fontsize": 8.5,
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
									"id": "obj-128",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"float",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										582,
										208,
										76,
										22
									],
									"numdecimalplaces": 3,
									"value": 213.411331,
									"minimum": 0,
									"maximum": 20000,
									"varname": "random__26_"
								}
							},
							{
								"box": {
									"id": "obj-129",
									"maxclass": "message",
									"text": "[26] $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 9,
									"patching_rect": [
										664,
										208,
										205,
										22
									],
									"hint": "Native amxd~ setter: [26] <value>"
								}
							},
							{
								"box": {
									"id": "obj-130",
									"maxclass": "newobj",
									"text": "route [26]",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-131",
									"maxclass": "newobj",
									"text": "prepend [26]",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-132",
									"maxclass": "comment",
									"text": "FLOAT  0 … 20000",
									"fontsize": 8.5,
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
									"id": "obj-133",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"float",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										582,
										242,
										76,
										22
									],
									"numdecimalplaces": 3,
									"value": 153,
									"minimum": 1,
									"maximum": 5000,
									"varname": "random__38_"
								}
							},
							{
								"box": {
									"id": "obj-134",
									"maxclass": "message",
									"text": "[38] $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 9,
									"patching_rect": [
										664,
										242,
										205,
										22
									],
									"hint": "Native amxd~ setter: [38] <value>"
								}
							},
							{
								"box": {
									"id": "obj-135",
									"maxclass": "newobj",
									"text": "route [38]",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-136",
									"maxclass": "newobj",
									"text": "prepend [38]",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-137",
									"maxclass": "comment",
									"text": "FLOAT  1 … 5000",
									"fontsize": 8.5,
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
									"id": "obj-138",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"float",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										582,
										276,
										76,
										22
									],
									"numdecimalplaces": 3,
									"value": 80,
									"minimum": 1,
									"maximum": 100,
									"varname": "random_global_freq_scale"
								}
							},
							{
								"box": {
									"id": "obj-139",
									"maxclass": "message",
									"text": "global_freq_scale $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 9,
									"patching_rect": [
										664,
										276,
										205,
										22
									],
									"hint": "Native amxd~ setter: global_freq_scale <value>"
								}
							},
							{
								"box": {
									"id": "obj-140",
									"maxclass": "newobj",
									"text": "route global_freq_scale",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-141",
									"maxclass": "newobj",
									"text": "prepend global_freq_scale",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-142",
									"maxclass": "comment",
									"text": "FLOAT  1 … 100",
									"fontsize": 8.5,
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
									"id": "obj-143",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"float",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										582,
										310,
										76,
										22
									],
									"numdecimalplaces": 3,
									"value": 0,
									"minimum": -127,
									"varname": "random__14_"
								}
							},
							{
								"box": {
									"id": "obj-144",
									"maxclass": "message",
									"text": "[14] $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 9,
									"patching_rect": [
										664,
										310,
										205,
										22
									],
									"hint": "Native amxd~ setter: [14] <value>"
								}
							},
							{
								"box": {
									"id": "obj-145",
									"maxclass": "newobj",
									"text": "route [14]",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-146",
									"maxclass": "newobj",
									"text": "prepend [14]",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-147",
									"maxclass": "comment",
									"text": "FLOAT  -127 … —",
									"fontsize": 8.5,
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
									"id": "obj-148",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"float",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										582,
										344,
										76,
										22
									],
									"numdecimalplaces": 3,
									"value": 720.856018,
									"minimum": 1,
									"maximum": 5000,
									"varname": "random__27_"
								}
							},
							{
								"box": {
									"id": "obj-149",
									"maxclass": "message",
									"text": "[27] $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 9,
									"patching_rect": [
										664,
										344,
										205,
										22
									],
									"hint": "Native amxd~ setter: [27] <value>"
								}
							},
							{
								"box": {
									"id": "obj-150",
									"maxclass": "newobj",
									"text": "route [27]",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-151",
									"maxclass": "newobj",
									"text": "prepend [27]",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-152",
									"maxclass": "comment",
									"text": "FLOAT  1 … 5000",
									"fontsize": 8.5,
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
									"id": "obj-153",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"float",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										582,
										378,
										76,
										22
									],
									"numdecimalplaces": 3,
									"value": 455.908813,
									"minimum": 1,
									"maximum": 5000,
									"varname": "random__3_"
								}
							},
							{
								"box": {
									"id": "obj-154",
									"maxclass": "message",
									"text": "[3] $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 9,
									"patching_rect": [
										664,
										378,
										205,
										22
									],
									"hint": "Native amxd~ setter: [3] <value>"
								}
							},
							{
								"box": {
									"id": "obj-155",
									"maxclass": "newobj",
									"text": "route [3]",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-156",
									"maxclass": "newobj",
									"text": "prepend [3]",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-157",
									"maxclass": "comment",
									"text": "FLOAT  1 … 5000",
									"fontsize": 8.5,
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
									"id": "obj-158",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"float",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										582,
										412,
										76,
										22
									],
									"numdecimalplaces": 3,
									"value": 5000,
									"minimum": 1,
									"maximum": 5000,
									"varname": "random__34_"
								}
							},
							{
								"box": {
									"id": "obj-159",
									"maxclass": "message",
									"text": "[34] $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 9,
									"patching_rect": [
										664,
										412,
										205,
										22
									],
									"hint": "Native amxd~ setter: [34] <value>"
								}
							},
							{
								"box": {
									"id": "obj-160",
									"maxclass": "newobj",
									"text": "route [34]",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-161",
									"maxclass": "newobj",
									"text": "prepend [34]",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-162",
									"maxclass": "comment",
									"text": "FLOAT  1 … 5000",
									"fontsize": 8.5,
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
									"id": "obj-163",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"float",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										582,
										446,
										76,
										22
									],
									"numdecimalplaces": 3,
									"value": 37,
									"minimum": -127,
									"varname": "random_pan2"
								}
							},
							{
								"box": {
									"id": "obj-164",
									"maxclass": "message",
									"text": "pan2 $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 9,
									"patching_rect": [
										664,
										446,
										205,
										22
									],
									"hint": "Native amxd~ setter: pan2 <value>"
								}
							},
							{
								"box": {
									"id": "obj-165",
									"maxclass": "newobj",
									"text": "route pan2",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-166",
									"maxclass": "newobj",
									"text": "prepend pan2",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-167",
									"maxclass": "comment",
									"text": "FLOAT  -127 … —",
									"fontsize": 8.5,
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
									"id": "obj-168",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"float",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										582,
										480,
										76,
										22
									],
									"numdecimalplaces": 3,
									"value": 127,
									"minimum": 1,
									"maximum": 300,
									"varname": "random_gain2"
								}
							},
							{
								"box": {
									"id": "obj-169",
									"maxclass": "message",
									"text": "gain2 $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 9,
									"patching_rect": [
										664,
										480,
										205,
										22
									],
									"hint": "Native amxd~ setter: gain2 <value>"
								}
							},
							{
								"box": {
									"id": "obj-170",
									"maxclass": "newobj",
									"text": "route gain2",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-171",
									"maxclass": "newobj",
									"text": "prepend gain2",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-172",
									"maxclass": "comment",
									"text": "FLOAT  1 … 300",
									"fontsize": 8.5,
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
									"id": "obj-173",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"float",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										582,
										514,
										76,
										22
									],
									"numdecimalplaces": 3,
									"value": 11.148361,
									"minimum": 0,
									"maximum": 20000,
									"varname": "random__21_"
								}
							},
							{
								"box": {
									"id": "obj-174",
									"maxclass": "message",
									"text": "[21] $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 9,
									"patching_rect": [
										664,
										514,
										205,
										22
									],
									"hint": "Native amxd~ setter: [21] <value>"
								}
							},
							{
								"box": {
									"id": "obj-175",
									"maxclass": "newobj",
									"text": "route [21]",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-176",
									"maxclass": "newobj",
									"text": "prepend [21]",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-177",
									"maxclass": "comment",
									"text": "FLOAT  0 … 20000",
									"fontsize": 8.5,
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
									"id": "obj-178",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"float",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										582,
										548,
										76,
										22
									],
									"numdecimalplaces": 3,
									"value": 3722.59595,
									"minimum": 0,
									"maximum": 20000,
									"varname": "random__1_"
								}
							},
							{
								"box": {
									"id": "obj-179",
									"maxclass": "message",
									"text": "[1] $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 9,
									"patching_rect": [
										664,
										548,
										205,
										22
									],
									"hint": "Native amxd~ setter: [1] <value>"
								}
							},
							{
								"box": {
									"id": "obj-180",
									"maxclass": "newobj",
									"text": "route [1]",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-181",
									"maxclass": "newobj",
									"text": "prepend [1]",
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
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-182",
									"maxclass": "comment",
									"text": "FLOAT  0 … 20000",
									"fontsize": 8.5,
									"patching_rect": [
										876,
										550,
										258,
										18
									]
								}
							},
							{
								"box": {
									"id": "obj-183",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"float",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										582,
										582,
										76,
										22
									],
									"numdecimalplaces": 3,
									"value": 81,
									"minimum": -127,
									"varname": "random_pan5"
								}
							},
							{
								"box": {
									"id": "obj-184",
									"maxclass": "message",
									"text": "pan5 $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 9,
									"patching_rect": [
										664,
										582,
										205,
										22
									],
									"hint": "Native amxd~ setter: pan5 <value>"
								}
							},
							{
								"box": {
									"id": "obj-185",
									"maxclass": "newobj",
									"text": "route pan5",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										664,
										606,
										120,
										22
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-186",
									"maxclass": "newobj",
									"text": "prepend pan5",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										788,
										606,
										132,
										22
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-187",
									"maxclass": "comment",
									"text": "FLOAT  -127 … —",
									"fontsize": 8.5,
									"patching_rect": [
										876,
										584,
										258,
										18
									]
								}
							},
							{
								"box": {
									"id": "obj-188",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"float",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										582,
										616,
										76,
										22
									],
									"numdecimalplaces": 3,
									"value": 8,
									"varname": "random_pitch2"
								}
							},
							{
								"box": {
									"id": "obj-189",
									"maxclass": "message",
									"text": "pitch2 $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 9,
									"patching_rect": [
										664,
										616,
										205,
										22
									],
									"hint": "Native amxd~ setter: pitch2 <value>"
								}
							},
							{
								"box": {
									"id": "obj-190",
									"maxclass": "newobj",
									"text": "route pitch2",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										664,
										640,
										120,
										22
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-191",
									"maxclass": "newobj",
									"text": "prepend pitch2",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										788,
										640,
										132,
										22
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-192",
									"maxclass": "comment",
									"text": "FLOAT  — … —",
									"fontsize": 8.5,
									"patching_rect": [
										876,
										618,
										258,
										18
									]
								}
							},
							{
								"box": {
									"id": "obj-193",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"float",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										582,
										650,
										76,
										22
									],
									"numdecimalplaces": 3,
									"value": 52,
									"minimum": -300,
									"maximum": 300
								}
							},
							{
								"box": {
									"id": "obj-194",
									"maxclass": "message",
									"text": "global_gain $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 9,
									"patching_rect": [
										664,
										650,
										205,
										22
									],
									"hint": "Native amxd~ setter: global_gain <value>"
								}
							},
							{
								"box": {
									"id": "obj-195",
									"maxclass": "newobj",
									"text": "route global_gain",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										664,
										674,
										120,
										22
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-196",
									"maxclass": "newobj",
									"text": "prepend global_gain",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										788,
										674,
										132,
										22
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-197",
									"maxclass": "comment",
									"text": "FLOAT  -300 … 300",
									"fontsize": 8.5,
									"patching_rect": [
										876,
										652,
										258,
										18
									]
								}
							},
							{
								"box": {
									"id": "obj-198",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"float",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										582,
										684,
										76,
										22
									],
									"numdecimalplaces": 3,
									"value": 887.822388,
									"minimum": 1,
									"maximum": 5000,
									"varname": "random__22_"
								}
							},
							{
								"box": {
									"id": "obj-199",
									"maxclass": "message",
									"text": "[22] $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 9,
									"patching_rect": [
										664,
										684,
										205,
										22
									],
									"hint": "Native amxd~ setter: [22] <value>"
								}
							},
							{
								"box": {
									"id": "obj-200",
									"maxclass": "newobj",
									"text": "route [22]",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										664,
										708,
										120,
										22
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-201",
									"maxclass": "newobj",
									"text": "prepend [22]",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										788,
										708,
										132,
										22
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-202",
									"maxclass": "comment",
									"text": "FLOAT  1 … 5000",
									"fontsize": 8.5,
									"patching_rect": [
										876,
										686,
										258,
										18
									]
								}
							},
							{
								"box": {
									"id": "obj-203",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"float",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										582,
										718,
										76,
										22
									],
									"numdecimalplaces": 3,
									"value": 34,
									"minimum": 1,
									"maximum": 5000,
									"varname": "random_delay_rel5"
								}
							},
							{
								"box": {
									"id": "obj-204",
									"maxclass": "message",
									"text": "delay_rel5 $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 9,
									"patching_rect": [
										664,
										718,
										205,
										22
									],
									"hint": "Native amxd~ setter: delay_rel5 <value>"
								}
							},
							{
								"box": {
									"id": "obj-205",
									"maxclass": "newobj",
									"text": "route delay_rel5",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										664,
										742,
										120,
										22
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-206",
									"maxclass": "newobj",
									"text": "prepend delay_rel5",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										788,
										742,
										132,
										22
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-207",
									"maxclass": "comment",
									"text": "FLOAT  1 … 5000",
									"fontsize": 8.5,
									"patching_rect": [
										876,
										720,
										258,
										18
									]
								}
							},
							{
								"box": {
									"id": "obj-208",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"float",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										582,
										752,
										76,
										22
									],
									"numdecimalplaces": 3,
									"value": 106,
									"minimum": 1,
									"maximum": 5000,
									"varname": "random_delay_rel2"
								}
							},
							{
								"box": {
									"id": "obj-209",
									"maxclass": "message",
									"text": "delay_rel2 $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 9,
									"patching_rect": [
										664,
										752,
										205,
										22
									],
									"hint": "Native amxd~ setter: delay_rel2 <value>"
								}
							},
							{
								"box": {
									"id": "obj-210",
									"maxclass": "newobj",
									"text": "route delay_rel2",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										664,
										776,
										120,
										22
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-211",
									"maxclass": "newobj",
									"text": "prepend delay_rel2",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										788,
										776,
										132,
										22
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-212",
									"maxclass": "comment",
									"text": "FLOAT  1 … 5000",
									"fontsize": 8.5,
									"patching_rect": [
										876,
										754,
										258,
										18
									]
								}
							},
							{
								"box": {
									"id": "obj-213",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"float",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										582,
										786,
										76,
										22
									],
									"numdecimalplaces": 3,
									"value": 11.547909,
									"minimum": 0,
									"maximum": 20000,
									"varname": "random__15_"
								}
							},
							{
								"box": {
									"id": "obj-214",
									"maxclass": "message",
									"text": "[15] $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 9,
									"patching_rect": [
										664,
										786,
										205,
										22
									],
									"hint": "Native amxd~ setter: [15] <value>"
								}
							},
							{
								"box": {
									"id": "obj-215",
									"maxclass": "newobj",
									"text": "route [15]",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										664,
										810,
										120,
										22
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-216",
									"maxclass": "newobj",
									"text": "prepend [15]",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										788,
										810,
										132,
										22
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-217",
									"maxclass": "comment",
									"text": "FLOAT  0 … 20000",
									"fontsize": 8.5,
									"patching_rect": [
										876,
										788,
										258,
										18
									]
								}
							},
							{
								"box": {
									"id": "obj-218",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"float",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										582,
										820,
										76,
										22
									],
									"numdecimalplaces": 3,
									"value": 0,
									"varname": "random__30_"
								}
							},
							{
								"box": {
									"id": "obj-219",
									"maxclass": "message",
									"text": "[30] $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 9,
									"patching_rect": [
										664,
										820,
										205,
										22
									],
									"hint": "Native amxd~ setter: [30] <value>"
								}
							},
							{
								"box": {
									"id": "obj-220",
									"maxclass": "newobj",
									"text": "route [30]",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										664,
										844,
										120,
										22
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-221",
									"maxclass": "newobj",
									"text": "prepend [30]",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										788,
										844,
										132,
										22
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-222",
									"maxclass": "comment",
									"text": "FLOAT  — … —",
									"fontsize": 8.5,
									"patching_rect": [
										876,
										822,
										258,
										18
									]
								}
							},
							{
								"box": {
									"id": "obj-223",
									"maxclass": "flonum",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"float",
										"bang"
									],
									"parameter_enable": 0,
									"patching_rect": [
										582,
										854,
										76,
										22
									],
									"numdecimalplaces": 3,
									"value": 127,
									"minimum": 1,
									"maximum": 300,
									"varname": "random_gain6"
								}
							},
							{
								"box": {
									"id": "obj-224",
									"maxclass": "message",
									"text": "gain6 $1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"fontsize": 9,
									"patching_rect": [
										664,
										854,
										205,
										22
									],
									"hint": "Native amxd~ setter: gain6 <value>"
								}
							},
							{
								"box": {
									"id": "obj-225",
									"maxclass": "newobj",
									"text": "route gain6",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										664,
										878,
										120,
										22
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-226",
									"maxclass": "newobj",
									"text": "prepend gain6",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										788,
										878,
										132,
										22
									],
									"hidden": 1
								}
							},
							{
								"box": {
									"id": "obj-227",
									"maxclass": "comment",
									"text": "FLOAT  1 … 300",
									"fontsize": 8.5,
									"patching_rect": [
										876,
										856,
										258,
										18
									]
								}
							},
							{
								"box": {
									"id": "obj-228",
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"bang"
									],
									"patching_rect": [
										850,
										96,
										24,
										24
									],
									"comment": "one-bang random set"
								}
							},
							{
								"box": {
									"id": "obj-229",
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
									"hint": "Randomize this AMXD from inside Direct_Parameter_Messaging."
								}
							},
							{
								"box": {
									"id": "obj-230",
									"maxclass": "newobj",
									"text": "js amxd_randomize_direct_parameters.js delay_rel3 1 5000 float [40] 1 5000 float pitch5 -48 48 float global_delay_scale 1 10 float delay_rel4 1 5000 float [5] 1 5000 float pitch3 -48 48 float pitch6 -48 48 float gain5 1 300 float global_q 0 1 float pan4 -127 127 float pitch4 -48 48 float gain3 1 300 float pan6 -127 127 float fb_gain 0 1 float [35] 1 5000 float gain[5] 1 300 float pan3 -127 127 float [23] 1 300 float [2] 0 20000 float [18] 1 5000 float [32] 0 20000 float delay_rel6 1 5000 float [26] 0 20000 float [38] 1 5000 float global_freq_scale 1 100 float [14] -127 127 float [27] 1 5000 float [3] 1 5000 float [34] 1 5000 float pan2 -127 127 float gain2 1 300 float [21] 0 20000 float [1] 0 20000 float pan5 -127 127 float pitch2 -48 48 float [22] 1 5000 float delay_rel5 1 5000 float delay_rel2 1 5000 float [15] 0 20000 float [30] 0 100 float gain6 1 300 float",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										910,
										96,
										190,
										156
									],
									"varname": "random_set_values_js"
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"source": [
										"obj-6",
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
										"obj-8",
										0
									],
									"destination": [
										"obj-9",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"obj-9",
										0
									],
									"destination": [
										"obj-10",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-10",
										0
									],
									"destination": [
										"obj-11",
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
										"obj-4",
										0
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
										"obj-14",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"obj-14",
										0
									],
									"destination": [
										"obj-15",
										0
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
										"obj-16",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-16",
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
										"obj-18",
										0
									],
									"destination": [
										"obj-19",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"obj-19",
										0
									],
									"destination": [
										"obj-20",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-20",
										0
									],
									"destination": [
										"obj-21",
										0
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
										"obj-4",
										0
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
										"obj-24",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"obj-24",
										0
									],
									"destination": [
										"obj-25",
										0
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
										"obj-26",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-26",
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
										"obj-28",
										0
									],
									"destination": [
										"obj-29",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"obj-29",
										0
									],
									"destination": [
										"obj-30",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-30",
										0
									],
									"destination": [
										"obj-31",
										0
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
										"obj-4",
										0
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
										"obj-34",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"obj-34",
										0
									],
									"destination": [
										"obj-35",
										0
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
										"obj-36",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-36",
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
										"obj-38",
										0
									],
									"destination": [
										"obj-39",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"obj-39",
										0
									],
									"destination": [
										"obj-40",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-40",
										0
									],
									"destination": [
										"obj-41",
										0
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
										"obj-4",
										0
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
										"obj-44",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"obj-44",
										0
									],
									"destination": [
										"obj-45",
										0
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
										"obj-46",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-46",
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
										"obj-48",
										0
									],
									"destination": [
										"obj-49",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"obj-49",
										0
									],
									"destination": [
										"obj-50",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-50",
										0
									],
									"destination": [
										"obj-51",
										0
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
										"obj-4",
										0
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
										"obj-54",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"obj-54",
										0
									],
									"destination": [
										"obj-55",
										0
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
										"obj-56",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-56",
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
										"obj-58",
										0
									],
									"destination": [
										"obj-59",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"obj-59",
										0
									],
									"destination": [
										"obj-60",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-60",
										0
									],
									"destination": [
										"obj-61",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-61",
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
										"obj-63",
										0
									],
									"destination": [
										"obj-64",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"obj-64",
										0
									],
									"destination": [
										"obj-65",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-65",
										0
									],
									"destination": [
										"obj-66",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-66",
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
										"obj-68",
										0
									],
									"destination": [
										"obj-69",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"obj-69",
										0
									],
									"destination": [
										"obj-70",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-70",
										0
									],
									"destination": [
										"obj-71",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-71",
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
										"obj-73",
										0
									],
									"destination": [
										"obj-74",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"obj-74",
										0
									],
									"destination": [
										"obj-75",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-75",
										0
									],
									"destination": [
										"obj-76",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-76",
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
										"obj-78",
										0
									],
									"destination": [
										"obj-79",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"obj-79",
										0
									],
									"destination": [
										"obj-80",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-80",
										0
									],
									"destination": [
										"obj-81",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-81",
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
										"obj-83",
										0
									],
									"destination": [
										"obj-84",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"obj-84",
										0
									],
									"destination": [
										"obj-85",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-85",
										0
									],
									"destination": [
										"obj-86",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-86",
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
										"obj-88",
										0
									],
									"destination": [
										"obj-89",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"obj-89",
										0
									],
									"destination": [
										"obj-90",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-90",
										0
									],
									"destination": [
										"obj-91",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-91",
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
										"obj-93",
										0
									],
									"destination": [
										"obj-94",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"obj-94",
										0
									],
									"destination": [
										"obj-95",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-95",
										0
									],
									"destination": [
										"obj-96",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-96",
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
										"obj-98",
										0
									],
									"destination": [
										"obj-99",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"obj-99",
										0
									],
									"destination": [
										"obj-100",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-100",
										0
									],
									"destination": [
										"obj-101",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-101",
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
										"obj-103",
										0
									],
									"destination": [
										"obj-104",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"obj-104",
										0
									],
									"destination": [
										"obj-105",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-105",
										0
									],
									"destination": [
										"obj-106",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-106",
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
										"obj-108",
										0
									],
									"destination": [
										"obj-109",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"obj-109",
										0
									],
									"destination": [
										"obj-110",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-110",
										0
									],
									"destination": [
										"obj-111",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-111",
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
										"obj-113",
										0
									],
									"destination": [
										"obj-114",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"obj-114",
										0
									],
									"destination": [
										"obj-115",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-115",
										0
									],
									"destination": [
										"obj-116",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-116",
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
										"obj-118",
										0
									],
									"destination": [
										"obj-119",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"obj-119",
										0
									],
									"destination": [
										"obj-120",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-120",
										0
									],
									"destination": [
										"obj-121",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-121",
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
										"obj-123",
										0
									],
									"destination": [
										"obj-124",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"obj-124",
										0
									],
									"destination": [
										"obj-125",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-125",
										0
									],
									"destination": [
										"obj-126",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-126",
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
										"obj-128",
										0
									],
									"destination": [
										"obj-129",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"obj-129",
										0
									],
									"destination": [
										"obj-130",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-130",
										0
									],
									"destination": [
										"obj-131",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-131",
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
										"obj-133",
										0
									],
									"destination": [
										"obj-134",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"obj-134",
										0
									],
									"destination": [
										"obj-135",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-135",
										0
									],
									"destination": [
										"obj-136",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-136",
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
										"obj-138",
										0
									],
									"destination": [
										"obj-139",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"obj-139",
										0
									],
									"destination": [
										"obj-140",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-140",
										0
									],
									"destination": [
										"obj-141",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-141",
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
										"obj-143",
										0
									],
									"destination": [
										"obj-144",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"obj-144",
										0
									],
									"destination": [
										"obj-145",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-145",
										0
									],
									"destination": [
										"obj-146",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-146",
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
										"obj-148",
										0
									],
									"destination": [
										"obj-149",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"obj-149",
										0
									],
									"destination": [
										"obj-150",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-150",
										0
									],
									"destination": [
										"obj-151",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-151",
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
										"obj-153",
										0
									],
									"destination": [
										"obj-154",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"obj-154",
										0
									],
									"destination": [
										"obj-155",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-155",
										0
									],
									"destination": [
										"obj-156",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-156",
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
										"obj-158",
										0
									],
									"destination": [
										"obj-159",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"obj-159",
										0
									],
									"destination": [
										"obj-160",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-160",
										0
									],
									"destination": [
										"obj-161",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-161",
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
										"obj-163",
										0
									],
									"destination": [
										"obj-164",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"obj-164",
										0
									],
									"destination": [
										"obj-165",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-165",
										0
									],
									"destination": [
										"obj-166",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-166",
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
										"obj-168",
										0
									],
									"destination": [
										"obj-169",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"obj-169",
										0
									],
									"destination": [
										"obj-170",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-170",
										0
									],
									"destination": [
										"obj-171",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-171",
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
										"obj-173",
										0
									],
									"destination": [
										"obj-174",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"obj-174",
										0
									],
									"destination": [
										"obj-175",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-175",
										0
									],
									"destination": [
										"obj-176",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-176",
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
										"obj-178",
										0
									],
									"destination": [
										"obj-179",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"obj-179",
										0
									],
									"destination": [
										"obj-180",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-180",
										0
									],
									"destination": [
										"obj-181",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-181",
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
										"obj-183",
										0
									],
									"destination": [
										"obj-184",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"obj-184",
										0
									],
									"destination": [
										"obj-185",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-185",
										0
									],
									"destination": [
										"obj-186",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-186",
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
										"obj-188",
										0
									],
									"destination": [
										"obj-189",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"obj-189",
										0
									],
									"destination": [
										"obj-190",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-190",
										0
									],
									"destination": [
										"obj-191",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-191",
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
										"obj-193",
										0
									],
									"destination": [
										"obj-194",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"obj-194",
										0
									],
									"destination": [
										"obj-195",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-195",
										0
									],
									"destination": [
										"obj-196",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-196",
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
										"obj-198",
										0
									],
									"destination": [
										"obj-199",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"obj-199",
										0
									],
									"destination": [
										"obj-200",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-200",
										0
									],
									"destination": [
										"obj-201",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-201",
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
										"obj-203",
										0
									],
									"destination": [
										"obj-204",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"obj-204",
										0
									],
									"destination": [
										"obj-205",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-205",
										0
									],
									"destination": [
										"obj-206",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-206",
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
										"obj-208",
										0
									],
									"destination": [
										"obj-209",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"obj-209",
										0
									],
									"destination": [
										"obj-210",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-210",
										0
									],
									"destination": [
										"obj-211",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-211",
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
										"obj-213",
										0
									],
									"destination": [
										"obj-214",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"obj-214",
										0
									],
									"destination": [
										"obj-215",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-215",
										0
									],
									"destination": [
										"obj-216",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-216",
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
										"obj-218",
										0
									],
									"destination": [
										"obj-219",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"obj-219",
										0
									],
									"destination": [
										"obj-220",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-220",
										0
									],
									"destination": [
										"obj-221",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-221",
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
										"obj-223",
										0
									],
									"destination": [
										"obj-224",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"obj-224",
										0
									],
									"destination": [
										"obj-225",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-225",
										0
									],
									"destination": [
										"obj-226",
										0
									],
									"hidden": 1
								}
							},
							{
								"patchline": {
									"source": [
										"obj-226",
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
										"obj-228",
										0
									],
									"destination": [
										"obj-229",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"obj-229",
										0
									],
									"destination": [
										"obj-230",
										0
									],
									"hidden": 0
								}
							},
							{
								"patchline": {
									"source": [
										"obj-230",
										0
									],
									"destination": [
										"obj-4",
										0
									],
									"hidden": 1
								}
							}
						],
						"autosave": 0
					},
					"patching_rect": [
						696,
						310,
						155,
						22
					],
					"text": "p generate random settings",
					"varname": "direct_parameter_messaging"
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
					"hint": "External signal input: send~ AMXD_FilterTaps",
					"id": "obj-115",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						536.5,
						266,
						209,
						22
					],
					"text": "receive~ AMXD_FilterTaps_send"
				}
			},
			{
				"box": {
					"fontface": 1,
					"fontsize": 10,
					"id": "obj-116",
					"linecount": 3,
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						415,
						259,
						50,
						40
					],
					"text": "amxd~\ngraphic\ninterface"
				}
			},
			{
				"box": {
					"channels": 1,
					"focusbordercolor": [
						0.039216,
						0.039216,
						0.039216,
						1
					],
					"hint": "Final stereo output gain; initializes to -65 dB and remains mouse-adjustable.",
					"id": "obj-117",
					"lastchannelcount": 0,
					"maxclass": "live.gain~",
					"numinlets": 1,
					"numoutlets": 4,
					"orientation": 1,
					"outlettype": [
						"signal",
						"",
						"float",
						"list"
					],
					"parameter_enable": 1,
					"patching_rect": [
						92,
						183,
						60,
						30
					],
					"saved_attribute_attributes": {
						"focusbordercolor": {
							"expression": "themecolor.live_arranger_grid_tiles"
						},
						"tribordercolor": {
							"expression": ""
						},
						"tricolor": {
							"expression": ""
						},
						"trioncolor": {
							"expression": ""
						},
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
					"tribordercolor": [
						0,
						0,
						0,
						1
					],
					"tricolor": [
						1,
						0,
						0,
						1
					],
					"trioncolor": [
						1,
						0,
						0,
						1
					],
					"varname": "dry_output_gain"
				}
			},
			{
				"box": {
					"angle": 270,
					"background": 1,
					"bgcolor": [
						0.2901960784313726,
						0.8509803921568627,
						0.6980392156862745,
						1
					],
					"id": "obj-41",
					"maxclass": "panel",
					"mode": 0,
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						393.5,
						72,
						760,
						377
					],
					"proportion": 0.5
				}
			},
			{
				"box": {
					"bgcolor": [
						1,
						0,
						0,
						1
					],
					"blinkcolor": [
						0,
						0,
						0,
						1
					],
					"hint": "Randomize all Direct_Parameter_Messaging values; Input and internal Gain remain fixed at -10 dB.",
					"id": "obj-119",
					"maxclass": "button",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"bang"
					],
					"outlinecolor": [
						0,
						0,
						0,
						1
					],
					"parameter_enable": 0,
					"patching_rect": [
						854,
						310,
						22,
						22
					]
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-202",
					"maxclass": "newobj",
					"numinlets": 3,
					"numoutlets": 2,
					"outlettype": [
						"",
						"bang"
					],
					"patching_rect": [
						428.5,
						344,
						54,
						22
					],
					"text": "line 0.",
					"varname": "preset_output_gain_line"
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-203",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						555,
						370,
						32,
						22
					],
					"text": "+~"
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-204",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						555,
						396,
						46,
						22
					],
					"text": "*~ 0.5"
				}
			},
			{
				"box": {
					"id": "obj-402",
					"maxclass": "meter~",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"float"
					],
					"patching_rect": [
						89,
						322,
						80,
						12
					]
				}
			},
			{
				"box": {
					"id": "obj-400",
					"maxclass": "number",
					"maximum": 24,
					"minimum": 1,
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"bang"
					],
					"parameter_enable": 0,
					"patching_rect": [
						716,
						86,
						45,
						22
					],
					"varname": "preset_store_slot_number"
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-401",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						819,
						110,
						70,
						22
					],
					"text": "loadmess 1"
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-403",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						478.5,
						110,
						100,
						22
					],
					"text": "loadmess set 24"
				}
			},
			{
				"box": {
					"fontface": 0,
					"fontsize": 9,
					"id": "obj-406",
					"linecount": 2,
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						412,
						456,
						722,
						27
					],
					"text": "CAUTION: Always keep output gains low when testing and building presets. Certain parameter settings such as high feedback, resonance, or high gain values can become loud or unstable.",
					"textcolor": [
						1,
						0,
						0,
						1
					],
					"varname": "preset_safety_caution"
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-510",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"int"
					],
					"patching_rect": [
						804,
						485,
						45,
						22
					],
					"text": "active"
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-511",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 2,
					"outlettype": [
						"bang",
						""
					],
					"patching_rect": [
						854,
						485,
						42,
						22
					],
					"text": "sel 1"
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-512",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 2,
					"outlettype": [
						"bang",
						"bang"
					],
					"patching_rect": [
						901,
						485,
						58,
						22
					],
					"text": "onebang"
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-513",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"bang"
					],
					"patching_rect": [
						964,
						485,
						57,
						22
					],
					"text": "delay 25"
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-514",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						804,
						511,
						250,
						22
					],
					"text": "window size 37 288 1276 880, window exec"
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-515",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						""
					],
					"patching_rect": [
						1059,
						511,
						75,
						22
					],
					"save": [
						"#N",
						"thispatcher",
						";",
						"#Q",
						"end",
						";"
					],
					"text": "thispatcher"
				}
			},
			{
				"box": {
					"bgcolor": [
						0.055,
						0.247,
						0.702,
						1
					],
					"fontface": 1,
					"fontsize": 24,
					"id": "obj-500",
					"maxclass": "newobj",
					"numinlets": 0,
					"numoutlets": 0,
					"outlettype": [],
					"patcher": {
						"fileversion": 1,
						"appversion": {
							"major": 9,
							"minor": 2,
							"revision": 1,
							"architecture": "x64",
							"modernui": 1
						},
						"classnamespace": "box",
						"rect": [
							100,
							100,
							1100,
							780
						],
						"bgcolor": [
							0.965,
							0.965,
							0.965,
							1
						],
						"boxes": [
							{
								"box": {
									"bgcolor": [
										0.055,
										0.247,
										0.702,
										1
									],
									"fontface": 1,
									"fontsize": 24,
									"id": "guide-title",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										18,
										1050,
										38
									],
									"text": "FILTERTAPS — PARAMETER GUIDE",
									"textcolor": [
										1,
										1,
										1,
										1
									]
								}
							},
							{
								"box": {
									"fontsize": 11,
									"id": "guide-intro",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										62,
										1050,
										34
									],
									"text": "Each entry gives the exact AMXD selector, value type, range, applicable unit, audible function, and the typical effect of moving from lower to higher values."
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 14,
									"id": "guide-name-0",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										106,
										240,
										22
									],
									"text": "Delay Scale",
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
									"fontsize": 10,
									"id": "guide-meta-0",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										270,
										106,
										804,
										35
									],
									"text": "Selector: delay_rel3\nFloat · 1–5000 ms",
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
									"fontsize": 11,
									"id": "guide-desc-0",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										144,
										1050,
										20
									],
									"text": "Sets a multiplication factor for the time of each tap’s"
								}
							},
							{
								"box": {
									"bgcolor": [
										0.9,
										0.94,
										0.985,
										1
									],
									"fontsize": 11,
									"id": "guide-effect-0",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										167,
										1050,
										32
									],
									"text": "LOW / HIGH — Lower values make the interval or transition shorter; higher values make it longer."
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 14,
									"id": "guide-name-1",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										208,
										240,
										22
									],
									"text": "[40]",
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
									"fontsize": 10,
									"id": "guide-meta-1",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										270,
										208,
										804,
										35
									],
									"text": "Selector: [40]\nFloat · 1–5000",
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
									"fontsize": 11,
									"id": "guide-desc-1",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										246,
										1050,
										20
									],
									"text": "Controls this stage of the effect using the range shown above."
								}
							},
							{
								"box": {
									"bgcolor": [
										0.9,
										0.94,
										0.985,
										1
									],
									"fontsize": 11,
									"id": "guide-effect-1",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										269,
										1050,
										32
									],
									"text": "LOW / HIGH — Lower values make the effect subtler or narrower; higher values make it stronger, wider, or more frequent."
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 14,
									"id": "guide-name-2",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										310,
										240,
										22
									],
									"text": "Pitch5",
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
									"fontsize": 10,
									"id": "guide-meta-2",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										270,
										310,
										804,
										35
									],
									"text": "Selector: pitch5\nFloat · device-defined range",
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
									"fontsize": 11,
									"id": "guide-desc-2",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										348,
										1050,
										20
									],
									"text": "Controls pitch displacement or pitch-processing behavior."
								}
							},
							{
								"box": {
									"bgcolor": [
										0.9,
										0.94,
										0.985,
										1
									],
									"fontsize": 11,
									"id": "guide-effect-2",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										371,
										1050,
										32
									],
									"text": "LOW / HIGH — Lower values move pitch downward or reduce upward shift; higher values move pitch upward."
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 14,
									"id": "guide-name-3",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										412,
										240,
										22
									],
									"text": "Delay Scale",
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
									"fontsize": 10,
									"id": "guide-meta-3",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										270,
										412,
										804,
										35
									],
									"text": "Selector: global_delay_scale\nFloat · 1–10",
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
									"fontsize": 11,
									"id": "guide-desc-3",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										450,
										1050,
										20
									],
									"text": "Sets a multiplication factor for the time of each tap’s"
								}
							},
							{
								"box": {
									"bgcolor": [
										0.9,
										0.94,
										0.985,
										1
									],
									"fontsize": 11,
									"id": "guide-effect-3",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										473,
										1050,
										32
									],
									"text": "LOW / HIGH — Lower values reduce or scale down this control; higher values increase or intensify its contribution."
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 14,
									"id": "guide-name-4",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										514,
										240,
										22
									],
									"text": "Delay Scale",
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
									"fontsize": 10,
									"id": "guide-meta-4",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										270,
										514,
										804,
										35
									],
									"text": "Selector: delay_rel4\nFloat · 1–5000 ms",
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
									"fontsize": 11,
									"id": "guide-desc-4",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										552,
										1050,
										20
									],
									"text": "Sets a multiplication factor for the time of each tap’s"
								}
							},
							{
								"box": {
									"bgcolor": [
										0.9,
										0.94,
										0.985,
										1
									],
									"fontsize": 11,
									"id": "guide-effect-4",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										575,
										1050,
										32
									],
									"text": "LOW / HIGH — Lower values make the interval or transition shorter; higher values make it longer."
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 14,
									"id": "guide-name-5",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										616,
										240,
										22
									],
									"text": "[5]",
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
									"fontsize": 10,
									"id": "guide-meta-5",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										270,
										616,
										804,
										35
									],
									"text": "Selector: [5]\nFloat · 1–5000",
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
									"fontsize": 11,
									"id": "guide-desc-5",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										654,
										1050,
										20
									],
									"text": "Controls this stage of the effect using the range shown above."
								}
							},
							{
								"box": {
									"bgcolor": [
										0.9,
										0.94,
										0.985,
										1
									],
									"fontsize": 11,
									"id": "guide-effect-5",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										677,
										1050,
										32
									],
									"text": "LOW / HIGH — Lower values make the effect subtler or narrower; higher values make it stronger, wider, or more frequent."
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 14,
									"id": "guide-name-6",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										718,
										240,
										22
									],
									"text": "Pitch3",
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
									"fontsize": 10,
									"id": "guide-meta-6",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										270,
										718,
										804,
										35
									],
									"text": "Selector: pitch3\nFloat · device-defined range",
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
									"fontsize": 11,
									"id": "guide-desc-6",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										756,
										1050,
										20
									],
									"text": "Controls pitch displacement or pitch-processing behavior."
								}
							},
							{
								"box": {
									"bgcolor": [
										0.9,
										0.94,
										0.985,
										1
									],
									"fontsize": 11,
									"id": "guide-effect-6",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										779,
										1050,
										32
									],
									"text": "LOW / HIGH — Lower values move pitch downward or reduce upward shift; higher values move pitch upward."
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 14,
									"id": "guide-name-7",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										820,
										240,
										22
									],
									"text": "Pitch6",
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
									"fontsize": 10,
									"id": "guide-meta-7",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										270,
										820,
										804,
										35
									],
									"text": "Selector: pitch6\nFloat · device-defined range",
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
									"fontsize": 11,
									"id": "guide-desc-7",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										858,
										1050,
										20
									],
									"text": "Controls pitch displacement or pitch-processing behavior."
								}
							},
							{
								"box": {
									"bgcolor": [
										0.9,
										0.94,
										0.985,
										1
									],
									"fontsize": 11,
									"id": "guide-effect-7",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										881,
										1050,
										32
									],
									"text": "LOW / HIGH — Lower values move pitch downward or reduce upward shift; higher values move pitch upward."
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 14,
									"id": "guide-name-8",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										922,
										240,
										22
									],
									"text": "Fb Gain",
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
									"fontsize": 10,
									"id": "guide-meta-8",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										270,
										922,
										804,
										35
									],
									"text": "Selector: gain5\nFloat · 1–300",
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
									"fontsize": 11,
									"id": "guide-desc-8",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										960,
										1050,
										20
									],
									"text": "Sets level of the signal in the feedback tap that is fed back into the"
								}
							},
							{
								"box": {
									"bgcolor": [
										0.9,
										0.94,
										0.985,
										1
									],
									"fontsize": 11,
									"id": "guide-effect-8",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										983,
										1050,
										32
									],
									"text": "LOW / HIGH — Lower values shorten and soften recirculation; higher values produce longer, denser, and potentially self-sustaining feedback."
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 14,
									"id": "guide-name-9",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										1024,
										240,
										22
									],
									"text": "Global Q",
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
									"fontsize": 10,
									"id": "guide-meta-9",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										270,
										1024,
										804,
										35
									],
									"text": "Selector: global_q\nFloat · 0–1",
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
									"fontsize": 11,
									"id": "guide-desc-9",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										1062,
										1050,
										20
									],
									"text": "Sets resonance for all bandpass filters."
								}
							},
							{
								"box": {
									"bgcolor": [
										0.9,
										0.94,
										0.985,
										1
									],
									"fontsize": 11,
									"id": "guide-effect-9",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										1085,
										1050,
										32
									],
									"text": "LOW / HIGH — Lower values are broader and gentler; higher values are narrower, more pronounced, and may ring."
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 14,
									"id": "guide-name-10",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										1126,
										240,
										22
									],
									"text": "Pan4",
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
									"fontsize": 10,
									"id": "guide-meta-10",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										270,
										1126,
										804,
										35
									],
									"text": "Selector: pan4\nFloat · device-defined range",
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
									"fontsize": 11,
									"id": "guide-desc-10",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										1164,
										1050,
										20
									],
									"text": "Controls the spatial position or stereo placement of the signal."
								}
							},
							{
								"box": {
									"bgcolor": [
										0.9,
										0.94,
										0.985,
										1
									],
									"fontsize": 11,
									"id": "guide-effect-10",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										1187,
										1050,
										32
									],
									"text": "LOW / HIGH — Lower values move toward the left or first position; higher values move toward the right or last position."
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 14,
									"id": "guide-name-11",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										1228,
										240,
										22
									],
									"text": "Pitch4",
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
									"fontsize": 10,
									"id": "guide-meta-11",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										270,
										1228,
										804,
										35
									],
									"text": "Selector: pitch4\nFloat · device-defined range",
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
									"fontsize": 11,
									"id": "guide-desc-11",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										1266,
										1050,
										20
									],
									"text": "Controls pitch displacement or pitch-processing behavior."
								}
							},
							{
								"box": {
									"bgcolor": [
										0.9,
										0.94,
										0.985,
										1
									],
									"fontsize": 11,
									"id": "guide-effect-11",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										1289,
										1050,
										32
									],
									"text": "LOW / HIGH — Lower values move pitch downward or reduce upward shift; higher values move pitch upward."
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 14,
									"id": "guide-name-12",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										1330,
										240,
										22
									],
									"text": "Fb Gain",
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
									"fontsize": 10,
									"id": "guide-meta-12",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										270,
										1330,
										804,
										35
									],
									"text": "Selector: gain3\nFloat · 1–300",
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
									"fontsize": 11,
									"id": "guide-desc-12",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										1368,
										1050,
										20
									],
									"text": "Sets level of the signal in the feedback tap that is fed back into the"
								}
							},
							{
								"box": {
									"bgcolor": [
										0.9,
										0.94,
										0.985,
										1
									],
									"fontsize": 11,
									"id": "guide-effect-12",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										1391,
										1050,
										32
									],
									"text": "LOW / HIGH — Lower values shorten and soften recirculation; higher values produce longer, denser, and potentially self-sustaining feedback."
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 14,
									"id": "guide-name-13",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										1432,
										240,
										22
									],
									"text": "Pan6",
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
									"fontsize": 10,
									"id": "guide-meta-13",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										270,
										1432,
										804,
										35
									],
									"text": "Selector: pan6\nFloat · device-defined range",
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
									"fontsize": 11,
									"id": "guide-desc-13",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										1470,
										1050,
										20
									],
									"text": "Controls the spatial position or stereo placement of the signal."
								}
							},
							{
								"box": {
									"bgcolor": [
										0.9,
										0.94,
										0.985,
										1
									],
									"fontsize": 11,
									"id": "guide-effect-13",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										1493,
										1050,
										32
									],
									"text": "LOW / HIGH — Lower values move toward the left or first position; higher values move toward the right or last position."
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 14,
									"id": "guide-name-14",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										1534,
										240,
										22
									],
									"text": "Fb Gain",
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
									"fontsize": 10,
									"id": "guide-meta-14",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										270,
										1534,
										804,
										35
									],
									"text": "Selector: fb_gain\nFloat · 0–1",
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
									"fontsize": 11,
									"id": "guide-desc-14",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										1572,
										1050,
										20
									],
									"text": "Sets level of the signal in the feedback tap that is fed back into the"
								}
							},
							{
								"box": {
									"bgcolor": [
										0.9,
										0.94,
										0.985,
										1
									],
									"fontsize": 11,
									"id": "guide-effect-14",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										1595,
										1050,
										32
									],
									"text": "LOW / HIGH — Lower values shorten and soften recirculation; higher values produce longer, denser, and potentially self-sustaining feedback."
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 14,
									"id": "guide-name-15",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										1636,
										240,
										22
									],
									"text": "[35]",
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
									"fontsize": 10,
									"id": "guide-meta-15",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										270,
										1636,
										804,
										35
									],
									"text": "Selector: [35]\nFloat · 1–5000",
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
									"fontsize": 11,
									"id": "guide-desc-15",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										1674,
										1050,
										20
									],
									"text": "Controls this stage of the effect using the range shown above."
								}
							},
							{
								"box": {
									"bgcolor": [
										0.9,
										0.94,
										0.985,
										1
									],
									"fontsize": 11,
									"id": "guide-effect-15",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										1697,
										1050,
										32
									],
									"text": "LOW / HIGH — Lower values make the effect subtler or narrower; higher values make it stronger, wider, or more frequent."
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 14,
									"id": "guide-name-16",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										1738,
										240,
										22
									],
									"text": "Fb Gain",
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
									"fontsize": 10,
									"id": "guide-meta-16",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										270,
										1738,
										804,
										35
									],
									"text": "Selector: gain[5]\nFloat · 1–300",
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
									"fontsize": 11,
									"id": "guide-desc-16",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										1776,
										1050,
										20
									],
									"text": "Sets level of the signal in the feedback tap that is fed back into the"
								}
							},
							{
								"box": {
									"bgcolor": [
										0.9,
										0.94,
										0.985,
										1
									],
									"fontsize": 11,
									"id": "guide-effect-16",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										1799,
										1050,
										32
									],
									"text": "LOW / HIGH — Lower values shorten and soften recirculation; higher values produce longer, denser, and potentially self-sustaining feedback."
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 14,
									"id": "guide-name-17",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										1840,
										240,
										22
									],
									"text": "Pan3",
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
									"fontsize": 10,
									"id": "guide-meta-17",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										270,
										1840,
										804,
										35
									],
									"text": "Selector: pan3\nFloat · device-defined range",
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
									"fontsize": 11,
									"id": "guide-desc-17",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										1878,
										1050,
										20
									],
									"text": "Controls the spatial position or stereo placement of the signal."
								}
							},
							{
								"box": {
									"bgcolor": [
										0.9,
										0.94,
										0.985,
										1
									],
									"fontsize": 11,
									"id": "guide-effect-17",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										1901,
										1050,
										32
									],
									"text": "LOW / HIGH — Lower values move toward the left or first position; higher values move toward the right or last position."
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 14,
									"id": "guide-name-18",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										1942,
										240,
										22
									],
									"text": "[23]",
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
									"fontsize": 10,
									"id": "guide-meta-18",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										270,
										1942,
										804,
										35
									],
									"text": "Selector: [23]\nFloat · 1–300",
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
									"fontsize": 11,
									"id": "guide-desc-18",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										1980,
										1050,
										20
									],
									"text": "Controls this stage of the effect using the range shown above."
								}
							},
							{
								"box": {
									"bgcolor": [
										0.9,
										0.94,
										0.985,
										1
									],
									"fontsize": 11,
									"id": "guide-effect-18",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										2003,
										1050,
										32
									],
									"text": "LOW / HIGH — Lower values make the effect subtler or narrower; higher values make it stronger, wider, or more frequent."
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 14,
									"id": "guide-name-19",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										2044,
										240,
										22
									],
									"text": "[2]",
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
									"fontsize": 10,
									"id": "guide-meta-19",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										270,
										2044,
										804,
										35
									],
									"text": "Selector: [2]\nFloat · 0–20000",
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
									"fontsize": 11,
									"id": "guide-desc-19",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										2082,
										1050,
										20
									],
									"text": "Controls this stage of the effect using the range shown above."
								}
							},
							{
								"box": {
									"bgcolor": [
										0.9,
										0.94,
										0.985,
										1
									],
									"fontsize": 11,
									"id": "guide-effect-19",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										2105,
										1050,
										32
									],
									"text": "LOW / HIGH — Lower values make the effect subtler or narrower; higher values make it stronger, wider, or more frequent."
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 14,
									"id": "guide-name-20",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										2146,
										240,
										22
									],
									"text": "[18]",
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
									"fontsize": 10,
									"id": "guide-meta-20",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										270,
										2146,
										804,
										35
									],
									"text": "Selector: [18]\nFloat · 1–5000",
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
									"fontsize": 11,
									"id": "guide-desc-20",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										2184,
										1050,
										20
									],
									"text": "Controls this stage of the effect using the range shown above."
								}
							},
							{
								"box": {
									"bgcolor": [
										0.9,
										0.94,
										0.985,
										1
									],
									"fontsize": 11,
									"id": "guide-effect-20",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										2207,
										1050,
										32
									],
									"text": "LOW / HIGH — Lower values make the effect subtler or narrower; higher values make it stronger, wider, or more frequent."
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 14,
									"id": "guide-name-21",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										2248,
										240,
										22
									],
									"text": "Dry/Wet",
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
									"fontsize": 10,
									"id": "guide-meta-21",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										270,
										2248,
										804,
										35
									],
									"text": "Selector: dry/wet\nInteger · 0–100 %",
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
									"fontsize": 11,
									"id": "guide-desc-21",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										2286,
										1050,
										20
									],
									"text": "Balances dry and processed audio."
								}
							},
							{
								"box": {
									"bgcolor": [
										0.9,
										0.94,
										0.985,
										1
									],
									"fontsize": 11,
									"id": "guide-effect-21",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										2309,
										1050,
										32
									],
									"text": "LOW / HIGH — Lower values favor the original dry signal; higher values favor the processed effect."
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 14,
									"id": "guide-name-22",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										2350,
										240,
										22
									],
									"text": "[32]",
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
									"fontsize": 10,
									"id": "guide-meta-22",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										270,
										2350,
										804,
										35
									],
									"text": "Selector: [32]\nFloat · 0–20000",
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
									"fontsize": 11,
									"id": "guide-desc-22",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										2388,
										1050,
										20
									],
									"text": "Controls this stage of the effect using the range shown above."
								}
							},
							{
								"box": {
									"bgcolor": [
										0.9,
										0.94,
										0.985,
										1
									],
									"fontsize": 11,
									"id": "guide-effect-22",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										2411,
										1050,
										32
									],
									"text": "LOW / HIGH — Lower values make the effect subtler or narrower; higher values make it stronger, wider, or more frequent."
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 14,
									"id": "guide-name-23",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										2452,
										240,
										22
									],
									"text": "Delay Scale",
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
									"fontsize": 10,
									"id": "guide-meta-23",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										270,
										2452,
										804,
										35
									],
									"text": "Selector: delay_rel6\nFloat · 1–5000 ms",
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
									"fontsize": 11,
									"id": "guide-desc-23",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										2490,
										1050,
										20
									],
									"text": "Sets a multiplication factor for the time of each tap’s"
								}
							},
							{
								"box": {
									"bgcolor": [
										0.9,
										0.94,
										0.985,
										1
									],
									"fontsize": 11,
									"id": "guide-effect-23",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										2513,
										1050,
										32
									],
									"text": "LOW / HIGH — Lower values make the interval or transition shorter; higher values make it longer."
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 14,
									"id": "guide-name-24",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										2554,
										240,
										22
									],
									"text": "[26]",
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
									"fontsize": 10,
									"id": "guide-meta-24",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										270,
										2554,
										804,
										35
									],
									"text": "Selector: [26]\nFloat · 0–20000",
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
									"fontsize": 11,
									"id": "guide-desc-24",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										2592,
										1050,
										20
									],
									"text": "Controls this stage of the effect using the range shown above."
								}
							},
							{
								"box": {
									"bgcolor": [
										0.9,
										0.94,
										0.985,
										1
									],
									"fontsize": 11,
									"id": "guide-effect-24",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										2615,
										1050,
										32
									],
									"text": "LOW / HIGH — Lower values make the effect subtler or narrower; higher values make it stronger, wider, or more frequent."
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 14,
									"id": "guide-name-25",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										2656,
										240,
										22
									],
									"text": "[38]",
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
									"fontsize": 10,
									"id": "guide-meta-25",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										270,
										2656,
										804,
										35
									],
									"text": "Selector: [38]\nFloat · 1–5000",
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
									"fontsize": 11,
									"id": "guide-desc-25",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										2694,
										1050,
										20
									],
									"text": "Controls this stage of the effect using the range shown above."
								}
							},
							{
								"box": {
									"bgcolor": [
										0.9,
										0.94,
										0.985,
										1
									],
									"fontsize": 11,
									"id": "guide-effect-25",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										2717,
										1050,
										32
									],
									"text": "LOW / HIGH — Lower values make the effect subtler or narrower; higher values make it stronger, wider, or more frequent."
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 14,
									"id": "guide-name-26",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										2758,
										240,
										22
									],
									"text": "Frequency Scale",
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
									"fontsize": 10,
									"id": "guide-meta-26",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										270,
										2758,
										804,
										35
									],
									"text": "Selector: global_freq_scale\nFloat · 1–100 cents",
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
									"fontsize": 11,
									"id": "guide-desc-26",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										2796,
										1050,
										20
									],
									"text": "Sets a multiplication factor for the base center frequency of each"
								}
							},
							{
								"box": {
									"bgcolor": [
										0.9,
										0.94,
										0.985,
										1
									],
									"fontsize": 11,
									"id": "guide-effect-26",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										2819,
										1050,
										32
									],
									"text": "LOW / HIGH — Lower values emphasize or target lower frequencies; higher values move the operation upward in frequency."
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 14,
									"id": "guide-name-27",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										2860,
										240,
										22
									],
									"text": "[14]",
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
									"fontsize": 10,
									"id": "guide-meta-27",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										270,
										2860,
										804,
										35
									],
									"text": "Selector: [14]\nFloat · device-defined range",
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
									"fontsize": 11,
									"id": "guide-desc-27",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										2898,
										1050,
										20
									],
									"text": "Controls this stage of the effect using the range shown above."
								}
							},
							{
								"box": {
									"bgcolor": [
										0.9,
										0.94,
										0.985,
										1
									],
									"fontsize": 11,
									"id": "guide-effect-27",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										2921,
										1050,
										32
									],
									"text": "LOW / HIGH — Lower values make the effect subtler or narrower; higher values make it stronger, wider, or more frequent."
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 14,
									"id": "guide-name-28",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										2962,
										240,
										22
									],
									"text": "[27]",
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
									"fontsize": 10,
									"id": "guide-meta-28",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										270,
										2962,
										804,
										35
									],
									"text": "Selector: [27]\nFloat · 1–5000",
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
									"fontsize": 11,
									"id": "guide-desc-28",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										3000,
										1050,
										20
									],
									"text": "Controls this stage of the effect using the range shown above."
								}
							},
							{
								"box": {
									"bgcolor": [
										0.9,
										0.94,
										0.985,
										1
									],
									"fontsize": 11,
									"id": "guide-effect-28",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										3023,
										1050,
										32
									],
									"text": "LOW / HIGH — Lower values make the effect subtler or narrower; higher values make it stronger, wider, or more frequent."
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 14,
									"id": "guide-name-29",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										3064,
										240,
										22
									],
									"text": "[3]",
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
									"fontsize": 10,
									"id": "guide-meta-29",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										270,
										3064,
										804,
										35
									],
									"text": "Selector: [3]\nFloat · 1–5000",
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
									"fontsize": 11,
									"id": "guide-desc-29",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										3102,
										1050,
										20
									],
									"text": "Controls this stage of the effect using the range shown above."
								}
							},
							{
								"box": {
									"bgcolor": [
										0.9,
										0.94,
										0.985,
										1
									],
									"fontsize": 11,
									"id": "guide-effect-29",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										3125,
										1050,
										32
									],
									"text": "LOW / HIGH — Lower values make the effect subtler or narrower; higher values make it stronger, wider, or more frequent."
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 14,
									"id": "guide-name-30",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										3166,
										240,
										22
									],
									"text": "[34]",
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
									"fontsize": 10,
									"id": "guide-meta-30",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										270,
										3166,
										804,
										35
									],
									"text": "Selector: [34]\nFloat · 1–5000",
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
									"fontsize": 11,
									"id": "guide-desc-30",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										3204,
										1050,
										20
									],
									"text": "Controls this stage of the effect using the range shown above."
								}
							},
							{
								"box": {
									"bgcolor": [
										0.9,
										0.94,
										0.985,
										1
									],
									"fontsize": 11,
									"id": "guide-effect-30",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										3227,
										1050,
										32
									],
									"text": "LOW / HIGH — Lower values make the effect subtler or narrower; higher values make it stronger, wider, or more frequent."
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 14,
									"id": "guide-name-31",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										3268,
										240,
										22
									],
									"text": "Pan2",
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
									"fontsize": 10,
									"id": "guide-meta-31",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										270,
										3268,
										804,
										35
									],
									"text": "Selector: pan2\nFloat · device-defined range",
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
									"fontsize": 11,
									"id": "guide-desc-31",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										3306,
										1050,
										20
									],
									"text": "Controls the spatial position or stereo placement of the signal."
								}
							},
							{
								"box": {
									"bgcolor": [
										0.9,
										0.94,
										0.985,
										1
									],
									"fontsize": 11,
									"id": "guide-effect-31",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										3329,
										1050,
										32
									],
									"text": "LOW / HIGH — Lower values move toward the left or first position; higher values move toward the right or last position."
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 14,
									"id": "guide-name-32",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										3370,
										240,
										22
									],
									"text": "Fb Gain",
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
									"fontsize": 10,
									"id": "guide-meta-32",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										270,
										3370,
										804,
										35
									],
									"text": "Selector: gain2\nFloat · 1–300",
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
									"fontsize": 11,
									"id": "guide-desc-32",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										3408,
										1050,
										20
									],
									"text": "Sets level of the signal in the feedback tap that is fed back into the"
								}
							},
							{
								"box": {
									"bgcolor": [
										0.9,
										0.94,
										0.985,
										1
									],
									"fontsize": 11,
									"id": "guide-effect-32",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										3431,
										1050,
										32
									],
									"text": "LOW / HIGH — Lower values shorten and soften recirculation; higher values produce longer, denser, and potentially self-sustaining feedback."
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 14,
									"id": "guide-name-33",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										3472,
										240,
										22
									],
									"text": "[21]",
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
									"fontsize": 10,
									"id": "guide-meta-33",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										270,
										3472,
										804,
										35
									],
									"text": "Selector: [21]\nFloat · 0–20000",
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
									"fontsize": 11,
									"id": "guide-desc-33",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										3510,
										1050,
										20
									],
									"text": "Controls this stage of the effect using the range shown above."
								}
							},
							{
								"box": {
									"bgcolor": [
										0.9,
										0.94,
										0.985,
										1
									],
									"fontsize": 11,
									"id": "guide-effect-33",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										3533,
										1050,
										32
									],
									"text": "LOW / HIGH — Lower values make the effect subtler or narrower; higher values make it stronger, wider, or more frequent."
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 14,
									"id": "guide-name-34",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										3574,
										240,
										22
									],
									"text": "[1]",
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
									"fontsize": 10,
									"id": "guide-meta-34",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										270,
										3574,
										804,
										35
									],
									"text": "Selector: [1]\nFloat · 0–20000",
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
									"fontsize": 11,
									"id": "guide-desc-34",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										3612,
										1050,
										20
									],
									"text": "Controls this stage of the effect using the range shown above."
								}
							},
							{
								"box": {
									"bgcolor": [
										0.9,
										0.94,
										0.985,
										1
									],
									"fontsize": 11,
									"id": "guide-effect-34",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										3635,
										1050,
										32
									],
									"text": "LOW / HIGH — Lower values make the effect subtler or narrower; higher values make it stronger, wider, or more frequent."
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 14,
									"id": "guide-name-35",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										3676,
										240,
										22
									],
									"text": "Pan5",
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
									"fontsize": 10,
									"id": "guide-meta-35",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										270,
										3676,
										804,
										35
									],
									"text": "Selector: pan5\nFloat · device-defined range",
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
									"fontsize": 11,
									"id": "guide-desc-35",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										3714,
										1050,
										20
									],
									"text": "Controls the spatial position or stereo placement of the signal."
								}
							},
							{
								"box": {
									"bgcolor": [
										0.9,
										0.94,
										0.985,
										1
									],
									"fontsize": 11,
									"id": "guide-effect-35",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										3737,
										1050,
										32
									],
									"text": "LOW / HIGH — Lower values move toward the left or first position; higher values move toward the right or last position."
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 14,
									"id": "guide-name-36",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										3778,
										240,
										22
									],
									"text": "Pitch2",
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
									"fontsize": 10,
									"id": "guide-meta-36",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										270,
										3778,
										804,
										35
									],
									"text": "Selector: pitch2\nFloat · device-defined range",
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
									"fontsize": 11,
									"id": "guide-desc-36",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										3816,
										1050,
										20
									],
									"text": "Controls pitch displacement or pitch-processing behavior."
								}
							},
							{
								"box": {
									"bgcolor": [
										0.9,
										0.94,
										0.985,
										1
									],
									"fontsize": 11,
									"id": "guide-effect-36",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										3839,
										1050,
										32
									],
									"text": "LOW / HIGH — Lower values move pitch downward or reduce upward shift; higher values move pitch upward."
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 14,
									"id": "guide-name-37",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										3880,
										240,
										22
									],
									"text": "Global Gain",
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
									"fontsize": 10,
									"id": "guide-meta-37",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										270,
										3880,
										804,
										35
									],
									"text": "Selector: global_gain\nFloat · -300–300 dB",
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
									"fontsize": 11,
									"id": "guide-desc-37",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										3918,
										1050,
										20
									],
									"text": "Sets gain for all the bandpass filters, which can help compensate for"
								}
							},
							{
								"box": {
									"bgcolor": [
										0.9,
										0.94,
										0.985,
										1
									],
									"fontsize": 11,
									"id": "guide-effect-37",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										3941,
										1050,
										32
									],
									"text": "LOW / HIGH — Lower values reduce level; higher values increase level. Raise cautiously to avoid clipping."
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 14,
									"id": "guide-name-38",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										3982,
										240,
										22
									],
									"text": "[22]",
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
									"fontsize": 10,
									"id": "guide-meta-38",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										270,
										3982,
										804,
										35
									],
									"text": "Selector: [22]\nFloat · 1–5000",
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
									"fontsize": 11,
									"id": "guide-desc-38",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										4020,
										1050,
										20
									],
									"text": "Controls this stage of the effect using the range shown above."
								}
							},
							{
								"box": {
									"bgcolor": [
										0.9,
										0.94,
										0.985,
										1
									],
									"fontsize": 11,
									"id": "guide-effect-38",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										4043,
										1050,
										32
									],
									"text": "LOW / HIGH — Lower values make the effect subtler or narrower; higher values make it stronger, wider, or more frequent."
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 14,
									"id": "guide-name-39",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										4084,
										240,
										22
									],
									"text": "Delay Scale",
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
									"fontsize": 10,
									"id": "guide-meta-39",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										270,
										4084,
										804,
										35
									],
									"text": "Selector: delay_rel5\nFloat · 1–5000 ms",
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
									"fontsize": 11,
									"id": "guide-desc-39",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										4122,
										1050,
										20
									],
									"text": "Sets a multiplication factor for the time of each tap’s"
								}
							},
							{
								"box": {
									"bgcolor": [
										0.9,
										0.94,
										0.985,
										1
									],
									"fontsize": 11,
									"id": "guide-effect-39",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										4145,
										1050,
										32
									],
									"text": "LOW / HIGH — Lower values make the interval or transition shorter; higher values make it longer."
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 14,
									"id": "guide-name-40",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										4186,
										240,
										22
									],
									"text": "Delay Scale",
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
									"fontsize": 10,
									"id": "guide-meta-40",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										270,
										4186,
										804,
										35
									],
									"text": "Selector: delay_rel2\nFloat · 1–5000 ms",
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
									"fontsize": 11,
									"id": "guide-desc-40",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										4224,
										1050,
										20
									],
									"text": "Sets a multiplication factor for the time of each tap’s"
								}
							},
							{
								"box": {
									"bgcolor": [
										0.9,
										0.94,
										0.985,
										1
									],
									"fontsize": 11,
									"id": "guide-effect-40",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										4247,
										1050,
										32
									],
									"text": "LOW / HIGH — Lower values make the interval or transition shorter; higher values make it longer."
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 14,
									"id": "guide-name-41",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										4288,
										240,
										22
									],
									"text": "[15]",
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
									"fontsize": 10,
									"id": "guide-meta-41",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										270,
										4288,
										804,
										35
									],
									"text": "Selector: [15]\nFloat · 0–20000",
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
									"fontsize": 11,
									"id": "guide-desc-41",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										4326,
										1050,
										20
									],
									"text": "Controls this stage of the effect using the range shown above."
								}
							},
							{
								"box": {
									"bgcolor": [
										0.9,
										0.94,
										0.985,
										1
									],
									"fontsize": 11,
									"id": "guide-effect-41",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										4349,
										1050,
										32
									],
									"text": "LOW / HIGH — Lower values make the effect subtler or narrower; higher values make it stronger, wider, or more frequent."
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 14,
									"id": "guide-name-42",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										4390,
										240,
										22
									],
									"text": "[30]",
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
									"fontsize": 10,
									"id": "guide-meta-42",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										270,
										4390,
										804,
										35
									],
									"text": "Selector: [30]\nFloat · device-defined range",
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
									"fontsize": 11,
									"id": "guide-desc-42",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										4428,
										1050,
										20
									],
									"text": "Controls this stage of the effect using the range shown above."
								}
							},
							{
								"box": {
									"bgcolor": [
										0.9,
										0.94,
										0.985,
										1
									],
									"fontsize": 11,
									"id": "guide-effect-42",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										4451,
										1050,
										32
									],
									"text": "LOW / HIGH — Lower values make the effect subtler or narrower; higher values make it stronger, wider, or more frequent."
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 14,
									"id": "guide-name-43",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										4492,
										240,
										22
									],
									"text": "Fb Gain",
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
									"fontsize": 10,
									"id": "guide-meta-43",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										270,
										4492,
										804,
										35
									],
									"text": "Selector: gain6\nFloat · 1–300",
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
									"fontsize": 11,
									"id": "guide-desc-43",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										4530,
										1050,
										20
									],
									"text": "Sets level of the signal in the feedback tap that is fed back into the"
								}
							},
							{
								"box": {
									"bgcolor": [
										0.9,
										0.94,
										0.985,
										1
									],
									"fontsize": 11,
									"id": "guide-effect-43",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										4553,
										1050,
										32
									],
									"text": "LOW / HIGH — Lower values shorten and soften recirculation; higher values produce longer, denser, and potentially self-sustaining feedback."
								}
							},
							{
								"box": {
									"fontface": 1,
									"fontsize": 11,
									"id": "guide-footer",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										4598,
										1050,
										34
									],
									"text": "Listening note: raise output gain gradually. High feedback, resonance, drive, or gain values can become loud or unstable.",
									"textcolor": [
										0.55,
										0.08,
										0.08,
										1
									]
								}
							}
						],
						"lines": [],
						"autosave": 0
					},
					"patching_rect": [
						24,
						463,
						265,
						40
					],
					"text": "p Parameter Guide",
					"textcolor": [
						1,
						1,
						1,
						1
					],
					"varname": "parameter_guide"
				}
			}
		],
		"lines": [
			{
				"patchline": {
					"destination": [
						"obj-30",
						0
					],
					"midpoints": [
						678.5,
						338.40625,
						400.3515625,
						338.40625,
						400.3515625,
						132.96484375,
						412.5,
						132.96484375
					],
					"source": [
						"obj-10",
						3
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-5",
						1
					],
					"source": [
						"obj-10",
						1
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
						"obj-10",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-30",
						3
					],
					"hidden": 1,
					"source": [
						"obj-101",
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
						"obj-10",
						0
					],
					"midpoints": [
						705.5,
						339.69921875,
						690.2734375,
						339.69921875,
						690.2734375,
						307.25390625,
						411.5,
						307.25390625
					],
					"source": [
						"obj-113",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-10",
						1
					],
					"order": 1,
					"source": [
						"obj-115",
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
					"order": 2,
					"source": [
						"obj-115",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-16",
						0
					],
					"order": 0,
					"source": [
						"obj-115",
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
					"order": 1,
					"source": [
						"obj-117",
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
					"hidden": 1,
					"order": 0,
					"source": [
						"obj-117",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-113",
						0
					],
					"midpoints": [
						863.5,
						342,
						850.48828125,
						342,
						850.48828125,
						306.984375,
						705.5,
						306.984375
					],
					"source": [
						"obj-119",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-15",
						0
					],
					"midpoints": [
						618.5,
						364.23828125,
						520.109375,
						364.23828125,
						520.109375,
						338.34375,
						539.5,
						338.34375
					],
					"source": [
						"obj-14",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-202",
						0
					],
					"hidden": 1,
					"midpoints": [
						539.5,
						372,
						488.75,
						372,
						488.75,
						341.9140625,
						438,
						341.9140625
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
						"obj-5",
						0
					],
					"hidden": 1,
					"source": [
						"obj-202",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-204",
						0
					],
					"hidden": 1,
					"source": [
						"obj-203",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-28",
						0
					],
					"hidden": 1,
					"midpoints": [
						564.5,
						420.45703125,
						606.46484375,
						420.45703125,
						606.46484375,
						394,
						622.5,
						394
					],
					"source": [
						"obj-204",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-44",
						0
					],
					"source": [
						"obj-21",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-48",
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
						"obj-67",
						1
					],
					"order": 1,
					"source": [
						"obj-24",
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
					"order": 0,
					"source": [
						"obj-24",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-117",
						0
					],
					"source": [
						"obj-26",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-26",
						0
					],
					"source": [
						"obj-27",
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
						"obj-34",
						0
					],
					"hidden": 1,
					"source": [
						"obj-30",
						2
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-55",
						0
					],
					"hidden": 1,
					"order": 0,
					"source": [
						"obj-30",
						1
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-97",
						0
					],
					"hidden": 1,
					"midpoints": [
						403.0546875,
						163.734375,
						403.0546875,
						82.1953125,
						488,
						82.1953125
					],
					"order": 1,
					"source": [
						"obj-30",
						1
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-67",
						1
					],
					"order": 0,
					"source": [
						"obj-4",
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
					"order": 1,
					"source": [
						"obj-4",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-30",
						2
					],
					"hidden": 1,
					"source": [
						"obj-400",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-400",
						0
					],
					"hidden": 1,
					"source": [
						"obj-401",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-97",
						0
					],
					"hidden": 1,
					"source": [
						"obj-403",
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
					"hidden": 1,
					"source": [
						"obj-46",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-17",
						0
					],
					"midpoints": [
						433,
						428.21875,
						622.5,
						428.21875
					],
					"order": 0,
					"source": [
						"obj-5",
						1
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-203",
						1
					],
					"hidden": 1,
					"midpoints": [
						433,
						428,
						546.25,
						428,
						546.25,
						365.9296875,
						577.5,
						365.9296875
					],
					"order": 1,
					"source": [
						"obj-5",
						1
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-203",
						0
					],
					"hidden": 1,
					"midpoints": [
						410.5,
						428,
						535.8203125,
						428,
						535.8203125,
						367.8984375,
						564.5,
						367.8984375
					],
					"order": 0,
					"source": [
						"obj-5",
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
					"order": 1,
					"source": [
						"obj-5",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-511",
						0
					],
					"hidden": 1,
					"source": [
						"obj-510",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-512",
						0
					],
					"hidden": 1,
					"source": [
						"obj-511",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-513",
						0
					],
					"hidden": 1,
					"source": [
						"obj-512",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-514",
						0
					],
					"hidden": 1,
					"source": [
						"obj-513",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-515",
						0
					],
					"hidden": 1,
					"source": [
						"obj-514",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-400",
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
						"obj-46",
						0
					],
					"hidden": 1,
					"source": [
						"obj-55",
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
					"hidden": 1,
					"source": [
						"obj-69",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-402",
						0
					],
					"order": 0,
					"source": [
						"obj-7",
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
					"order": 1,
					"source": [
						"obj-7",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-30",
						1
					],
					"hidden": 1,
					"source": [
						"obj-97",
						0
					]
				}
			}
		],
		"parameters": {
			"obj-10": [
				"amxd~",
				"amxd~",
				0
			],
			"obj-117": [
				"dry_output_gain",
				"dry gain",
				0
			],
			"obj-4": [
				"direct out",
				"direct out",
				0
			],
			"obj-5": [
				"effect output gain",
				"effect output gain",
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
					],
					"buttons": [
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
		]
	}
}
