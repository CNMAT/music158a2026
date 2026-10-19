{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 9,
			"minor" : 1,
			"revision" : 0,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 96.0, 136.0, 1092.0, 859.0 ],
		"openinpresentation" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"assistshowspatchername" : 0,
		"commentary" : "",
		"showcommentary" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-35",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 378.0, 505.0, 262.0, 47.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 376.0, 511.0, 383.0, 33.0 ],
					"text" : "'rotate' accepts a list, suspends random generation and rotates the list on each bang by the suffix integer rotate1, rotate2 etc.."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 18.5, 515.0, 106.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 18.0, 522.0, 106.0, 22.0 ],
					"text" : "rotate1 1 0 0 0 0 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 144.0, 515.0, 106.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 144.0, 522.0, 106.0, 22.0 ],
					"text" : "rotate2 1 2 0 0 0 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 263.0, 515.0, 106.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 263.0, 522.0, 106.0, 22.0 ],
					"text" : "rotate3 1 2 3 0 0 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 830.0, 192.0, 120.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 754.0, 686.0, 107.0, 22.0 ],
					"text" : "listfeed 3 3 3 3 3 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 727.0, 170.0, 199.0, 33.0 ],
					"presentation" : 1,
					"presentation_linecount" : 3,
					"presentation_rect" : [ 727.0, 85.0, 153.0, 47.0 ],
					"text" : "to execute all functions\n(generate list) and settings output"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 894.0, 103.0, 32.0, 22.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 894.0, 66.0, 100.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 135.0, 133.0, 574.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 177.0, 186.0, 574.0, 20.0 ],
					"text" : "resetdefaults, then bang once for (0 0 0 0 0 0), then bang again to start regenerating new sets (n n n n n n)"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.086, 0.89, 0.212, 1.0 ],
					"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.086, 0.89, 0.212, 1.0 ],
					"bgfillcolor_color1" : [ 0.086, 0.89, 0.212, 1.0 ],
					"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
					"bgfillcolor_proportion" : 0.5,
					"bgfillcolor_type" : "gradient",
					"gradient" : 1,
					"id" : "m_reset",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 23.0, 132.0, 100.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 62.0, 187.0, 100.0, 22.0 ],
					"text" : "resetdefaults"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.545, 0.0, 0.0, 1.0 ],
					"id" : "obj-599",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 609.0, 447.0, 57.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 833.0, 274.0, 57.0, 22.0 ],
					"text" : "s set-inst"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-56",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 26.0, 760.0, 180.0, 47.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.0, 730.0, 373.0, 20.0 ],
					"text" : "One-click demo to generate a new 6 slot list in range for each \"bang\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 26.0, 785.0, 377.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.0, 756.0, 327.0, 22.0 ],
					"text" : "init, length 6, range 1 15, allowrepeats 1, sort none, getstate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-98",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 270.0, 374.0, 331.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 270.0, 350.0, 331.0, 20.0 ],
					"text" : "reorder generated list ascending/descending or as is <none>"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-97",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 205.0, 402.0, 231.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 205.0, 378.0, 231.0, 20.0 ],
					"text" : "limit mutations to odd or even or clearfilter"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-94",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 639.5, 476.0, 86.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 617.0, 374.0, 86.0, 20.0 ],
					"text" : "getstate report"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-96",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 646.0, 504.0, 280.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 617.0, 432.0, 280.0, 22.0 ],
					"text" : "generated length 6"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-93",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 96.0, 669.0, 281.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 96.0, 639.0, 281.0, 20.0 ],
					"text" : "sets where next mutate cycle will begin -- no output"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-92",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 177.0, 643.0, 243.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 177.0, 613.0, 243.0, 20.0 ],
					"text" : "mutate in groups according to number given"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-90",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 103.0, 616.0, 150.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 103.0, 586.0, 150.0, 20.0 ],
					"text" : "cancel roundrobin mutate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-88",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 169.0, 553.0, 207.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 128.5, 490.0, 207.0, 20.0 ],
					"text" : "n = slots that will be mutated on bang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-87",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 299.0, 433.0, 121.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 299.0, 409.0, 121.0, 20.0 ],
					"text" : "set range boundaries"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-86",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 162.0, 476.0, 403.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 162.0, 452.0, 403.0, 20.0 ],
					"text" : "shorthand: length = 6, range = 1-15, allowrepears = 1, sort = 0 (no sorting)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-85",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 315.0, 161.0, 137.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 315.0, 246.5, 137.0, 20.0 ],
					"text" : "call last generated list"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-84",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 255.0, 299.0, 305.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 255.0, 275.0, 305.0, 20.0 ],
					"text" : "allow number slots to have repeat numbers across list"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-83",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 100.0, 260.0, 194.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 135.0, 153.0, 194.0, 20.0 ],
					"text" : "range incluces first and last integer"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-82",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 100.0, 229.0, 389.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 135.0, 122.0, 365.0, 20.0 ],
					"text" : "number of slots <int> in the list to be randomly generated in range. "
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-81",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 239.0, 192.0, 337.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 192.0, 216.0, 408.0, 20.0 ],
					"text" : "sede with a large number then run many times with no output"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-79",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 87.0, 104.0, 449.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 96.0, 90.0, 449.0, 20.0 ],
					"text" : "forces a unique random seed each time init is selected for better random outcome"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-78",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 98.0, 161.0, 137.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 98.0, 246.5, 137.0, 20.0 ],
					"text" : "current state of rand_list"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 16.0, 664.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.0, 16.0, 664.0, 20.0 ],
					"text" : "rand_list_listfeed.js / rand_list_listfeed.maxhelp — random list generator with mask mutate, round-robin mutate, and listfeed"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 40.0, 741.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.0, 40.0, 741.0, 20.0 ],
					"text" : "Place rand_list_listfeed.js and this .maxhelp in the same folder (or a Max search path). listfeed replaces the stored list and updates length."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 662.0, 310.0, 160.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 617.0, 283.0, 160.0, 20.0 ],
					"text" : "Outlet 1: generated list"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.89, 0.086, 0.29, 1.0 ],
					"fontsize" : 18.0,
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 646.0, 231.5, 180.0, 29.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 656.0, 133.0, 113.0, 29.0 ],
					"saved_object_attributes" : 					{
						"filename" : "rand_list.js",
						"parameter_enable" : 0
					}
,
					"text" : "js rand_list.js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 646.0, 334.0, 73.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 617.0, 307.0, 73.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 646.0, 368.0, 214.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 617.0, 341.0, 280.0, 22.0 ],
					"text" : "1 10 13 15 7 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 665.5, 274.0, 141.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 617.0, 250.0, 141.0, 22.0 ],
					"text" : "print rand_list_generated"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 169.0, 191.0, 53.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 547.0, 215.0, 53.0, 22.0 ],
					"text" : "init seed"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 25.0, 76.0, 137.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 21.5, 66.0, 137.0, 20.0 ],
					"text" : "Basic setup / generation"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.086274509803922, 0.890196078431372, 0.211764705882353, 1.0 ],
					"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.086274509803922, 0.890196078431372, 0.211764705882353, 1.0 ],
					"bgfillcolor_color1" : [ 0.086274509803922, 0.890196078431372, 0.211764705882353, 1.0 ],
					"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
					"bgfillcolor_proportion" : 0.5,
					"bgfillcolor_type" : "gradient",
					"gradient" : 1,
					"id" : "obj-13",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 26.0, 103.0, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 21.0, 89.0, 50.0, 22.0 ],
					"text" : "init"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.086, 0.89, 0.212, 1.0 ],
					"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.086, 0.89, 0.212, 1.0 ],
					"bgfillcolor_color1" : [ 0.086, 0.89, 0.212, 1.0 ],
					"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
					"bgfillcolor_proportion" : 0.5,
					"bgfillcolor_type" : "gradient",
					"gradient" : 1,
					"id" : "obj-14",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 24.0, 225.0, 66.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 59.0, 118.0, 66.0, 22.0 ],
					"text" : "length 6"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.086, 0.89, 0.212, 1.0 ],
					"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.086, 0.89, 0.212, 1.0 ],
					"bgfillcolor_color1" : [ 0.086, 0.89, 0.212, 1.0 ],
					"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
					"bgfillcolor_proportion" : 0.5,
					"bgfillcolor_type" : "gradient",
					"gradient" : 1,
					"id" : "obj-15",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 24.0, 259.0, 66.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 59.0, 152.0, 59.0, 22.0 ],
					"text" : "range 0 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 24.0, 299.0, 106.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 24.0, 275.0, 106.0, 22.0 ],
					"text" : "allowrepeats 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 183.0, 373.0, 74.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 183.0, 349.0, 74.0, 22.0 ],
					"text" : "sort none"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.086, 0.89, 0.212, 1.0 ],
					"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.086, 0.89, 0.212, 1.0 ],
					"bgfillcolor_color1" : [ 0.086, 0.89, 0.212, 1.0 ],
					"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
					"bgfillcolor_proportion" : 0.5,
					"bgfillcolor_type" : "gradient",
					"gradient" : 1,
					"id" : "obj-19",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 23.0, 160.0, 68.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 23.0, 245.5, 68.0, 22.0 ],
					"text" : "getstate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 242.0, 160.0, 62.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 242.0, 245.5, 62.0, 22.0 ],
					"text" : "getlast"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 48.0, 191.0, 91.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 89.0, 214.0, 91.0, 22.0 ],
					"text" : "seed 12345678"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 23.0, 347.0, 180.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 23.0, 323.0, 180.0, 20.0 ],
					"text" : "Sorting + filters"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 23.0, 373.0, 64.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 23.0, 349.0, 64.0, 22.0 ],
					"text" : "sort asc"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 97.0, 373.0, 72.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 97.0, 349.0, 72.0, 22.0 ],
					"text" : "sort desc"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 23.0, 406.0, 78.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 23.0, 382.0, 78.0, 22.0 ],
					"text" : "parity odd"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 111.0, 406.0, 84.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 111.0, 382.0, 84.0, 22.0 ],
					"text" : "parity even"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 21.0, 432.0, 82.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 21.0, 408.0, 82.0, 22.0 ],
					"text" : "filtermin 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 113.0, 432.0, 90.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 113.0, 408.0, 90.0, 22.0 ],
					"text" : "filtermax 12"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 213.0, 432.0, 78.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 213.0, 408.0, 78.0, 22.0 ],
					"text" : "clearfilter"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 144.0, 299.0, 106.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 144.0, 275.0, 106.0, 22.0 ],
					"text" : "allowrepeats 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 21.0, 475.0, 126.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 21.0, 451.0, 126.0, 22.0 ],
					"text" : "make 6 1 15 1 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 18.0, 552.0, 144.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 18.0, 489.0, 105.0, 22.0 ],
					"text" : "mutate 0 0 0 0 0 n"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 264.0, 578.0, 307.0, 74.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 264.0, 548.0, 825.0, 33.0 ],
					"text" : "mutate semantics: mutate2 generates random numbers for slots [1,2], then [3,4], then [5,6], then wraps. \nmutate3 changes [1,2,3], then [4,5,6], then wraps to [1,2,3] for a 6-item list. For odd lengths, the block wraps around the end of the list."
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.086, 0.89, 0.212, 1.0 ],
					"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.086, 0.89, 0.212, 1.0 ],
					"bgfillcolor_color1" : [ 0.086, 0.89, 0.212, 1.0 ],
					"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
					"bgfillcolor_proportion" : 0.5,
					"bgfillcolor_type" : "gradient",
					"gradient" : 1,
					"id" : "obj-46",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 20.0, 585.0, 66.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.0, 555.0, 66.0, 22.0 ],
					"text" : "mutate1"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.890196078431372, 0.086274509803922, 0.290196078431373, 1.0 ],
					"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.890196078431372, 0.086274509803922, 0.290196078431373, 1.0 ],
					"bgfillcolor_color1" : [ 0.890196078431372, 0.086274509803922, 0.290196078431373, 1.0 ],
					"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
					"bgfillcolor_proportion" : 0.5,
					"bgfillcolor_type" : "gradient",
					"fontsize" : 18.0,
					"gradient" : 1,
					"id" : "obj-47",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 646.0, 170.0, 73.0, 29.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 652.0, 85.0, 73.0, 29.0 ],
					"text" : "bang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 103.0, 585.0, 66.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 103.0, 555.0, 66.0, 22.0 ],
					"text" : "mutate2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 187.0, 585.0, 66.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 187.0, 555.0, 66.0, 22.0 ],
					"text" : "mutate3"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.086, 0.89, 0.212, 1.0 ],
					"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.086, 0.89, 0.212, 1.0 ],
					"bgfillcolor_color1" : [ 0.086, 0.89, 0.212, 1.0 ],
					"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
					"bgfillcolor_proportion" : 0.5,
					"bgfillcolor_type" : "gradient",
					"gradient" : 1,
					"id" : "obj-53",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 20.0, 615.0, 76.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.0, 585.0, 76.0, 22.0 ],
					"text" : "stopcycle"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 20.0, 642.0, 96.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.0, 612.0, 96.0, 22.0 ],
					"text" : "mutatecycle 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 17.0, 668.0, 72.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 17.0, 638.0, 72.0, 22.0 ],
					"text" : "cyclepos 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 250.0, 718.0, 493.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 250.0, 688.0, 493.0, 20.0 ],
					"text" : "listfeed tests — feed a new base list, change length automatically, then mutate from that list"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.086, 0.89, 0.212, 1.0 ],
					"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.086, 0.89, 0.212, 1.0 ],
					"bgfillcolor_color1" : [ 0.086, 0.89, 0.212, 1.0 ],
					"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
					"bgfillcolor_proportion" : 0.5,
					"bgfillcolor_type" : "gradient",
					"gradient" : 1,
					"id" : "obj-63",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 16.0, 717.0, 104.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 16.0, 687.0, 104.0, 22.0 ],
					"text" : "listfeed 0 10 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-69",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 126.0, 717.0, 120.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 126.0, 687.0, 107.0, 22.0 ],
					"text" : "listfeed 0 0 0 0 0 0"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "m_reset", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "m_reset", 0 ],
					"source" : [ "obj-11", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-599", 0 ],
					"order" : 2,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"order" : 1,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"order" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 1 ],
					"source" : [ "obj-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-69", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "rand_list.js",
				"bootpath" : "~/Dropbox/Max_Enabled_M1/rand_list",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
