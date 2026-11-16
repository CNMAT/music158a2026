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
		"rect": [
			134,
			128,
			1054,
			930
		],
		"gridsize": [
			15,
			15
		],
		"assistshowspatchername": 0,
		"commentary": "",
		"showcommentary": 0,
		"boxes": [
			{
				"box": {
					"fontface": 1,
					"fontsize": 22,
					"id": "obj-1",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						28,
						18,
						600,
						31
					],
					"text": "AMXD Help Library — Master Index"
				}
			},
			{
				"box": {
					"fontsize": 11,
					"id": "obj-2",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						30,
						52,
						960,
						19
					],
					"text": "Click a device name to open its .maxhelp file. Concise functional descriptions appear beneath each link; keep this index in the same folder as the help files."
				}
			},
			{
				"box": {
					"fontface": 2,
					"fontsize": 10,
					"id": "obj-3",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						30,
						76,
						650,
						18
					],
					"text": "Shared sources in every help file: MUTED (default), Noise, drumLoop.aif, or receive~."
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-4",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						18,
						58,
						22
					],
					"text": "pcontrol"
				}
			},
			{
				"box": {
					"fontface": 1,
					"fontsize": 13,
					"id": "obj-5",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						28,
						108,
						300,
						21
					],
					"text": "FILTER / EQ"
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Harmonic Filter.maxhelp",
					"id": "obj-6",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						28,
						131,
						300,
						20
					],
					"rounded": 3,
					"text": "Harmonic Filter",
					"texton": "Harmonic Filter",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-7",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						131,
						280,
						22
					],
					"text": "loadunique \"Harmonic Filter.maxhelp\""
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Mangle Filter.maxhelp",
					"id": "obj-8",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						28,
						170,
						300,
						20
					],
					"rounded": 3,
					"text": "Mangle Filter",
					"texton": "Mangle Filter",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-9",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						170,
						280,
						22
					],
					"text": "loadunique \"Mangle Filter.maxhelp\""
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Max AutoFilter.maxhelp",
					"id": "obj-10",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						28,
						209,
						300,
						20
					],
					"rounded": 3,
					"text": "Max AutoFilter",
					"texton": "Max AutoFilter",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-11",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						209,
						280,
						22
					],
					"text": "loadunique \"Max AutoFilter.maxhelp\""
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Max CombFilterMulti.maxhelp",
					"id": "obj-12",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						28,
						248,
						300,
						20
					],
					"rounded": 3,
					"text": "Max CombFilterMulti",
					"texton": "Max CombFilterMulti",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-13",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						248,
						280,
						22
					],
					"text": "loadunique \"Max CombFilterMulti.maxhelp\""
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Max EqGraphic31.maxhelp",
					"id": "obj-14",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						28,
						287,
						300,
						20
					],
					"rounded": 3,
					"text": "Max EqGraphic31",
					"texton": "Max EqGraphic31",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-15",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						287,
						280,
						22
					],
					"text": "loadunique \"Max EqGraphic31.maxhelp\""
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Max EqParametric4.maxhelp",
					"id": "obj-16",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						28,
						326,
						300,
						20
					],
					"rounded": 3,
					"text": "Max EqParametric4",
					"texton": "Max EqParametric4",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-17",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						326,
						280,
						22
					],
					"text": "loadunique \"Max EqParametric4.maxhelp\""
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Max EqShelving.maxhelp",
					"id": "obj-18",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						28,
						365,
						300,
						20
					],
					"rounded": 3,
					"text": "Max EqShelving",
					"texton": "Max EqShelving",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-19",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						365,
						280,
						22
					],
					"text": "loadunique \"Max EqShelving.maxhelp\""
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Phone Filter.maxhelp",
					"id": "obj-20",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						28,
						404,
						300,
						20
					],
					"rounded": 3,
					"text": "Phone Filter",
					"texton": "Phone Filter",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-21",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						404,
						280,
						22
					],
					"text": "loadunique \"Phone Filter.maxhelp\""
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Raindrops.maxhelp",
					"id": "obj-22",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						28,
						443,
						300,
						20
					],
					"rounded": 3,
					"text": "Raindrops",
					"texton": "Raindrops",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-23",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						443,
						280,
						22
					],
					"text": "loadunique Raindrops.maxhelp"
				}
			},
			{
				"box": {
					"fontface": 1,
					"fontsize": 13,
					"id": "obj-24",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						28,
						492,
						300,
						21
					],
					"text": "DELAY / ECHO"
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open FilterTaps.maxhelp",
					"id": "obj-25",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						28,
						515,
						300,
						20
					],
					"rounded": 3,
					"text": "FilterTaps",
					"texton": "FilterTaps",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-26",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						515,
						280,
						22
					],
					"text": "loadunique FilterTaps.maxhelp"
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Flange-o-tron.maxhelp",
					"id": "obj-27",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						28,
						554,
						300,
						20
					],
					"rounded": 3,
					"text": "Flange-o-tron",
					"texton": "Flange-o-tron",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-28",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						554,
						280,
						22
					],
					"text": "loadunique Flange-o-tron.maxhelp"
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Generic Effect.maxhelp",
					"id": "obj-29",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						28,
						593,
						300,
						20
					],
					"rounded": 3,
					"text": "Generic Effect",
					"texton": "Generic Effect",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-30",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						593,
						280,
						22
					],
					"text": "loadunique \"Generic Effect.maxhelp\""
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Max DelayMultiBand.maxhelp",
					"id": "obj-31",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						28,
						632,
						300,
						20
					],
					"rounded": 3,
					"text": "Max DelayMultiBand",
					"texton": "Max DelayMultiBand",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-32",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						632,
						280,
						22
					],
					"text": "loadunique \"Max DelayMultiBand.maxhelp\""
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Max DelayTaps.maxhelp",
					"id": "obj-33",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						28,
						671,
						300,
						20
					],
					"rounded": 3,
					"text": "Max DelayTaps",
					"texton": "Max DelayTaps",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-34",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						671,
						280,
						22
					],
					"text": "loadunique \"Max DelayTaps.maxhelp\""
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Pendulum.maxhelp",
					"id": "obj-35",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						28,
						710,
						300,
						20
					],
					"rounded": 3,
					"text": "Pendulum",
					"texton": "Pendulum",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-36",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						710,
						280,
						22
					],
					"text": "loadunique Pendulum.maxhelp"
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Space Echo.maxhelp",
					"id": "obj-37",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						28,
						749,
						300,
						20
					],
					"rounded": 3,
					"text": "Space Echo",
					"texton": "Space Echo",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-38",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						749,
						280,
						22
					],
					"text": "loadunique \"Space Echo.maxhelp\""
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Speed Shifter.maxhelp",
					"id": "obj-39",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						28,
						788,
						300,
						20
					],
					"rounded": 3,
					"text": "Speed Shifter",
					"texton": "Speed Shifter",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-40",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						788,
						280,
						22
					],
					"text": "loadunique \"Speed Shifter.maxhelp\""
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Tapped Delay.maxhelp",
					"id": "obj-41",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						28,
						827,
						300,
						20
					],
					"rounded": 3,
					"text": "Tapped Delay",
					"texton": "Tapped Delay",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-42",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						827,
						280,
						22
					],
					"text": "loadunique \"Tapped Delay.maxhelp\""
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Warpoon.maxhelp",
					"id": "obj-43",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						28,
						866,
						300,
						20
					],
					"rounded": 3,
					"text": "Warpoon",
					"texton": "Warpoon",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-44",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						866,
						280,
						22
					],
					"text": "loadunique Warpoon.maxhelp"
				}
			},
			{
				"box": {
					"fontface": 1,
					"fontsize": 13,
					"id": "obj-45",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						28,
						915,
						300,
						21
					],
					"text": "FEEDBACK"
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Feedback Network.maxhelp",
					"id": "obj-46",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						28,
						938,
						300,
						20
					],
					"rounded": 3,
					"text": "Feedback Network",
					"texton": "Feedback Network",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-47",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						938,
						280,
						22
					],
					"text": "loadunique \"Feedback Network.maxhelp\""
				}
			},
			{
				"box": {
					"fontface": 1,
					"fontsize": 13,
					"id": "obj-48",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						365,
						108,
						300,
						21
					],
					"text": "PITCH"
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Microtuner.maxhelp",
					"id": "obj-49",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						365,
						131,
						300,
						20
					],
					"rounded": 3,
					"text": "Microtuner",
					"texton": "Microtuner",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-50",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						131,
						280,
						22
					],
					"text": "loadunique Microtuner.maxhelp"
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Mono Vocoder.maxhelp",
					"id": "obj-51",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						365,
						170,
						300,
						20
					],
					"rounded": 3,
					"text": "Mono Vocoder",
					"texton": "Mono Vocoder",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-52",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						170,
						280,
						22
					],
					"text": "loadunique \"Mono Vocoder.maxhelp\""
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Multi Harmonizer.maxhelp",
					"id": "obj-53",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						365,
						209,
						300,
						20
					],
					"rounded": 3,
					"text": "Multi Harmonizer",
					"texton": "Multi Harmonizer",
					"underline": 1
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
						1020,
						209,
						280,
						22
					],
					"text": "loadunique \"Multi Harmonizer.maxhelp\""
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Pitch & Echo.maxhelp",
					"id": "obj-55",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						365,
						248,
						300,
						20
					],
					"rounded": 3,
					"text": "Pitch & Echo",
					"texton": "Pitch & Echo",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-56",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						248,
						280,
						22
					],
					"text": "loadunique \"Pitch & Echo.maxhelp\""
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Pitch & Vibrato.maxhelp",
					"id": "obj-57",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						365,
						287,
						300,
						20
					],
					"rounded": 3,
					"text": "Pitch & Vibrato",
					"texton": "Pitch & Vibrato",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-58",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						287,
						280,
						22
					],
					"text": "loadunique \"Pitch & Vibrato.maxhelp\""
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Poly Vocoder.maxhelp",
					"id": "obj-59",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						365,
						326,
						300,
						20
					],
					"rounded": 3,
					"text": "Poly Vocoder",
					"texton": "Poly Vocoder",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-60",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						326,
						280,
						22
					],
					"text": "loadunique \"Poly Vocoder.maxhelp\""
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Simple Pitch Shifter.maxhelp",
					"id": "obj-61",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						365,
						365,
						300,
						20
					],
					"rounded": 3,
					"text": "Simple Pitch Shifter",
					"texton": "Simple Pitch Shifter",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-62",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						365,
						280,
						22
					],
					"text": "loadunique \"Simple Pitch Shifter.maxhelp\""
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Vibrato Cauldron.maxhelp",
					"id": "obj-63",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						365,
						404,
						300,
						20
					],
					"rounded": 3,
					"text": "Vibrato Cauldron",
					"texton": "Vibrato Cauldron",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-64",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						404,
						280,
						22
					],
					"text": "loadunique \"Vibrato Cauldron.maxhelp\""
				}
			},
			{
				"box": {
					"fontface": 1,
					"fontsize": 13,
					"id": "obj-65",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						365,
						453,
						300,
						21
					],
					"text": "GRANULAR / STUTTER"
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Fragulator.maxhelp",
					"id": "obj-66",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						365,
						476,
						300,
						20
					],
					"rounded": 3,
					"text": "Fragulator",
					"texton": "Fragulator",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-67",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						476,
						280,
						22
					],
					"text": "loadunique Fragulator.maxhelp"
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Granular-to-go.maxhelp",
					"id": "obj-68",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						365,
						515,
						300,
						20
					],
					"rounded": 3,
					"text": "Granular-to-go",
					"texton": "Granular-to-go",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-69",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						515,
						280,
						22
					],
					"text": "loadunique Granular-to-go.maxhelp"
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Rye.maxhelp",
					"id": "obj-70",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						365,
						554,
						300,
						20
					],
					"rounded": 3,
					"text": "Rye",
					"texton": "Rye",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-71",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						554,
						280,
						22
					],
					"text": "loadunique Rye.maxhelp"
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open SquirrelParade.maxhelp",
					"id": "obj-72",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						365,
						593,
						300,
						20
					],
					"rounded": 3,
					"text": "SquirrelParade",
					"texton": "SquirrelParade",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-73",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						593,
						280,
						22
					],
					"text": "loadunique SquirrelParade.maxhelp"
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Stutterer.maxhelp",
					"id": "obj-74",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						365,
						632,
						300,
						20
					],
					"rounded": 3,
					"text": "Stutterer",
					"texton": "Stutterer",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-75",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						632,
						280,
						22
					],
					"text": "loadunique Stutterer.maxhelp"
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Wheat.maxhelp",
					"id": "obj-76",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						365,
						671,
						300,
						20
					],
					"rounded": 3,
					"text": "Wheat",
					"texton": "Wheat",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-77",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						671,
						280,
						22
					],
					"text": "loadunique Wheat.maxhelp"
				}
			},
			{
				"box": {
					"fontface": 1,
					"fontsize": 13,
					"id": "obj-78",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						365,
						720,
						300,
						21
					],
					"text": "SPECTRAL"
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Max SpectralDelay.maxhelp",
					"id": "obj-79",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						365,
						743,
						300,
						20
					],
					"rounded": 3,
					"text": "Max SpectralDelay",
					"texton": "Max SpectralDelay",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-80",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						743,
						280,
						22
					],
					"text": "loadunique \"Max SpectralDelay.maxhelp\""
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Max SpectralHarm.maxhelp",
					"id": "obj-81",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						365,
						782,
						300,
						20
					],
					"rounded": 3,
					"text": "Max SpectralHarm",
					"texton": "Max SpectralHarm",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-82",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						782,
						280,
						22
					],
					"text": "loadunique \"Max SpectralHarm.maxhelp\""
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Spectral Filter.maxhelp",
					"id": "obj-83",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						365,
						821,
						300,
						20
					],
					"rounded": 3,
					"text": "Spectral Filter",
					"texton": "Spectral Filter",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-84",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						821,
						280,
						22
					],
					"text": "loadunique \"Spectral Filter.maxhelp\""
				}
			},
			{
				"box": {
					"fontface": 1,
					"fontsize": 13,
					"id": "obj-85",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						365,
						870,
						300,
						21
					],
					"text": "DISTORTION"
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open MonsterCrunch.maxhelp",
					"id": "obj-86",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						365,
						893,
						300,
						20
					],
					"rounded": 3,
					"text": "MonsterCrunch",
					"texton": "MonsterCrunch",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-87",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						893,
						280,
						22
					],
					"text": "loadunique MonsterCrunch.maxhelp"
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open PluggoFuzz.maxhelp",
					"id": "obj-88",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						365,
						932,
						300,
						20
					],
					"rounded": 3,
					"text": "PluggoFuzz",
					"texton": "PluggoFuzz",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-89",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						932,
						280,
						22
					],
					"text": "loadunique PluggoFuzz.maxhelp"
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open WasteBand.maxhelp",
					"id": "obj-90",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						365,
						971,
						300,
						20
					],
					"rounded": 3,
					"text": "WasteBand",
					"texton": "WasteBand",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-91",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						971,
						280,
						22
					],
					"text": "loadunique WasteBand.maxhelp"
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Waveshaper.maxhelp",
					"id": "obj-92",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						365,
						1010,
						300,
						20
					],
					"rounded": 3,
					"text": "Waveshaper",
					"texton": "Waveshaper",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-93",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						1010,
						280,
						22
					],
					"text": "loadunique Waveshaper.maxhelp"
				}
			},
			{
				"box": {
					"fontface": 1,
					"fontsize": 13,
					"id": "obj-94",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						365,
						1059,
						300,
						21
					],
					"text": "GATING"
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Max CutKiller.maxhelp",
					"id": "obj-95",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						365,
						1082,
						300,
						20
					],
					"rounded": 3,
					"text": "Max CutKiller",
					"texton": "Max CutKiller",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-96",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						1082,
						280,
						22
					],
					"text": "loadunique \"Max CutKiller.maxhelp\""
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Xformer.maxhelp",
					"id": "obj-97",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						365,
						1121,
						300,
						20
					],
					"rounded": 3,
					"text": "Xformer",
					"texton": "Xformer",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-98",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						1121,
						280,
						22
					],
					"text": "loadunique Xformer.maxhelp"
				}
			},
			{
				"box": {
					"fontface": 1,
					"fontsize": 13,
					"id": "obj-99",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						702,
						108,
						300,
						21
					],
					"text": "MODULATION"
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Max AutoRingMod.maxhelp",
					"id": "obj-100",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						702,
						131,
						300,
						20
					],
					"rounded": 3,
					"text": "Max AutoRingMod",
					"texton": "Max AutoRingMod",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-101",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						131,
						280,
						22
					],
					"text": "loadunique \"Max AutoRingMod.maxhelp\""
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Noyzckippr.maxhelp",
					"id": "obj-102",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						702,
						170,
						300,
						20
					],
					"rounded": 3,
					"text": "Noyzckippr",
					"texton": "Noyzckippr",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-103",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						170,
						280,
						22
					],
					"text": "loadunique Noyzckippr.maxhelp"
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Tremellow.maxhelp",
					"id": "obj-104",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						702,
						209,
						300,
						20
					],
					"rounded": 3,
					"text": "Tremellow",
					"texton": "Tremellow",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-105",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						209,
						280,
						22
					],
					"text": "loadunique Tremellow.maxhelp"
				}
			},
			{
				"box": {
					"fontface": 1,
					"fontsize": 13,
					"id": "obj-106",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						702,
						258,
						300,
						21
					],
					"text": "SPATIAL"
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Max DopplerPan.maxhelp",
					"id": "obj-107",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						702,
						281,
						300,
						20
					],
					"rounded": 3,
					"text": "Max DopplerPan",
					"texton": "Max DopplerPan",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-108",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						281,
						280,
						22
					],
					"text": "loadunique \"Max DopplerPan.maxhelp\""
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Nebula.maxhelp",
					"id": "obj-109",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						702,
						320,
						300,
						20
					],
					"rounded": 3,
					"text": "Nebula",
					"texton": "Nebula",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-110",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						320,
						280,
						22
					],
					"text": "loadunique Nebula.maxhelp"
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Stereo Adjuster.maxhelp",
					"id": "obj-111",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						702,
						359,
						300,
						20
					],
					"rounded": 3,
					"text": "Stereo Adjuster",
					"texton": "Stereo Adjuster",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-112",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						359,
						280,
						22
					],
					"text": "loadunique \"Stereo Adjuster.maxhelp\""
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Swirl.maxhelp",
					"id": "obj-113",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						702,
						398,
						300,
						20
					],
					"rounded": 3,
					"text": "Swirl",
					"texton": "Swirl",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-114",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						398,
						280,
						22
					],
					"text": "loadunique Swirl.maxhelp"
				}
			},
			{
				"box": {
					"fontface": 1,
					"fontsize": 13,
					"id": "obj-115",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						702,
						447,
						300,
						21
					],
					"text": "ANALYSIS"
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Max EnvFollower.maxhelp",
					"id": "obj-116",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						702,
						470,
						300,
						20
					],
					"rounded": 3,
					"text": "Max EnvFollower",
					"texton": "Max EnvFollower",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-117",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						470,
						280,
						22
					],
					"text": "loadunique \"Max EnvFollower.maxhelp\""
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Max SignalAnalyzer.maxhelp",
					"id": "obj-118",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						702,
						509,
						300,
						20
					],
					"rounded": 3,
					"text": "Max SignalAnalyzer",
					"texton": "Max SignalAnalyzer",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-119",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						509,
						280,
						22
					],
					"text": "loadunique \"Max SignalAnalyzer.maxhelp\""
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Phase Scope.maxhelp",
					"id": "obj-120",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						702,
						548,
						300,
						20
					],
					"rounded": 3,
					"text": "Phase Scope",
					"texton": "Phase Scope",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-121",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						548,
						280,
						22
					],
					"text": "loadunique \"Phase Scope.maxhelp\""
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Pitch Tracker.maxhelp",
					"id": "obj-122",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						702,
						587,
						300,
						20
					],
					"rounded": 3,
					"text": "Pitch Tracker",
					"texton": "Pitch Tracker",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-123",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						587,
						280,
						22
					],
					"text": "loadunique \"Pitch Tracker.maxhelp\""
				}
			},
			{
				"box": {
					"fontface": 1,
					"fontsize": 13,
					"id": "obj-124",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						702,
						636,
						300,
						21
					],
					"text": "PLAYERS"
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open PitchCorrect Player.maxhelp",
					"id": "obj-125",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						702,
						659,
						300,
						20
					],
					"rounded": 3,
					"text": "PitchCorrect Player",
					"texton": "PitchCorrect Player",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-126",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						659,
						280,
						22
					],
					"text": "loadunique \"PitchCorrect Player.maxhelp\""
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open PitchTime Player.maxhelp",
					"id": "obj-127",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						702,
						698,
						300,
						20
					],
					"rounded": 3,
					"text": "PitchTime Player",
					"texton": "PitchTime Player",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-128",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						698,
						280,
						22
					],
					"text": "loadunique \"PitchTime Player.maxhelp\""
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Synced Player.maxhelp",
					"id": "obj-129",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						702,
						737,
						300,
						20
					],
					"rounded": 3,
					"text": "Synced Player",
					"texton": "Synced Player",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-130",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						737,
						280,
						22
					],
					"text": "loadunique \"Synced Player.maxhelp\""
				}
			},
			{
				"box": {
					"fontface": 1,
					"fontsize": 13,
					"id": "obj-131",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						702,
						786,
						300,
						21
					],
					"text": "DYNAMICS"
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Max Compressor.maxhelp",
					"id": "obj-132",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						702,
						809,
						300,
						20
					],
					"rounded": 3,
					"text": "Max Compressor",
					"texton": "Max Compressor",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-133",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						809,
						280,
						22
					],
					"text": "loadunique \"Max Compressor.maxhelp\""
				}
			},
			{
				"box": {
					"fontface": 1,
					"fontsize": 13,
					"id": "obj-134",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						702,
						858,
						300,
						21
					],
					"text": "ROUTING"
				}
			},
			{
				"box": {
					"fontsize": 10.5,
					"hint": "Open Max EffectMatrix.maxhelp",
					"id": "obj-135",
					"maxclass": "textbutton",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						702,
						881,
						300,
						20
					],
					"rounded": 3,
					"text": "Max EffectMatrix",
					"texton": "Max EffectMatrix",
					"underline": 1
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-136",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1020,
						881,
						280,
						22
					],
					"text": "loadunique \"Max EffectMatrix.maxhelp\""
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_6",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						28,
						152,
						300,
						15
					],
					"text": "25-band filter bank animated by cellular automata."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_8",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						28,
						191,
						300,
						15
					],
					"text": "Level-dependent delay and amplitude mangling."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_10",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						28,
						230,
						300,
						15
					],
					"text": "Envelope-following resonant filter."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_12",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						28,
						269,
						300,
						15
					],
					"text": "Five comb filters for resonant coloration."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_14",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						28,
						308,
						300,
						15
					],
					"text": "31-band graphic EQ for detailed spectral shaping."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_16",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						28,
						347,
						300,
						15
					],
					"text": "Four-band parametric equalizer."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_18",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						28,
						386,
						300,
						15
					],
					"text": "Low/high shelving EQ for broad tonal shaping."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_20",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						28,
						425,
						300,
						15
					],
					"text": "Bandwidth-limited distortion for telephone-like tone."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_22",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						28,
						464,
						300,
						15
					],
					"text": "Narrow bandpass network for resonant spectral textures."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_25",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						28,
						536,
						300,
						15
					],
					"text": "Six filtered delay taps plus a feedback tap."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_27",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						28,
						575,
						300,
						15
					],
					"text": "Step-sequenced flanger with animated feedback."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_29",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						28,
						614,
						300,
						15
					],
					"text": "Modulated comb filter for chorus, flange, or vibrato."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_31",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						28,
						653,
						300,
						15
					],
					"text": "Three delays separated by shelving filters."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_33",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						28,
						692,
						300,
						15
					],
					"text": "Multi-tap delay with up to 32 taps."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_35",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						28,
						731,
						300,
						15
					],
					"text": "Four-tap stereo delay with moving delay times."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_37",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						28,
						770,
						300,
						15
					],
					"text": "Tape-style delay with warble, inertia, and feedback."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_39",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						28,
						809,
						300,
						15
					],
					"text": "Dual tape-speed delay for shifting and thickening."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_41",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						28,
						848,
						300,
						15
					],
					"text": "16-tap delay with independent level and stereo position."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_43",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						28,
						887,
						300,
						15
					],
					"text": "Ambient chorus built from four modulated stereo taps."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_46",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						28,
						959,
						300,
						15
					],
					"text": "Five filtered delays with cross-routed feedback."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_49",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						365,
						152,
						300,
						15
					],
					"text": "Fine-resolution pitch shifting for microtonal tuning."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_51",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						365,
						191,
						300,
						15
					],
					"text": "Single-voice vocoder for spectral cross-synthesis."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_53",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						365,
						230,
						300,
						15
					],
					"text": "Multiple pitch-shifted voices for harmonization."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_55",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						365,
						269,
						300,
						15
					],
					"text": "Pitch shifting combined with delay and feedback."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_57",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						365,
						308,
						300,
						15
					],
					"text": "Pitch transposition with vibrato modulation."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_59",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						365,
						347,
						300,
						15
					],
					"text": "Polyphonic vocoder for multi-voice spectral processing."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_61",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						365,
						386,
						300,
						15
					],
					"text": "Straightforward real-time pitch transposition."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_63",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						365,
						425,
						300,
						15
					],
					"text": "Randomly modulated allpass filters for unstable pitch."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_66",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						365,
						497,
						300,
						15
					],
					"text": "Loops short fragments at variable speed and direction."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_68",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						365,
						536,
						300,
						15
					],
					"text": "Real-time granular processing with randomized grains."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_70",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						365,
						575,
						300,
						15
					],
					"text": "Granular processor with phase-reversed stereo effects."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_72",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						365,
						614,
						300,
						15
					],
					"text": "Four-channel granular processor with cross-modulation."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_74",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						365,
						653,
						300,
						15
					],
					"text": "Captures and repeats fragments with pitch/reverse options."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_76",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						365,
						692,
						300,
						15
					],
					"text": "Granular processor with pitch envelopes on grains."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_79",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						365,
						764,
						300,
						15
					],
					"text": "FFT-based delay applied across frequency bands."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_81",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						365,
						803,
						300,
						15
					],
					"text": "FFT-based frequency shifting and harmonization."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_83",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						365,
						842,
						300,
						15
					],
					"text": "Drawable FFT filter for per-band amplitude shaping."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_86",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						365,
						914,
						300,
						15
					],
					"text": "Extreme gain, clipping, and low-pass distortion."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_88",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						365,
						953,
						300,
						15
					],
					"text": "Four-mode fuzz with input and output filtering."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_90",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						365,
						992,
						300,
						15
					],
					"text": "Three-band mute, pass, or overdrive processor."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_92",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						365,
						1031,
						300,
						15
					],
					"text": "Nonlinear distortion defined by a transfer curve."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_95",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						365,
						1103,
						300,
						15
					],
					"text": "Tempo-synced signal hacker for rhythmic cutting."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_97",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						365,
						1142,
						300,
						15
					],
					"text": "Groove-oriented rhythmic muting and accenting."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_100",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						702,
						152,
						300,
						15
					],
					"text": "Envelope-following ring modulation."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_102",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						702,
						191,
						300,
						15
					],
					"text": "Noise-modulated multiplication for unstable timbres."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_104",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						702,
						230,
						300,
						15
					],
					"text": "Stereo panning effect for tremolo-like motion."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_107",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						702,
						302,
						300,
						15
					],
					"text": "Tempo-synced Doppler and panning effect."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_109",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						702,
						341,
						300,
						15
					],
					"text": "Phase and amplitude processing for subtle stereo swirl."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_111",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						702,
						380,
						300,
						15
					],
					"text": "Adjusts stereo width from mono to expanded/distant."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_113",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						702,
						419,
						300,
						15
					],
					"text": "Delay-modulated mono-to-stereo moving ambience."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_116",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						702,
						491,
						300,
						15
					],
					"text": "Envelope following, smoothing, and mapping."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_118",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						702,
						530,
						300,
						15
					],
					"text": "FFT filter-bank spectrum and signal analyzer."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_120",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						702,
						569,
						300,
						15
					],
					"text": "Displays stereo phase alignment and correlation."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_122",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						702,
						608,
						300,
						15
					],
					"text": "Tracks the fundamental pitch of an incoming signal."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_125",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						702,
						680,
						300,
						15
					],
					"text": "Audio-file player with pitch-correction control."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_127",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						702,
						719,
						300,
						15
					],
					"text": "Audio-file player with independent pitch/time control."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_129",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						702,
						758,
						300,
						15
					],
					"text": "Audio-file player synchronized to Live transport."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_132",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						702,
						830,
						300,
						15
					],
					"text": "Stereo dynamic-range compressor."
				}
			},
			{
				"box": {
					"fontsize": 9,
					"id": "desc_obj_135",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						702,
						902,
						300,
						15
					],
					"text": "Routes audio through multiple effects in one device."
				}
			},
			{
				"box": {
					"hidden": 1,
					"id": "obj-500",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1085,
						18,
						210,
						22
					],
					"text": "js amxd_master_index_open.js"
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
						"obj-101",
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
						"obj-500",
						0
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
						"obj-103",
						0
					],
					"hidden": 1,
					"source": [
						"obj-102",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-500",
						0
					],
					"hidden": 1,
					"source": [
						"obj-103",
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
						"obj-104",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-500",
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
						"obj-108",
						0
					],
					"hidden": 1,
					"source": [
						"obj-107",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-500",
						0
					],
					"hidden": 1,
					"source": [
						"obj-108",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-110",
						0
					],
					"hidden": 1,
					"source": [
						"obj-109",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-500",
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
						"obj-500",
						0
					],
					"hidden": 1,
					"source": [
						"obj-110",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-112",
						0
					],
					"hidden": 1,
					"source": [
						"obj-111",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-500",
						0
					],
					"hidden": 1,
					"source": [
						"obj-112",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-114",
						0
					],
					"hidden": 1,
					"source": [
						"obj-113",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-500",
						0
					],
					"hidden": 1,
					"source": [
						"obj-114",
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
					"hidden": 1,
					"source": [
						"obj-116",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-500",
						0
					],
					"hidden": 1,
					"source": [
						"obj-117",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-119",
						0
					],
					"hidden": 1,
					"source": [
						"obj-118",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-500",
						0
					],
					"hidden": 1,
					"source": [
						"obj-119",
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
						"obj-121",
						0
					],
					"hidden": 1,
					"source": [
						"obj-120",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-500",
						0
					],
					"hidden": 1,
					"source": [
						"obj-121",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-123",
						0
					],
					"hidden": 1,
					"source": [
						"obj-122",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-500",
						0
					],
					"hidden": 1,
					"source": [
						"obj-123",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-126",
						0
					],
					"hidden": 1,
					"source": [
						"obj-125",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-500",
						0
					],
					"hidden": 1,
					"source": [
						"obj-126",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-128",
						0
					],
					"hidden": 1,
					"source": [
						"obj-127",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-500",
						0
					],
					"hidden": 1,
					"source": [
						"obj-128",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-130",
						0
					],
					"hidden": 1,
					"source": [
						"obj-129",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-500",
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
						"obj-500",
						0
					],
					"hidden": 1,
					"source": [
						"obj-130",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-133",
						0
					],
					"hidden": 1,
					"source": [
						"obj-132",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-500",
						0
					],
					"hidden": 1,
					"source": [
						"obj-133",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-136",
						0
					],
					"hidden": 1,
					"source": [
						"obj-135",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-500",
						0
					],
					"hidden": 1,
					"source": [
						"obj-136",
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
						"obj-500",
						0
					],
					"hidden": 1,
					"source": [
						"obj-15",
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
						"obj-500",
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
						"obj-19",
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
						"obj-500",
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
						"obj-21",
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
						"obj-500",
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
						"obj-23",
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
						"obj-500",
						0
					],
					"hidden": 1,
					"source": [
						"obj-23",
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
						"obj-500",
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
						"obj-28",
						0
					],
					"hidden": 1,
					"source": [
						"obj-27",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-500",
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
						"obj-30",
						0
					],
					"hidden": 1,
					"source": [
						"obj-29",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-500",
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
						"obj-32",
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
						"obj-500",
						0
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
						"obj-34",
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
						"obj-500",
						0
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
						"obj-36",
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
						"obj-500",
						0
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
						"obj-38",
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
						"obj-500",
						0
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
						"obj-40",
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
						"obj-500",
						0
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
						"obj-42",
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
						"obj-500",
						0
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
						"obj-44",
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
						"obj-500",
						0
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
						"obj-47",
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
						"obj-500",
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
						"obj-50",
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
						"obj-500",
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
						"obj-52",
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
						"obj-500",
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
						"obj-54",
						0
					],
					"hidden": 1,
					"source": [
						"obj-53",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-500",
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
						"obj-56",
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
						"obj-500",
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
						"obj-58",
						0
					],
					"hidden": 1,
					"source": [
						"obj-57",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-500",
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
						"obj-60",
						0
					],
					"hidden": 1,
					"source": [
						"obj-59",
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
						"obj-500",
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
						"obj-62",
						0
					],
					"hidden": 1,
					"source": [
						"obj-61",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-500",
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
						"obj-64",
						0
					],
					"hidden": 1,
					"source": [
						"obj-63",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-500",
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
						"obj-67",
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
						"obj-500",
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
						"obj-69",
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
						"obj-500",
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
						"obj-500",
						0
					],
					"hidden": 1,
					"source": [
						"obj-7",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-71",
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
						"obj-500",
						0
					],
					"hidden": 1,
					"source": [
						"obj-71",
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
						"obj-500",
						0
					],
					"hidden": 1,
					"source": [
						"obj-73",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-75",
						0
					],
					"hidden": 1,
					"source": [
						"obj-74",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-500",
						0
					],
					"hidden": 1,
					"source": [
						"obj-75",
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
					"hidden": 1,
					"source": [
						"obj-76",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-500",
						0
					],
					"hidden": 1,
					"source": [
						"obj-77",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-80",
						0
					],
					"hidden": 1,
					"source": [
						"obj-79",
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
					"hidden": 1,
					"source": [
						"obj-8",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-500",
						0
					],
					"hidden": 1,
					"source": [
						"obj-80",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-82",
						0
					],
					"hidden": 1,
					"source": [
						"obj-81",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-500",
						0
					],
					"hidden": 1,
					"source": [
						"obj-82",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-84",
						0
					],
					"hidden": 1,
					"source": [
						"obj-83",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-500",
						0
					],
					"hidden": 1,
					"source": [
						"obj-84",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-87",
						0
					],
					"hidden": 1,
					"source": [
						"obj-86",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-500",
						0
					],
					"hidden": 1,
					"source": [
						"obj-87",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-89",
						0
					],
					"hidden": 1,
					"source": [
						"obj-88",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-500",
						0
					],
					"hidden": 1,
					"source": [
						"obj-89",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-500",
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
					"destination": [
						"obj-91",
						0
					],
					"hidden": 1,
					"source": [
						"obj-90",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-500",
						0
					],
					"hidden": 1,
					"source": [
						"obj-91",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-93",
						0
					],
					"hidden": 1,
					"source": [
						"obj-92",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-500",
						0
					],
					"hidden": 1,
					"source": [
						"obj-93",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-96",
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
						"obj-500",
						0
					],
					"hidden": 1,
					"source": [
						"obj-96",
						0
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
						"obj-97",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-500",
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
					"source": [
						"obj-500",
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
		"dependency_cache": [],
		"autosave": 0
	}
}
