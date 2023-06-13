{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 5,
			"revision" : 3,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 1474.0, -211.0, 2193.0, 1319.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"fontsize" : 16.0,
					"id" : "obj-67",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 700.0, 185.5, 139.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 547.5, 261.0, 49.0, 24.0 ],
					"text" : "Key",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"cantchange" : 1,
					"fontsize" : 24.0,
					"format" : 4,
					"id" : "obj-65",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 769.0, 589.5, 74.0, 35.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 547.5, 283.5, 49.0, 35.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 741.5, 519.0, 38.5, 22.0 ],
					"text" : "t b i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 777.0, 451.0, 70.0, 22.0 ],
					"text" : "loadmess 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-62",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 662.0, 557.0, 118.0, 22.0 ],
					"text" : "+"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 741.5, 485.0, 36.0, 22.0 ],
					"text" : "% 12"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Key (int)\n0 - C\n1 - C#\n...\n10 - A#\n11 - B",
					"comment" : "Key (int)",
					"hint" : "Key (int)\n0 - C\n1 - C#\n...\n10 - A#\n11 - B",
					"id" : "obj-60",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 741.5, 447.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 662.0, 663.0, 68.5, 22.0 ],
					"text" : "t b l"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-58",
					"linecount" : 4,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 449.0, 750.0, 997.0, 72.0 ],
					"presentation_linecount" : 6,
					"text" : "/sequence/values : [-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1],\n/sequence/length : 32,\n/note/base : 36,\n/sequence/sustain : [0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0.]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 1294.0, 398.0, 68.5, 22.0 ],
					"text" : "t b l"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 662.0, 627.0, 700.5, 22.0 ],
					"text" : "o.union"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 1294.0, 367.0, 144.0, 22.0 ],
					"text" : "o.pack /sequence/sustain"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 812.0, 367.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 782.0, 405.0, 55.0, 22.0 ],
					"text" : "getrow 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 782.0, 366.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"columns" : 32,
					"id" : "obj-36",
					"maxclass" : "matrixctrl",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "list", "list" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 782.0, 337.0, 531.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 8.0, 261.0, 531.0, 18.0 ],
					"rows" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
					"bgcolor2" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.2, 0.2, 0.2, 0.0 ],
					"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
					"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
					"bgfillcolor_proportion" : 0.5,
					"bgfillcolor_type" : "color",
					"fontface" : 0,
					"fontsize" : 14.0,
					"gradient" : 1,
					"id" : "obj-37",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 145.0, 570.0, 106.0, 40.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 102.5, 298.0, 342.0, 24.0 ],
					"text" : "0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "FullPacket" ],
					"patching_rect" : [ 20.0, 511.0, 280.0, 22.0 ],
					"text" : "o.route /sequence/first_half /sequence/second_half"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 662.0, 289.0, 29.5, 22.0 ],
					"text" : "- 1"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 16.0,
					"id" : "obj-31",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 700.0, 125.0, 139.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 538.5, 10.0, 67.0, 24.0 ],
					"text" : "Octave",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 449.0, 714.0, 281.5, 22.0 ],
					"text" : "o.union"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 662.0, 596.0, 103.0, 22.0 ],
					"text" : "o.pack /note/base"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 700.0, 240.0, 70.0, 22.0 ],
					"text" : "loadmess 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 677.0, 464.0, 22.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 569.5, 177.0, 22.0, 20.0 ],
					"text" : "10",
					"textcolor" : [ 1.0, 0.984313725490196, 0.984313725490196, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 679.0, 448.0, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 571.5, 161.0, 18.0, 20.0 ],
					"text" : "9",
					"textcolor" : [ 1.0, 0.984313725490196, 0.984313725490196, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 679.0, 432.0, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 571.5, 145.0, 18.0, 20.0 ],
					"text" : "8",
					"textcolor" : [ 1.0, 0.984313725490196, 0.984313725490196, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 679.0, 416.0, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 571.5, 129.0, 18.0, 20.0 ],
					"text" : "7",
					"textcolor" : [ 1.0, 0.984313725490196, 0.984313725490196, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 679.0, 400.0, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 571.5, 114.0, 18.0, 20.0 ],
					"text" : "6",
					"textcolor" : [ 1.0, 0.984313725490196, 0.984313725490196, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 679.0, 384.0, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 571.5, 97.0, 18.0, 20.0 ],
					"text" : "5",
					"textcolor" : [ 1.0, 0.984313725490196, 0.984313725490196, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 679.0, 369.0, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 571.5, 82.0, 18.0, 20.0 ],
					"text" : "4",
					"textcolor" : [ 1.0, 0.984313725490196, 0.984313725490196, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 679.0, 352.0, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 571.5, 65.0, 18.0, 20.0 ],
					"text" : "3",
					"textcolor" : [ 1.0, 0.984313725490196, 0.984313725490196, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 679.0, 337.0, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 571.5, 50.0, 18.0, 20.0 ],
					"text" : "2",
					"textcolor" : [ 1.0, 0.984313725490196, 0.984313725490196, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 679.0, 321.0, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 571.5, 34.0, 18.0, 20.0 ],
					"text" : "1",
					"textcolor" : [ 1.0, 0.984313725490196, 0.984313725490196, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Octave select (int)",
					"comment" : "Octave select (int)",
					"hint" : "Octave select (int)",
					"id" : "obj-3",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 662.0, 236.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 662.0, 492.0, 39.0, 22.0 ],
					"text" : "+ 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 662.0, 519.0, 39.0, 22.0 ],
					"text" : "* 12"
				}

			}
, 			{
				"box" : 				{
					"disabled" : [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ],
					"id" : "obj-29",
					"itemtype" : 0,
					"maxclass" : "radiogroup",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 662.0, 321.0, 35.0, 162.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 554.5, 34.0, 35.0, 162.0 ],
					"shape" : 2,
					"size" : 10,
					"value" : 2,
					"varname" : "octave-select"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
					"bgcolor2" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.2, 0.2, 0.2, 0.0 ],
					"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
					"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
					"bgfillcolor_proportion" : 0.5,
					"bgfillcolor_type" : "color",
					"fontface" : 0,
					"fontsize" : 14.0,
					"gradient" : 1,
					"id" : "obj-13",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 20.0, 570.0, 106.0, 40.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 102.5, 280.0, 342.0, 24.0 ],
					"text" : "0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 20.0, 480.0, 448.0, 22.0 ],
					"text" : "o.route /display"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-4",
					"linecount" : 5,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 20.0, 384.0, 635.0, 83.0 ],
					"text" : "/sequence/values = /sequence/values[[ aseq(0, /sequence/length - 1 ) ]],\n/display/half = uint16(/sequence/length / 2),\n/display/sequence = /sequence/values + 1,\n/display/sequence/first_half = /display/sequence[[ aseq(0, /display/half - 1)]],\n/display/sequence/second_half = /display/sequence[[ aseq(/display/half, /sequence/length -1)]]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 16.0,
					"id" : "obj-22",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 700.0, 94.0, 138.5, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 24.5, 289.0, 76.0, 24.0 ],
					"text" : "Values:",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 16.0,
					"id" : "obj-16",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 700.0, 154.0, 139.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 541.5, 198.0, 61.0, 24.0 ],
					"text" : "Length",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 563.5, 289.0, 38.5, 22.0 ],
					"text" : "t b i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 20.0, 349.0, 582.0, 22.0 ],
					"text" : "o.pack /sequence/values /sequence/length"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 24.0,
					"id" : "obj-9",
					"maxclass" : "number",
					"maximum" : 32,
					"minimum" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 563.5, 235.0, 72.0, 35.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 547.5, 224.0, 49.0, 35.0 ],
					"varname" : "sequence-length"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 20.0, 27.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Outputs sequence as a list and sequence length (OSC)",
					"comment" : "Outputs sequence as a list and sequence length (OSC)",
					"hint" : "Outputs sequence as a list and sequence length (OSC)",
					"id" : "obj-12",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 449.0, 841.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 96.5, 27.0, 59.0, 22.0 ],
					"restore" : 					{
						"octave-select" : [ 2 ],
						"sequence" : [ -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ],
						"sequence-length" : [ 32 ]
					}
,
					"text" : "autopattr",
					"varname" : "voices"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.23921568627451, 0.231372549019608, 0.231372549019608, 1.0 ],
					"candicane2" : [ 0.799996614456177, 0.800020575523376, 0.800006866455078, 1.0 ],
					"candicane3" : [ 0.799996614456177, 0.800020575523376, 0.800006866455078, 1.0 ],
					"candicane4" : [ 0.799996614456177, 0.800020575523376, 0.800006866455078, 1.0 ],
					"candicane5" : [ 0.988907694816589, 0.4004887342453, 0.399963021278381, 1.0 ],
					"candicane6" : [ 0.799996614456177, 0.800020575523376, 0.800006866455078, 1.0 ],
					"candicane7" : [ 0.799996614456177, 0.800020575523376, 0.800006866455078, 1.0 ],
					"candicane8" : [ 0.799996614456177, 0.800020575523376, 0.800006866455078, 1.0 ],
					"candycane" : 8,
					"contdata" : 1,
					"id" : "obj-2",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 20.0, 62.0, 531.0, 249.0 ],
					"peakcolor" : [ 1.0, 0.015686274509804, 0.015686274509804, 1.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 8.0, 10.0, 531.0, 249.0 ],
					"setminmax" : [ -1.0, 15.0 ],
					"settype" : 0,
					"signed" : 1,
					"size" : 32,
					"slidercolor" : [ 0.986251831054688, 0.007236152887344, 0.027423052117229, 1.0 ],
					"spacing" : 1,
					"thickness" : 10,
					"varname" : "sequence"
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.058823529411765, 0.67843137254902, 1.0, 1.0 ],
					"border" : 2,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-14",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 563.5, 94.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ -1.0, 0.470562219619751, 610.0, 327.0 ],
					"proportion" : 0.5,
					"rounded" : 12
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 1 ],
					"source" : [ "obj-11", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"midpoints" : [ 573.0, 333.0, 6.0, 333.0, 6.0, 56.0, 29.5, 56.0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 1 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 1 ],
					"source" : [ "obj-33", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"source" : [ "obj-36", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"midpoints" : [ 791.5, 435.0, 771.0, 435.0, 771.0, 319.0, 791.5, 319.0 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"midpoints" : [ 1303.5, 457.0, 1446.0, 457.0, 1446.0, 313.0, 765.0, 313.0, 765.0, 313.0, 671.5, 313.0 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 1 ],
					"source" : [ "obj-55", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"midpoints" : [ 671.5, 702.0, 1468.0, 702.0, 1468.0, 56.0, 28.0, 56.0, 28.0, 57.0, 29.5, 57.0 ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 1 ],
					"source" : [ "obj-59", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"order" : 1,
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"midpoints" : [ 671.5, 583.5, 778.5, 583.5 ],
					"order" : 0,
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"midpoints" : [ 751.0, 551.0, 727.25, 551.0, 727.25, 313.0, 671.5, 313.0 ],
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 1 ],
					"source" : [ "obj-64", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-7", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "o.display.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.expr.codebox.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.pack.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.route.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.union.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0,
		"boxgroups" : [ 			{
				"boxes" : [ "obj-8", "obj-6", "obj-15", "obj-17", "obj-18", "obj-21", "obj-23", "obj-24", "obj-25", "obj-26", "obj-29" ]
			}
 ]
	}

}
