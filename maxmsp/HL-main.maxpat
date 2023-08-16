{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 5,
			"revision" : 5,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 1474.0, -211.0, 2492.0, 1319.0 ],
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
					"id" : "obj-619",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4031.0, 649.155754923820496, 35.0, 22.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-617",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 2290.0, 113.0, 1060.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-2",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 331.0, 165.382351517677307, 197.0, 78.0 ],
									"text" : "A value of 1 will begin audio recording. This value is set by the Python application."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-360",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.199999999999989, 100.0, 81.0, 22.0 ],
									"text" : "r control-stats"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-358",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 133.0, 368.5, 87.0, 22.0 ],
									"text" : "s record-music"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-357",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 133.0, 337.25, 125.0, 22.0 ],
									"text" : "o.route /record_music"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-356",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.199999999999989, 133.882351517677307, 107.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-355",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 50.0, 261.5, 102.0, 22.0 ],
									"text" : "o.select /prev"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-354",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 133.0, 306.5, 71.0, 22.0 ],
									"text" : "o.if /diff != 0"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-353",
									"linecount" : 5,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 50.199999999999989, 162.882351517677307, 262.0, 83.0 ],
									"text" : "/record_music ??= 0,\n/prev/record ??= 0,\n\n/diff = /prev/record - /record_music,\n/prev/record = /record_music"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-355", 0 ],
									"source" : [ "obj-353", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-357", 0 ],
									"source" : [ "obj-354", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-354", 0 ],
									"source" : [ "obj-355", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-356", 1 ],
									"midpoints" : [ 59.5, 293.5, 325.599999999999966, 293.5, 325.599999999999966, 122.882351517677307, 147.699999999999989, 122.882351517677307 ],
									"source" : [ "obj-355", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-353", 0 ],
									"source" : [ "obj-356", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-358", 0 ],
									"source" : [ "obj-357", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-356", 0 ],
									"source" : [ "obj-360", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 250.0, 2040.0, 118.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p send-record-music"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 18.0,
					"id" : "obj-614",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3877.328743738426056, 578.155754923820496, 640.806354100514909, 47.0 ],
					"text" : "If audio recording is enabled, recording is enabled to a semi-randomly generated file. See record-music subpatcher for more details"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 18.0,
					"id" : "obj-613",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4041.231920788683965, 544.0, 307.0, 27.0 ],
					"text" : "Audio Recording",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-611",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 1873.0, 159.0, 1072.0, 636.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-65",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 481.5, 225.0, 29.5, 22.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-53",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 111.0, 188.0, 760.0, 22.0 ],
									"text" : "route 1 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-46",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 111.0, 158.0, 85.0, 22.0 ],
									"text" : "r record-music"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-43",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 191.0, 239.0, 273.0, 42.0 ],
									"text" : "If music recording is enabled, record to a semi-randomly generated file"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-41",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 150.5, 451.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "" ],
									"patching_rect" : [ 111.0, 402.0, 58.5, 22.0 ],
									"text" : "t 1 l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 111.0, 369.0, 83.0, 22.0 ],
									"text" : "prepend open"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 111.0, 337.0, 68.0, 22.0 ],
									"text" : "o.route /file"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-32",
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 111.0, 292.0, 297.0, 35.0 ],
									"text" : "/file = \"hl-\" + int32(/uuid) + \"-audio.wav\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 111.0, 259.0, 73.0, 22.0 ],
									"text" : "o.pack /uuid"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 111.0, 225.0, 55.0, 22.0 ],
									"text" : "cpuclock"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-38", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"source" : [ "obj-53", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"midpoints" : [ 491.0, 438.0, 160.0, 438.0 ],
									"source" : [ "obj-65", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 4077.731920788683055, 649.155754923820496, 88.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p record-music"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-610",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 4292.731920788683055, 649.155754923820496, 96.0, 22.0 ],
					"text" : "receive~ audioR"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-609",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 4191.731920788683055, 649.155754923820496, 94.0, 22.0 ],
					"text" : "receive~ audioL"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-608",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1703.746875169872737, 506.155754923820496, 83.0, 22.0 ],
					"text" : "send~ audioR"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-607",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1539.746875169872737, 506.155754923820496, 81.0, 22.0 ],
					"text" : "send~ audioL"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-605",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 2781.0, 47.0, 857.0, 744.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 26.0, 66.0, 118.0, 22.0 ],
									"text" : "if $i1 == 1 then bang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 96.0, 28.0, 65.0, 22.0 ],
									"text" : "r menu-init"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 26.0, 28.0, 58.0, 22.0 ],
									"text" : "r max-init"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-4",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 225.0, 97.382351517677307, 219.0, 42.0 ],
									"text" : "Define initial Filter variables for Main Menu music"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 26.0, 164.0, 93.0, 22.0 ],
									"text" : "s filter-variables"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-259",
									"linecount" : 3,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 26.0, 97.382351517677307, 188.705879211425781, 49.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 102, 105, 108, 116, 101, 114, 47, 103, 97, 105, 110, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 28, 47, 102, 105, 108, 116, 101, 114, 47, 99, 117, 116, 111, 102, 102, 0, 0, 44, 100, 0, 0, 63, -28, -52, -52, -52, -52, -52, -51, 0, 0, 0, 32, 47, 102, 105, 108, 116, 101, 114, 47, 114, 101, 115, 111, 110, 97, 110, 99, 101, 0, 0, 0, 44, 100, 0, 0, 64, 4, 0, 0, 0, 0, 0, 0 ],
									"saved_bundle_length" : 112,
									"text" : "/filter/gain : 1,\n/filter/cutoff : 0.65,\n/filter/resonance : 2.5"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-259", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"midpoints" : [ 105.5, 57.5, 35.5, 57.5 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-259", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 32.0, 2061.0, 111.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p init-filters-on-load"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 18.0,
					"id" : "obj-604",
					"linecount" : 23,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3867.231920788683055, 30.185125946998596, 663.0, 469.0 ],
					"text" : "The HyperLydian Max Patch is split up into different categories:\n\n1) Control Groups: handle the logistics of the patch, such as retrieving and saving data, managing the order of operations, communication to and from the Python application, and tempo control.\n\n2) Audio Groups: these objects deal with signals and actually produce and manipulate the sound. These groups comprise each individual voice (with their own oscillator bank, filter, and amplitude envelope) and their respective effects chain (chorus, flanger, delay, and reverb).\n\n3) Modulation Groups: modulation sources affect how the music evolves and changes, which include altering the melody (by adding / removing rests and / or notes, reversinng or inverting the values), changing the scale or key, slowing down or speeding up the tempo, swapping the effects (e.g. FM vs. Chorus), adjusting effects parameters, etc.\n\nA Max Standalone Application is opened and managed by the Python application and is meant to be viewed in Presentation mode, which offers a UI for viewing the interaction between the player's actions and the changes in the music.\n\nEach abstraction, subpatch, and Javascript file has additional comments that describe their function in more detail."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-603",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 4077.731920788683055, 685.155754923820496, 234.0, 22.0 ],
					"text" : "sfrecord~ 2"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 18.0,
					"id" : "obj-602",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1324.647499821186102, 68.552660942077637, 203.812500178813934, 67.0 ],
					"text" : "Select output device and turn on global transport"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 18.0,
					"id" : "obj-601",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1135.125, 261.420463800430298, 249.812500178813934, 47.0 ],
					"text" : "Turn off a modulation type for a particular voice"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 18.0,
					"id" : "obj-600",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1135.125, 489.620231032371521, 335.859375134109996, 47.0 ],
					"text" : "Enable to print out OSC addresses associated with each modulation type."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 18.0,
					"id" : "obj-599",
					"linecount" : 9,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2409.287396525341592, 524.155754923820496, 824.0, 187.0 ],
					"text" : "Pattrstorage is used to handle switching melodies and saving changes to patterns from modulation sources. \n\nMelodies are swapped on-beat which triggers the following:  1) the current pattern is saved prior to switching to save any changes that have been made, 2) the next pattern is queued up, 3) if an entirely different melody group is being loaded, perform a hard reset (resets the Voice's metro object), otherwise perform a soft reset (only resets the Voice's counter object), 4) load the queued pattern.\n\nA hard reset is done on application start and when switching melody groups."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 18.0,
					"id" : "obj-598",
					"linecount" : 8,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1808.79687531292393, 524.155754923820496, 431.0, 167.0 ],
					"text" : "Global mixer receives each Voice's signal post-effects processing. \n\nVolume is automatically adjusted on application start and quit, and during melody changes.\n\nOverdrive is added to the signal as player health decreases."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 18.0,
					"id" : "obj-597",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 670.277082528664323, 572.489594995975494, 428.0, 67.0 ],
					"text" : "Timing variables that are sent to each voice to control the tempo and rhythm. Global transport controls each voice's internal metronome."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 18.0,
					"id" : "obj-596",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 152.277082528664323, 1735.0, 428.0, 67.0 ],
					"text" : "The OSC handler polls OSC addresses sent by the Python game application, splits them up based on category, and sends them to modulation sources."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 18.0,
					"id" : "obj-595",
					"linecount" : 8,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4020.953125402330443, 2035.0, 514.0, 167.0 ],
					"text" : "Each voice has its own effects chain that receives messages from the modulation subpatches. \n\nAn input signal comes in from each voice, gets processed through each effect object, then gets sent to the mixer.\n\nEffects are enabled and adjusted based on game stats, which are described in more detail in the modulation subpatchers."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 18.0,
					"id" : "obj-594",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4203.953125402330443, 2846.0, 331.0, 27.0 ],
					"text" : "Visual objects for presentation mode UI"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 18.0,
					"id" : "obj-593",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1941.277082528664323, 2793.8125, 428.0, 107.0 ],
					"text" : "Ensure that things are initialized in the correct order as loadbangs do not have a gauranteed order.\n\nThe final bang sends a message to Python to communicate that Max has fully loaded."
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"border" : 4,
					"bordercolor" : [ 0.501962602138519, 0.0, 0.008127624168992, 1.0 ],
					"id" : "obj-591",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3820.312500536441803, 0.0, 748.838840504484324, 720.0 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 18.0,
					"id" : "obj-590",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 998.701041264332616, 2723.0, 387.0, 27.0 ],
					"text" : "Loadbang Routing",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 18.0,
					"id" : "obj-589",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3281.701041264332616, 2723.0, 387.0, 27.0 ],
					"text" : "Presentation and Style Objects",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 18.0,
					"id" : "obj-588",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2334.468750268224085, 1979.0, 387.0, 27.0 ],
					"text" : "Effects",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 20.0,
					"id" : "obj-587",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2350.61534125029948, 723.0, 387.0, 29.0 ],
					"text" : "[Voices]",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 18.0,
					"id" : "obj-586",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2350.61534125029948, 754.0, 387.0, 27.0 ],
					"text" : "Pattern, Filter, Ampltidue Envelope",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-582",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 106.0, 1161.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-148",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "float" ],
									"patching_rect" : [ 50.0, 277.411789298057556, 85.484375134110451, 22.0 ],
									"text" : "t f f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-119",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 50.0, 244.0, 66.0, 22.0 ],
									"text" : "o.route /od"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-112",
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 50.0, 201.411789298057556, 302.0, 31.0 ],
									"text" : "/od = scale(/accuracy, 0., 100., 1., 8.)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-110",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 50.0, 133.0, 93.0, 22.0 ],
									"text" : "o.route /percent"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-95",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 50.0, 166.411789298057556, 105.0, 22.0 ],
									"text" : "o.select /accuracy"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-94",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 100.0, 78.0, 22.0 ],
									"text" : "r player-stats"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-580",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 116.484375134110451, 311.411865000000034, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-581",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 311.411865000000034, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-95", 0 ],
									"source" : [ "obj-110", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-119", 0 ],
									"source" : [ "obj-112", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-148", 0 ],
									"source" : [ "obj-119", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-580", 0 ],
									"source" : [ "obj-148", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-581", 0 ],
									"source" : [ "obj-148", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-110", 0 ],
									"source" : [ "obj-94", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-112", 0 ],
									"source" : [ "obj-95", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 3069.953125402330443, 2231.0, 815.484375134110451, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p percussion-overdrive"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 14.0,
					"id" : "obj-574",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 225.5, 2563.0, 140.0, 38.0 ],
					"text" : "Start and Stop Handling",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 14.0,
					"id" : "obj-573",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 378.701041264332389, 2368.0, 140.0, 22.0 ],
					"text" : "Effects Modifiers",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 14.0,
					"id" : "obj-572",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 78.625, 2368.0, 140.0, 22.0 ],
					"text" : "Scale Modifiers",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 14.0,
					"id" : "obj-571",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 227.5, 2118.0, 140.0, 22.0 ],
					"text" : "Pattern Modifiers",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 14.0,
					"id" : "obj-565",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 423.638541264332389, 1880.0, 140.0, 22.0 ],
					"text" : "Melody Changes",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 14.0,
					"id" : "obj-564",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 229.701041264332389, 1880.0, 140.0, 22.0 ],
					"text" : "Control Messages",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 14.0,
					"id" : "obj-560",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 36.125, 1880.0, 140.0, 22.0 ],
					"text" : "Initialization",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 16.0,
					"id" : "obj-559",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6.125, 1837.0, 255.0, 24.0 ],
					"text" : "Melody and Effects Modifiers "
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 18.0,
					"id" : "obj-556",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 208.428571428571388, 7.0, 164.0, 27.0 ],
					"text" : "OSC Control",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 18.0,
					"id" : "obj-554",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 737.080208467447164, 7.0, 239.0, 27.0 ],
					"text" : "Tempo / Transport Control",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 18.0,
					"id" : "obj-552",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2885.901041800775602, 7.0, 307.0, 27.0 ],
					"text" : "Pattr Storage and Melody Control",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 18.0,
					"id" : "obj-551",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1239.808124865889567, 7.0, 159.0, 27.0 ],
					"text" : "Utility Functions",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 18.0,
					"id" : "obj-550",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1805.176041800784333, 7.0, 236.0, 27.0 ],
					"text" : "Mixer and Volume Control",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-543",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 10,
					"outlettype" : [ "", "", "", "", "", "bang", "bang", "bang", "bang", "bang" ],
					"patching_rect" : [ 621.499999999999773, 810.0, 3204.937500536440893, 22.0 ],
					"text" : "t l l l l l b b b b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-542",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 647.136756902924617, 427.506019353866577, 122.5, 22.0 ],
					"text" : "t l l"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-538",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2543.586365001200193, 397.864144921302795, 111.0, 22.0 ],
					"text" : "s volume-long-fade"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-536",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2775.0, 2848.69487738609314, 116.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1724.827826877438838, 1873.702894151210785, 96.0, 20.0 ],
					"text" : "Tempo Stats",
					"textcolor" : [ 0.999995052814484, 1.0, 1.0, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-535",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 2744.105682500599414, 367.864144921302795, 106.761401100960484, 22.0 ],
					"text" : "b 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-375",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2831.867083601559898, 401.864144921302795, 74.0, 22.0 ],
					"text" : "s volume-on"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-534",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1135.125, 214.487853646278381, 74.0, 22.0 ],
					"text" : "s volume-off"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-527",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 1516.0, -93.0, 1913.0, 1142.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-69",
									"linecount" : 2,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 734.0, 159.0, 447.0, 44.0 ],
									"text" : "/mix/min = scale(/curr_health, 0, /max_health, 5, 15),\n/mix/max = scale(/curr_health, 0, /max_health, 15, 40)"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-2",
									"linecount" : 7,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 22.0, 20.0, 554.0, 132.0 ],
									"text" : "Reverb parameter modulation for Voice 2 and 3. Reverb parameters are modulated based on enemy and player stats, such as the number of projectiles on screen, the time between killing enemies, and the average distance a player's projectile travels before hitting an enemy.\n\nThese values are sent through line objects to smoothly transition between the different values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-63",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 734.0, 402.0, 45.0, 22.0 ],
									"text" : "$1 200"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-64",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 734.0, 436.0, 57.0, 22.0 ],
									"text" : "line 0. 10"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-62",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 734.0, 126.0, 149.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-60",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 864.0, 98.0, 132.0, 22.0 ],
									"text" : "o.select /screen_height"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-61",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 864.0, 67.0, 81.0, 22.0 ],
									"text" : "r control-stats"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-48",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 22.0, 738.0, 139.0, 22.0 ],
									"text" : "s all-voice-reverb-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-45",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 22.0, 706.0, 87.0, 22.0 ],
									"text" : "o.route /reverb"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-40",
									"linecount" : 12,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 22.0, 520.0, 591.0, 172.0 ],
									"text" : "/addresses = getaddresses(),\n\nmap(\n  lambda(\n    [addr],\n    progn(\n      assign(\"/reverb/2/reverb\" + addr, value(addr)),\n      assign(\"/reverb/3/reverb\" + addr, value(addr))\n    )\n  ),\n  /addresses\n)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 645.0, 402.0, 45.0, 22.0 ],
									"text" : "$1 200"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 645.0, 436.0, 57.0, 22.0 ],
									"text" : "line 0. 10"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 556.0, 402.0, 45.0, 22.0 ],
									"text" : "$1 200"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 556.0, 436.0, 57.0, 22.0 ],
									"text" : "line 0. 10"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 467.0, 402.0, 45.0, 22.0 ],
									"text" : "$1 200"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 467.0, 436.0, 57.0, 22.0 ],
									"text" : "line 0. 10"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 378.0, 402.0, 45.0, 22.0 ],
									"text" : "$1 200"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 378.0, 436.0, 57.0, 22.0 ],
									"text" : "line 0. 10"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 289.0, 402.0, 45.0, 22.0 ],
									"text" : "$1 200"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 289.0, 436.0, 57.0, 22.0 ],
									"text" : "line 0. 10"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 200.0, 402.0, 45.0, 22.0 ],
									"text" : "$1 200"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 200.0, 436.0, 57.0, 22.0 ],
									"text" : "line 0. 10"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 111.0, 402.0, 45.0, 22.0 ],
									"text" : "$1 200"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 111.0, 436.0, 57.0, 22.0 ],
									"text" : "line 0. 10"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 22.0, 402.0, 45.0, 22.0 ],
									"text" : "$1 200"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 22.0, 436.0, 57.0, 22.0 ],
									"text" : "line 0. 10"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 10,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "FullPacket" ],
									"patching_rect" : [ 22.0, 369.0, 820.0, 22.0 ],
									"text" : "o.route /spread /damping /early /time /size /bandwidth /dry /decay /mix"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 9,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 22.0, 483.0, 731.0, 22.0 ],
									"text" : "o.pack /spread /damping /early /time /size /bandwidth /dry /decay /mix"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 22.0, 334.0, 731.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 734.0, 305.0, 87.0, 22.0 ],
									"text" : "o.route /reverb"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-12",
									"linecount" : 5,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 734.0, 217.0, 816.0, 83.0 ],
									"text" : "/reverb/size = scale(/percent/moving_and_rotating, 0., 100., 5, 300),\n/reverb/damping = scale(/alive_projectiles, 0, 25, 0.05, 0.85),\n/reverb/dry = scale(/hit_distance[[ 1 ]], /hit_distance[[ 0 ]], /hit_distance[[ 3 ]], 0.05, 0.8),\n/reverb/decay = scale(/time/between_kills[[ 1 ]], /time/between_kills[[ 0 ]], /time/between_kills[[ 3 ]], 0.1, 0.7),\n/reverb/mix = scale(/position[[ 1 ]], 0, /screen_height, /mix/max, /mix/min)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 734.0, 98.0, 78.0, 22.0 ],
									"text" : "r player-stats"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 22.0, 301.0, 87.0, 22.0 ],
									"text" : "o.route /reverb"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-5",
									"linecount" : 4,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 22.0, 217.0, 691.0, 70.0 ],
									"text" : "/reverb/spread = scale(/alive_projectiles, 0., 40, 5, 100),\n/reverb/bandwidth = scale(/num_on_screen[[ 1 ]], 0, /num_on_screen[[ 3 ]], 0.05, 0.9),\n/reverb/early = scale(/hit_distance[[ 1 ]], /hit_distance[[ 0 ]], /hit_distance[[ 3 ]], 0.05, 0.7),\n/reverb/time = scale(/time/lifespan[[ 1 ]], /time/lifespan[[ 0 ]], /time/lifespan[[ 3 ]], 1, 100)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 22.0, 181.0, 81.0, 22.0 ],
									"text" : "r enemy-stats"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 1 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-19", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-19", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-19", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"source" : [ "obj-19", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-19", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"source" : [ "obj-19", 7 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"source" : [ "obj-19", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 0 ],
									"source" : [ "obj-19", 8 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 1 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 2 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 5 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 4 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 3 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 7 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 6 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 1 ],
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-60", 0 ],
									"source" : [ "obj-61", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-69", 0 ],
									"source" : [ "obj-62", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 8 ],
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-69", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 357.0, 2481.0, 115.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p reverb-modulation"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 48.0,
					"id" : "obj-526",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2561.125, 2809.69487738609314, 161.0, 60.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1070.5, 6.61762261390686, 167.0, 60.0 ],
					"text" : "Lydian",
					"textcolor" : [ 0.501962602138519, 0.0, 0.008127624168992, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 48.0,
					"id" : "obj-525",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2422.125, 2809.69487738609314, 147.0, 60.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 922.964705538752241, 6.61762261390686, 167.0, 60.0 ],
					"text" : "Hyper",
					"textcolor" : [ 0.501962602138519, 0.0, 0.008127624168992, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-522",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 4205.0, -4.0, 1070.0, 959.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-66",
									"linecount" : 7,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 306.0, 721.0, 354.0, 132.0 ],
									"text" : "This scale change is applied to each voice.\n\nOnly the scale \"type\" (such as major, lydian, natural minor, etc.) changes on a melody change. The scale class (7-tone or 5-tone) remains the same and is based on the current weapon selection"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-2",
									"linecount" : 15,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 374.0, 286.0, 440.0, 275.0 ],
									"text" : "Swap scales when the Melody group changes. The selected scale is based on a weighted choice from Player stats:\n\n1) How often the player fires their weapon\n2) How often the player moves vs. rotates\n3) The amount of health the player has lost compared to gained\n4) The amount of enemy projectiles the player has dodged vs collided with an enemy\n5) The amount of notes a player has narrowly missed vs the amount of projectiles a player has dodged\n6) The amount of Rest projectiles the player has hit vs the amount of Accidentals projectiles the player has hit\n7) How often the player moves AND rotates\n8) How accurate the player is at hitting the enemy"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 38.0, 860.0, 89.0, 22.0 ],
									"text" : "s change-scale"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-48",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "FullPacket" ],
									"patching_rect" : [ 38.0, 727.0, 144.0, 22.0 ],
									"text" : "o.route /1 /2"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-47",
									"linecount" : 6,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 291.0, 608.0, 229.0, 98.0 ],
									"text" : "/1/scale/class = \"heptatonic\",\n/1/scale/type = /scale/type,\n/1/scale/voices = [1],\n/2/scale/class = \"pentatonic\",\n/2/scale/type = /scale/type,\n/2/scale/voices = [2, 3]\n"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-46",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 38.0, 824.0, 95.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-45",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 114.333333333333314, 793.0, 95.333333333333343, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-44",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "FullPacket" ],
									"patching_rect" : [ 38.0, 763.0, 248.0, 22.0 ],
									"text" : "o.select /scale/class /scale/type /scale/voices"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-43",
									"linecount" : 3,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 38.0, 612.0, 229.0, 70.0 ],
									"text" : "/1/scale/class = \"heptatonic\",\n/1/scale/type = /scale/type,\n/1/scale/voices = [1, 2, 3]\n"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "FullPacket", "FullPacket", "FullPacket" ],
									"patching_rect" : [ 38.0, 577.0, 525.0, 22.0 ],
									"text" : "o.cond /mode == 0\\, /mode == 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 177.0, 401.0, 95.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 444.0, 190.0, 101.0, 22.0 ],
									"text" : "o.select /selected"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 444.0, 224.0, 150.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 444.0, 156.0, 87.0, 22.0 ],
									"text" : "r weapon-stats"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-24",
									"linecount" : 6,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 38.0, 466.0, 306.0, 95.0 ],
									"text" : "/scale/type = /scale_types[[ /scale/idx ]],\n\nif (/selected == 0,\n  /mode = 0,\n  /mode = 1\n)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 38.0, 433.0, 158.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 38.0, 401.0, 97.0, 22.0 ],
									"text" : "o.pack /scale/idx"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "FullPacket" ],
									"patching_rect" : [ 177.0, 369.0, 171.0, 22.0 ],
									"text" : "o.select /scale_types /selected"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "FullPacket" ],
									"patching_rect" : [ 38.0, 327.0, 135.0, 22.0 ],
									"text" : "o.route /values /weights"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-184",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 38.0, 369.0, 134.0, 22.0 ],
									"saved_object_attributes" : 									{
										"filename" : "weightedchoice.js",
										"parameter_enable" : 0
									}
,
									"text" : "js weightedchoice.js"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 38.0, 292.0, 148.0, 22.0 ],
									"text" : "o.var"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 38.0, 257.0, 115.0, 22.0 ],
									"text" : "r on-melody-change"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 575.0, 190.0, 120.0, 22.0 ],
									"text" : "o.select /scale_types"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 167.0, 257.0, 296.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-10",
									"linecount" : 11,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 167.0, 87.5, 257.0, 159.0 ],
									"text" : "/values = [0, 1, 2, 3, 4, 5, 6, 7],\n/weights = [\n  /firing_weapon,\n  /moving_over_rotating,\n  /health_lost_over_gained,\n  /dodges_over_enemy_collision,\n  /missed_notes_over_dodges,\n  /hit_rests_over_accidentals,\n  /moving_and_rotating,\n  /accuracy\n]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 167.0, 59.5, 93.0, 22.0 ],
									"text" : "o.route /percent"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 167.0, 31.5, 78.0, 22.0 ],
									"text" : "r player-stats"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 575.0, 156.0, 71.0, 22.0 ],
									"text" : "r scale-map"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 1 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 1 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 1 ],
									"source" : [ "obj-16", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-184", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 1 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 1 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"midpoints" : [ 163.5, 359.5, 186.5, 359.5 ],
									"source" : [ "obj-37", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-184", 1 ],
									"source" : [ "obj-37", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-184", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"source" : [ "obj-41", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 1 ],
									"source" : [ "obj-44", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"source" : [ "obj-44", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 1 ],
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"midpoints" : [ 300.5, 715.0, 47.5, 715.0 ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"midpoints" : [ 110.0, 755.0, 50.0, 755.0, 50.0, 757.0, 47.5, 757.0 ],
									"source" : [ "obj-48", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-68", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 32.0, 2479.16179000000011, 193.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p change-scale-on-melody-change"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-518",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "bang", "bang" ],
					"patching_rect" : [ 2441.586365001200193, 367.864144921302795, 121.0, 22.0 ],
					"text" : "t 2 b b"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 48.0,
					"id" : "obj-514",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2411.699999999999818, 2871.8125, 321.0, 60.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1233.93437513411277, 6.61762261390686, 325.0, 60.0 ],
					"text" : "Control Panel",
					"textcolor" : [ 0.799996614456177, 0.800020575523376, 0.800006866455078, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-512",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2789.125, 2813.69487738609314, 88.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1607.577826877439293, 1504.038069307808655, 134.0, 20.0 ],
					"text" : "Audio Output Device",
					"textcolor" : [ 0.999995052814484, 1.0, 1.0, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-509",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2798.749999999999545, 2787.69487738609314, 67.500000000000227, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1331.000000000009095, 1136.420437932014465, 134.0, 20.0 ],
					"text" : "Audio",
					"textcolor" : [ 0.999995052814484, 1.0, 1.0, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-503",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1135.125, 681.638437628746033, 130.0, 22.0 ],
					"text" : "s debug-enable-values"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-500",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "debug-selector.maxpat",
					"numinlets" : 0,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 1135.125, 541.567441582679749, 318.0, 128.844306826591492 ],
					"presentation" : 1,
					"presentation_rect" : [ 1520.077826877434745, 1357.891061902046204, 317.922173122572531, 126.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-499",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 2306.0, 38.0, 857.0, 744.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-4",
									"linecount" : 11,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 127.0, 430.0, 594.0, 203.0 ],
									"text" : "Define scale values.\n\nThe scale class is whether its a 7-tone (heptatonic) or 5-tone (pentatonic) scale and the scale type is the scale name (major, lydian, etc.).\n\nEach scale class contains a map of scale type to a list of integers. These integers correspond to the number of halfsteps from the base note for that scale degree.\n\nFor example, for \"/major : [0, 2, 4, 5, 7, 9, 11]\", the first scale degree is 0 halfsteps away from the base, the 3rd scale degree is 4 halfsteps away from the base, the 6th is 9 halfsteps away, etc."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-119",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 33.0, 22.0, 111.0, 22.0 ],
									"text" : "r default-scale-load"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 33.0, 430.0, 73.0, 22.0 ],
									"text" : "s scale-map"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-259",
									"linecount" : 27,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 33.0, 55.382351517677307, 493.705879211425781, 356.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 20, 47, 115, 99, 97, 108, 101, 115, 0, 44, 46, 0, 0, 0, 0, 4, 4, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -20, 47, 104, 101, 112, 116, 97, 116, 111, 110, 105, 99, 0, 44, 46, 0, 0, 0, 0, 1, -40, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48, 47, 109, 97, 106, 111, 114, 0, 0, 44, 105, 105, 105, 105, 105, 105, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 4, 0, 0, 0, 5, 0, 0, 0, 7, 0, 0, 0, 9, 0, 0, 0, 11, 0, 0, 0, 56, 47, 109, 105, 110, 111, 114, 47, 110, 97, 116, 117, 114, 97, 108, 0, 0, 44, 105, 105, 105, 105, 105, 105, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 3, 0, 0, 0, 5, 0, 0, 0, 7, 0, 0, 0, 8, 0, 0, 0, 10, 0, 0, 0, 56, 47, 109, 105, 110, 111, 114, 47, 104, 97, 114, 109, 111, 110, 105, 99, 0, 44, 105, 105, 105, 105, 105, 105, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 3, 0, 0, 0, 5, 0, 0, 0, 7, 0, 0, 0, 8, 0, 0, 0, 11, 0, 0, 0, 56, 47, 109, 105, 110, 111, 114, 47, 109, 101, 108, 111, 100, 105, 99, 0, 0, 44, 105, 105, 105, 105, 105, 105, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 3, 0, 0, 0, 5, 0, 0, 0, 7, 0, 0, 0, 9, 0, 0, 0, 11, 0, 0, 0, 48, 47, 100, 111, 114, 105, 97, 110, 0, 44, 105, 105, 105, 105, 105, 105, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 3, 0, 0, 0, 5, 0, 0, 0, 7, 0, 0, 0, 9, 0, 0, 0, 10, 0, 0, 0, 48, 47, 108, 121, 100, 105, 97, 110, 0, 44, 105, 105, 105, 105, 105, 105, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 4, 0, 0, 0, 6, 0, 0, 0, 7, 0, 0, 0, 9, 0, 0, 0, 11, 0, 0, 0, 52, 47, 109, 105, 120, 111, 108, 121, 100, 105, 97, 110, 0, 44, 105, 105, 105, 105, 105, 105, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 4, 0, 0, 0, 5, 0, 0, 0, 7, 0, 0, 0, 9, 0, 0, 0, 10, 0, 0, 0, 60, 47, 97, 101, 111, 108, 105, 97, 110, 95, 100, 111, 109, 105, 110, 97, 110, 116, 0, 0, 0, 44, 105, 105, 105, 105, 105, 105, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 4, 0, 0, 0, 5, 0, 0, 0, 7, 0, 0, 0, 8, 0, 0, 0, 10, 0, 0, 1, -116, 47, 112, 101, 110, 116, 97, 116, 111, 110, 105, 99, 0, 44, 46, 0, 0, 0, 0, 1, 120, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 47, 109, 97, 106, 111, 114, 0, 0, 44, 105, 105, 105, 105, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 4, 0, 0, 0, 7, 0, 0, 0, 9, 0, 0, 0, 44, 47, 109, 105, 110, 111, 114, 47, 110, 97, 116, 117, 114, 97, 108, 0, 0, 44, 105, 105, 105, 105, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 5, 0, 0, 0, 7, 0, 0, 0, 10, 0, 0, 0, 44, 47, 109, 105, 110, 111, 114, 47, 104, 97, 114, 109, 111, 110, 105, 99, 0, 44, 105, 105, 105, 105, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 5, 0, 0, 0, 7, 0, 0, 0, 11, 0, 0, 0, 44, 47, 109, 105, 110, 111, 114, 47, 109, 101, 108, 111, 100, 105, 99, 0, 0, 44, 105, 105, 105, 105, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 5, 0, 0, 0, 7, 0, 0, 0, 11, 0, 0, 0, 36, 47, 100, 111, 114, 105, 97, 110, 0, 44, 105, 105, 105, 105, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 5, 0, 0, 0, 7, 0, 0, 0, 10, 0, 0, 0, 36, 47, 108, 121, 100, 105, 97, 110, 0, 44, 105, 105, 105, 105, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 5, 0, 0, 0, 7, 0, 0, 0, 11, 0, 0, 0, 40, 47, 109, 105, 120, 111, 108, 121, 100, 105, 97, 110, 0, 44, 105, 105, 105, 105, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 4, 0, 0, 0, 7, 0, 0, 0, 9, 0, 0, 0, 48, 47, 97, 101, 111, 108, 105, 97, 110, 95, 100, 111, 109, 105, 110, 97, 110, 116, 0, 0, 0, 44, 105, 105, 105, 105, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 4, 0, 0, 0, 7, 0, 0, 0, 10, 0, 0, 0, 112, 47, 111, 116, 104, 101, 114, 0, 0, 44, 46, 0, 0, 0, 0, 0, 96, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 47, 99, 104, 114, 111, 109, 97, 116, 105, 99, 0, 0, 44, 105, 105, 105, 105, 105, 105, 105, 105, 105, 105, 105, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 3, 0, 0, 0, 4, 0, 0, 0, 5, 0, 0, 0, 6, 0, 0, 0, 7, 0, 0, 0, 8, 0, 0, 0, 9, 0, 0, 0, 10, 0, 0, 0, 11, 0, 0, 0, -124, 47, 115, 99, 97, 108, 101, 95, 116, 121, 112, 101, 115, 0, 0, 0, 0, 44, 115, 115, 115, 115, 115, 115, 115, 115, 0, 0, 0, 109, 97, 106, 111, 114, 0, 0, 0, 109, 105, 110, 111, 114, 47, 110, 97, 116, 117, 114, 97, 108, 0, 0, 0, 109, 105, 110, 111, 114, 47, 104, 97, 114, 109, 111, 110, 105, 99, 0, 0, 109, 105, 110, 111, 114, 47, 109, 101, 108, 111, 100, 105, 99, 0, 0, 0, 100, 111, 114, 105, 97, 110, 0, 0, 108, 121, 100, 105, 97, 110, 0, 0, 109, 105, 120, 111, 108, 121, 100, 105, 97, 110, 0, 0, 97, 101, 111, 108, 105, 97, 110, 95, 100, 111, 109, 105, 110, 97, 110, 116, 0, 0, 0, 0 ],
									"saved_bundle_length" : 1200,
									"text" : "/scales : {\n  /heptatonic : {\n    /major : [0, 2, 4, 5, 7, 9, 11],\n    /minor/natural : [0, 2, 3, 5, 7, 8, 10],\n    /minor/harmonic : [0, 2, 3, 5, 7, 8, 11],\n    /minor/melodic : [0, 2, 3, 5, 7, 9, 11],\n    /dorian : [0, 2, 3, 5, 7, 9, 10],\n    /lydian : [0, 2, 4, 6, 7, 9, 11],\n    /mixolydian : [0, 2, 4, 5, 7, 9, 10],\n    /aeolian_dominant : [0, 2, 4, 5, 7, 8, 10]\n  },\n  /pentatonic : {\n    /major : [0, 2, 4, 7, 9],\n    /minor/natural : [0, 3, 5, 7, 10],\n    /minor/harmonic : [0, 3, 5, 7, 11],\n    /minor/melodic : [0, 3, 5, 7, 11],\n    /dorian : [0, 3, 5, 7, 10],\n    /lydian : [0, 2, 5, 7, 11],\n    /mixolydian : [0, 2, 4, 7, 9],\n    /aeolian_dominant : [0, 2, 4, 7, 10]\n  },\n  /other : {\n    /chromatic : [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]\n  }\n},\n/scale_types : [\"major\", \"minor/natural\", \"minor/harmonic\", \"minor/melodic\", \"dorian\", \"lydian\", \"mixolydian\", \"aeolian_dominant\"]"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-259", 0 ],
									"source" : [ "obj-119", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-259", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 32.0, 2027.0, 132.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p init-all-scales-on-load"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-493",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1168.300000000000182, 2882.3125, 48.0, 22.0 ],
					"text" : "del 300"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-492",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1168.300000000000182, 2916.93012261390686, 29.5, 22.0 ],
					"text" : "2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-491",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1168.300000000000182, 2949.8125, 111.0, 22.0 ],
					"text" : "s default-reset-load"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-490",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2441.586365001200193, 294.73789119720459, 109.0, 22.0 ],
					"text" : "r default-reset-load"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-484",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 2441.586365001200193, 335.067415714263916, 147.5, 22.0 ],
					"text" : "gate 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-483",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2492.586365001200193, 426.332170486450195, 79.0, 22.0 ],
					"text" : "s metro-reset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-471",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2744.105682500599414, 401.864144921302795, 79.0, 22.0 ],
					"text" : "s metro-reset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-472",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2744.105682500599414, 338.426449775695801, 125.0, 22.0 ],
					"text" : "if $i1 == 99 then bang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-465",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 2146.0, -29.0, 892.0, 959.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-110",
									"linecount" : 6,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 311.0, 437.0, 304.0, 114.0 ],
									"text" : "Swapping to Weapon 1 will select Voices 2 and 3 to either have a Flanger or Chorus effect applied to them.\n\nFlanger/Chorus modulation is hanlded in these subpatches."
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-109",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 106.0, 26.499922394752502, 304.0, 24.0 ],
									"text" : "Handle effects modulation for Weapon 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-103",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 5,
											"revision" : 5,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 1804.0, -93.0, 1732.0, 939.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
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
										"boxes" : [ 											{
												"box" : 												{
													"fontsize" : 16.0,
													"id" : "obj-3",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 73.0, 30.0, 184.0, 42.0 ],
													"text" : "Flanger modulation based on player stats"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-16",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 6,
													"outlettype" : [ "", "", "", "", "", "FullPacket" ],
													"patching_rect" : [ 30.0, 203.0, 684.0, 22.0 ],
													"text" : "o.route /mix /feedback /rate /depth /ms"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-15",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 562.0, 241.0, 45.0, 22.0 ],
													"text" : "$1 200"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-14",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 429.0, 241.0, 45.0, 22.0 ],
													"text" : "$1 200"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 296.0, 241.0, 45.0, 22.0 ],
													"text" : "$1 200"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 163.0, 241.0, 45.0, 22.0 ],
													"text" : "$1 200"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-11",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 30.0, 241.0, 45.0, 22.0 ],
													"text" : "$1 200"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 562.0, 275.0, 57.0, 22.0 ],
													"text" : "line 0. 10"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 429.0, 275.0, 57.0, 22.0 ],
													"text" : "line 0. 10"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 296.0, 275.0, 51.0, 22.0 ],
													"text" : "line 0. 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 163.0, 275.0, 57.0, 22.0 ],
													"text" : "line 0. 10"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-5",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 30.0, 275.0, 57.0, 22.0 ],
													"text" : "line 0. 10"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 5,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 30.0, 309.0, 551.0, 22.0 ],
													"text" : "o.pack /mix /feedback /rate /depth /ms"
												}

											}
, 											{
												"box" : 												{
													"annotation" : "Stats (OSC)",
													"comment" : "Stats (OSC)",
													"hint" : "Stats (OSC)",
													"id" : "obj-1",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 30.0, 36.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"id" : "obj-80",
													"linecount" : 19,
													"maxclass" : "o.expr.codebox",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "FullPacket", "FullPacket" ],
													"patching_rect" : [ 30.0, 346.0, 580.0, 262.0 ],
													"text" : "# Turn off chorus\n/chorus/2/chorus/mix = 0,\n/chorus/3/chorus/mix = 0,\n\n# Turn on Flanger for voice 2\n/delay/2/delay/mix = /mix,\n/delay/2/delay/ms = /ms,\n/delay/2/delay/feedback = /feedback,\n/delay/2/delay/automation/enable = 1,\n/delay/2/delay/automation/rate = /rate,\n/delay/2/delay/automation/depth = /depth,\n\n# Turn on Flanger for voice 3\n/delay/3/delay/mix = /mix,\n/delay/3/delay/ms = /ms,\n/delay/3/delay/feedback = /feedback,\n/delay/3/delay/automation/enable = 1,\n/delay/3/delay/automation/rate = /rate,\n/delay/3/delay/automation/depth = /depth"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-78",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "FullPacket" ],
													"patching_rect" : [ 30.0, 169.0, 89.0, 22.0 ],
													"text" : "o.route /flanger"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"id" : "obj-37",
													"linecount" : 5,
													"maxclass" : "o.expr.codebox",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "FullPacket", "FullPacket" ],
													"patching_rect" : [ 30.0, 76.0, 580.0, 83.0 ],
													"text" : "/flanger/mix = scale(/moving_and_rotating, 0., 100., 5, 60),\n/flanger/feedback = scale(100 - /hit_rests_over_accidentals, 0., 100., 0.1, 0.9),\n/flanger/rate = scale(/missed_notes_over_dodges, 0., 100., 0.05, 4),\n/flanger/depth = scale(/enemy_over_player_hd, 0., 100., 0.1, 1.),\n/flanger/ms = scale(/note_over_enemy_score, 0., 100., 1, 18)"
												}

											}
, 											{
												"box" : 												{
													"annotation" : "Chorus Variables (OSC)",
													"comment" : "Chorus Variables (OSC)",
													"hint" : "Chorus Variables (OSC)",
													"id" : "obj-96",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 30.0, 618.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"source" : [ "obj-16", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"source" : [ "obj-16", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"source" : [ "obj-16", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"source" : [ "obj-16", 4 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-78", 0 ],
													"source" : [ "obj-37", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-80", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 1 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 3 ],
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"source" : [ "obj-78", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 2 ],
													"source" : [ "obj-8", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-96", 0 ],
													"source" : [ "obj-80", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 4 ],
													"source" : [ "obj-9", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 339.75, 605.0, 107.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p flanger-variables"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-100",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 210.75, 569.0, 148.5, 22.0 ],
									"text" : "t l l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-99",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 5,
											"revision" : 5,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 2237.0, -37.0, 1190.0, 981.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
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
										"boxes" : [ 											{
												"box" : 												{
													"annotation" : "Stats (OSC)",
													"comment" : "Stats (OSC)",
													"hint" : "Stats (OSC)",
													"id" : "obj-1",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 578.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-77",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 50.0, 541.0, 127.0, 22.0 ],
													"text" : "o.union"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-74",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "FullPacket" ],
													"patching_rect" : [ 239.0, 475.0, 182.0, 22.0 ],
													"text" : "o.select /enemy_over_player_hd"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-73",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 158.0, 508.0, 100.0, 22.0 ],
													"text" : "o.union"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"id" : "obj-68",
													"linecount" : 11,
													"maxclass" : "o.expr.codebox",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "FullPacket", "FullPacket" ],
													"patching_rect" : [ 239.0, 305.0, 558.5, 159.0 ],
													"text" : "/count = /player/hit_distance[[ 4 ]] + /enemy/hit_distance[[ 4 ]],\n\nif (/count == 0,\n  /total = 0,\n  /total = /player/hit_distance[[ 1 ]] + /enemy/hit_distance[[ 1 ]]\n),\n\nif (/total == 0,\n  /enemy_over_player_hd = 50.,\n  /enemy_over_player_hd = (/enemy/hit_distance[[ 1 ]] / float32(/total)) * 100\n)"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-64",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 239.0, 269.0, 157.0, 22.0 ],
													"text" : "o.union"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-61",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 377.0, 234.499922394752502, 51.0, 22.0 ],
													"text" : "o.flatten"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-62",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 377.0, 200.499922394752502, 87.0, 22.0 ],
													"text" : "o.pack /enemy"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-63",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "FullPacket" ],
													"patching_rect" : [ 377.0, 166.499922394752502, 121.0, 22.0 ],
													"text" : "o.select /hit_distance"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-60",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 377.0, 132.0, 81.0, 22.0 ],
													"text" : "r enemy-stats"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-59",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 239.0, 234.499922394752502, 51.0, 22.0 ],
													"text" : "o.flatten"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-58",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 239.0, 200.499922394752502, 83.0, 22.0 ],
													"text" : "o.pack /player"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-55",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "FullPacket" ],
													"patching_rect" : [ 239.0, 166.499922394752502, 121.0, 22.0 ],
													"text" : "o.select /hit_distance"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-44",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "FullPacket" ],
													"patching_rect" : [ 50.5, 132.0, 93.0, 22.0 ],
													"text" : "o.route /percent"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-43",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.5, 100.0, 75.0, 22.0 ],
													"text" : "r game-stats"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-33",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "FullPacket" ],
													"patching_rect" : [ 158.0, 132.0, 100.0, 22.0 ],
													"text" : "o.route /percent"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-29",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 158.0, 100.0, 78.0, 22.0 ],
													"text" : "r player-stats"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-33", 0 ],
													"source" : [ "obj-29", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"source" : [ "obj-33", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-73", 0 ],
													"source" : [ "obj-33", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-44", 0 ],
													"source" : [ "obj-43", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-77", 0 ],
													"source" : [ "obj-44", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-58", 0 ],
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-59", 0 ],
													"source" : [ "obj-58", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-64", 0 ],
													"source" : [ "obj-59", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-63", 0 ],
													"source" : [ "obj-60", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-64", 1 ],
													"source" : [ "obj-61", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-61", 0 ],
													"source" : [ "obj-62", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-62", 0 ],
													"source" : [ "obj-63", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-68", 0 ],
													"source" : [ "obj-64", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-74", 0 ],
													"source" : [ "obj-68", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-77", 1 ],
													"source" : [ "obj-73", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-73", 1 ],
													"source" : [ "obj-74", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-77", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 210.75, 531.0, 65.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p get-stats"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-97",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 5,
											"revision" : 5,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 2143.0, -48.0, 1471.0, 939.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
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
										"boxes" : [ 											{
												"box" : 												{
													"fontsize" : 16.0,
													"id" : "obj-3",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 69.0, 52.0, 184.0, 42.0 ],
													"text" : "Chorus modulation based on player stats"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-16",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 6,
													"outlettype" : [ "", "", "", "", "", "FullPacket" ],
													"patching_rect" : [ 29.0, 240.0, 684.0, 22.0 ],
													"text" : "o.route /mix /feedback /rate /depth /ms"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-15",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 561.0, 278.0, 45.0, 22.0 ],
													"text" : "$1 200"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-14",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 428.0, 278.0, 45.0, 22.0 ],
													"text" : "$1 200"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 295.0, 278.0, 45.0, 22.0 ],
													"text" : "$1 200"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 162.0, 278.0, 45.0, 22.0 ],
													"text" : "$1 200"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-11",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 29.0, 278.0, 45.0, 22.0 ],
													"text" : "$1 200"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 561.0, 312.0, 57.0, 22.0 ],
													"text" : "line 0. 10"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 428.0, 312.0, 57.0, 22.0 ],
													"text" : "line 0. 10"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 295.0, 312.0, 51.0, 22.0 ],
													"text" : "line 0. 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 162.0, 312.0, 57.0, 22.0 ],
													"text" : "line 0. 10"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-5",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 29.0, 312.0, 57.0, 22.0 ],
													"text" : "line 0. 10"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 5,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 29.0, 346.0, 551.0, 22.0 ],
													"text" : "o.pack /mix /feedback /rate /depth /ms"
												}

											}
, 											{
												"box" : 												{
													"comment" : "Stats (OSC)",
													"hint" : "Stats (OSC)",
													"id" : "obj-1",
													"ignoreclick" : 1,
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 29.0, 58.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"id" : "obj-80",
													"linecount" : 21,
													"maxclass" : "o.expr.codebox",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "FullPacket", "FullPacket" ],
													"patching_rect" : [ 29.0, 392.0, 580.0, 287.0 ],
													"text" : "# Turn off delays\n/delay/2/delay/mix = 0,\n/delay/3/delay/mix = 0,\n\n# Turn on chorus for voice 2\n/chorus/2/chorus/mix = /mix,\n/chorus/2/chorus/rate = /rate,\n/chorus/2/chorus/depth = /depth,\n/chorus/2/chorus/left/ms = /ms,\n/chorus/2/chorus/right/ms = /ms,\n/chorus/2/chorus/left/feedback = /feedback,\n/chorus/2/chorus/right/feedback = /feedback,\n\n# Turn on chorus for voice 3\n/chorus/3/chorus/mix = /mix,\n/chorus/3/chorus/rate = /rate,\n/chorus/3/chorus/depth = /depth,\n/chorus/3/chorus/left/ms = /ms,\n/chorus/3/chorus/right/ms = /ms,\n/chorus/3/chorus/left/feedback = /feedback,\n/chorus/3/chorus/right/feedback = /feedback"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-78",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "FullPacket" ],
													"patching_rect" : [ 29.0, 198.0, 89.0, 22.0 ],
													"text" : "o.route /chorus"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"id" : "obj-37",
													"linecount" : 5,
													"maxclass" : "o.expr.codebox",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "FullPacket", "FullPacket" ],
													"patching_rect" : [ 29.0, 105.0, 580.0, 83.0 ],
													"text" : "/chorus/mix = scale(/moving_and_rotating, 0., 100., 5, 80),\n/chorus/feedback = scale(100 - /hit_rests_over_accidentals, 0., 100., 0.15, 0.9),\n/chorus/rate = scale(/missed_notes_over_dodges, 0., 100., 0.05, 10.),\n/chorus/depth = scale(/enemy_over_player_hd, 0., 100., 0.1, 1.),\n/chorus/ms = scale(/note_over_enemy_score, 0., 100., 20, 40)"
												}

											}
, 											{
												"box" : 												{
													"annotation" : "Chorus Variables (OSC)",
													"comment" : "Chorus Variables (OSC)",
													"hint" : "Chorus Variables (OSC)",
													"id" : "obj-96",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 29.0, 693.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"source" : [ "obj-16", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"source" : [ "obj-16", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"source" : [ "obj-16", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"source" : [ "obj-16", 4 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-78", 0 ],
													"source" : [ "obj-37", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-80", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 1 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 3 ],
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"source" : [ "obj-78", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 2 ],
													"source" : [ "obj-8", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-96", 0 ],
													"source" : [ "obj-80", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 4 ],
													"source" : [ "obj-9", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 210.75, 605.0, 107.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p chorus-variables"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 168.0, 531.0, 29.5, 22.0 ],
									"text" : "+ 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 81.75, 641.0, 277.0, 22.0 ],
									"text" : "switch 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 168.0, 469.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 168.0, 501.0, 59.0, 22.0 ],
									"text" : "random 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-143",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 242.0, 211.249948263168335, 32.0, 22.0 ],
									"text" : "t 0 b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-105",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 437.25, 797.0, 133.0, 22.0 ],
									"text" : "s all-voice-delay-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-104",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "FullPacket" ],
									"patching_rect" : [ 81.75, 762.0, 552.250000000000114, 22.0 ],
									"text" : "o.route /fm /chorus /delay"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-102",
									"linecount" : 4,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 81.75, 674.5, 137.75, 72.0 ],
									"text" : "# Turn off FM\n/fm/1/fm/wave = 0,\n/fm/2/fm/wave = 0,\n/fm/3/fm/wave = 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-101",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 259.5, 797.0, 141.0, 22.0 ],
									"text" : "s all-voice-chorus-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-57",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 107.0, 147.74989652633667, 114.5, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-56",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 202.5, 117.749870657920837, 171.0, 22.0 ],
									"text" : "o.select /per_screen_quadrant"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-53",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 202.5, 85.749870657920837, 89.0, 22.0 ],
									"text" : "o.route /frames"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-52",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 202.5, 53.999844789505005, 78.0, 22.0 ],
									"text" : "r player-stats"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-50",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 168.0, 437.0, 129.0, 22.0 ],
									"text" : "o.if /selected/delta != 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-49",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 107.0, 391.0, 80.0, 22.0 ],
									"text" : "o.select /prev"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 397.0, 211.249948263168335, 118.0, 22.0 ],
									"text" : "if $i1 == 1 then bang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-48",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 397.0, 179.499922394752502, 69.0, 22.0 ],
									"text" : "r game-init"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-46",
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 397.0, 255.0, 146.0, 23.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 112, 114, 101, 118, 47, 115, 101, 108, 101, 99, 116, 101, 100, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0 ],
									"saved_bundle_length" : 44,
									"text" : "/prev/selected : 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-45",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 107.0, 285.0, 309.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 107.0, 179.499922394752502, 154.0, 22.0 ],
									"text" : "o.if /selected == 1"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-41",
									"linecount" : 4,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 107.0, 315.499922394752502, 309.0, 70.0 ],
									"text" : "/prev/selected ??= 0,\n\n/selected/delta = /selected - /prev/selected,\n/prev/selected = /selected"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 107.0, 117.749870657920837, 87.0, 22.0 ],
									"text" : "r weapon-stats"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 81.75, 797.0, 128.0, 22.0 ],
									"text" : "s all-voice-mod-values"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-103", 0 ],
									"source" : [ "obj-100", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-97", 0 ],
									"source" : [ "obj-100", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-104", 0 ],
									"source" : [ "obj-102", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 2 ],
									"source" : [ "obj-103", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-101", 0 ],
									"source" : [ "obj-104", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-105", 0 ],
									"source" : [ "obj-104", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-104", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"midpoints" : [ 251.5, 243.0, 91.25, 243.0 ],
									"source" : [ "obj-143", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"midpoints" : [ 264.5, 245.5, 406.5, 245.5 ],
									"source" : [ "obj-143", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-102", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"midpoints" : [ 177.5, 629.5, 91.25, 629.5 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-57", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-143", 0 ],
									"source" : [ "obj-42", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 1 ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 1 ],
									"midpoints" : [ 116.5, 423.0, 423.0, 423.0, 423.0, 282.0, 406.5, 282.0 ],
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"source" : [ "obj-49", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-57", 1 ],
									"source" : [ "obj-56", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-57", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 1 ],
									"source" : [ "obj-97", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-100", 0 ],
									"source" : [ "obj-99", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 357.0, 2446.0, 173.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p weapon-one-effects-handling"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-464",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 1474.0, -211.0, 1212.0, 1319.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 515.75, 933.0, 91.0, 22.0 ],
									"text" : "o.if bound(/mix)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 101.0, 273.0, 180.0, 22.0 ],
									"text" : "o.if bound(/per_angle_quadrant)"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-163",
									"linecount" : 5,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 733.25, 1099.5, 151.25, 96.0 ],
									"text" : "Handle turning off other active effects, and route each effect to the appropriate voice"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-162",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 636.0, 805.999974000000066, 151.25, 78.0 ],
									"text" : "FM and Delay modulation are handled in these subpatches"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-110",
									"linecount" : 9,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 546.0, 48.249948263168335, 306.0, 167.0 ],
									"text" : "Swapping to Weapon 0 will select one voice to have an FM effect and the other voice to be a classic delay.\n\nThe modulator waveform for FM is selected based on a weighted choice; the weights are the number of frames the player spends at a particular angle (0-90, 90-180, 180-270, 270-360)."
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-109",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 89.0, 41.749870657920837, 304.0, 24.0 ],
									"text" : "Handle effects modulation for Weapon 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-153",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 5,
											"revision" : 5,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 1608.0, -183.0, 2109.0, 1319.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
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
										"boxes" : [ 											{
												"box" : 												{
													"fontsize" : 16.0,
													"id" : "obj-110",
													"linecount" : 11,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 490.0, 261.000025868415833, 304.0, 203.0 ],
													"text" : "FM modulation:\n\n1) The modulator signal's Frequency is based on how many player projectiles are on-screen.\n2) The modulator's depth is based on the player's current health.\n\nThe FM effect gets more intense as the player's health gets lower and the player increases how many projectiles they fire."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-39",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 111.0, 761.0, 445.5, 22.0 ],
													"text" : "o.union"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-38",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 537.5, 722.0, 97.0, 22.0 ],
													"text" : "o.pack /fm/depth"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-37",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 111.0, 619.0, 445.5, 22.0 ],
													"text" : "t l l"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-36",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "FullPacket" ],
													"patching_rect" : [ 537.5, 651.0, 181.0, 22.0 ],
													"text" : "o.route /curr_health /max_health"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-28",
													"maxclass" : "newobj",
													"numinlets" : 6,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 537.5, 686.000005131584203, 221.5, 22.0 ],
													"text" : "scale 0. 10. 0.7 0.1 0.4 @classic 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-25",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 111.0, 976.000051736831665, 329.0, 22.0 ],
													"text" : "o.union"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-24",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 421.0, 904.000025868415833, 82.333333333333371, 22.0 ],
													"text" : "o.union"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-23",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 484.333333333333371, 870.000025868415833, 82.333333333333371, 22.0 ],
													"text" : "o.union"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-20",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "", "", "", "FullPacket" ],
													"patching_rect" : [ 421.0, 833.000025868415833, 209.0, 22.0 ],
													"text" : "o.select /fm_voice /delay_voice /wave"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-17",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "FullPacket" ],
													"patching_rect" : [ 111.0, 797.0, 329.0, 22.0 ],
													"text" : "o.route /fm"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-16",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "FullPacket" ],
													"patching_rect" : [ 111.0, 833.000025868415833, 285.0, 22.0 ],
													"text" : "o.route /factor /depth"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-4",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 244.0, 870.000025868415833, 45.0, 22.0 ],
													"text" : "$1 200"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-11",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 111.0, 870.000025868415833, 45.0, 22.0 ],
													"text" : "$1 200"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 244.0, 904.000025868415833, 57.0, 22.0 ],
													"text" : "line 0. 10"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 111.0, 904.000025868415833, 57.0, 22.0 ],
													"text" : "line 0. 10"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 111.0, 938.000025868415833, 152.0, 22.0 ],
													"text" : "o.pack /factor /depth"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"id" : "obj-103",
													"linecount" : 2,
													"maxclass" : "o.expr.codebox",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "FullPacket", "FullPacket" ],
													"patching_rect" : [ 111.0, 675.000005131584203, 405.0, 44.0 ],
													"text" : "/alive_projectiles = clip(/alive_projectiles, 0, 25),\n/fm/factor = scale(/alive_projectiles, 0, 25, 1.25, 0.25)"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-95",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 111.0, 584.000025868415833, 108.0, 22.0 ],
													"text" : "o.union"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-67",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 111.0, 507.000025868415833, 183.0, 22.0 ],
													"text" : "o.union"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-30",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "FullPacket", "FullPacket" ],
													"patching_rect" : [ 50.0, 394.000025868415833, 240.0, 22.0 ],
													"text" : "o.if /health/delta != 0 || /projectiles/delta != 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-15",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 136.0, 164.25, 105.0, 22.0 ],
													"text" : "o.union"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "FullPacket" ],
													"patching_rect" : [ 50.0, 426.000025868415833, 80.0, 22.0 ],
													"text" : "o.select /prev"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"id" : "obj-10",
													"linecount" : 2,
													"maxclass" : "o.compose",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 446.0, 187.249987065792084, 163.0, 36.0 ],
													"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 112, 114, 101, 118, 47, 104, 101, 97, 108, 116, 104, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 10, 0, 0, 0, 28, 47, 112, 114, 101, 118, 47, 112, 114, 111, 106, 101, 99, 116, 105, 108, 101, 115, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0 ],
													"saved_bundle_length" : 76,
													"text" : "/prev/health : 10,\n/prev/projectiles : 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 50.0, 231.000025868415833, 415.0, 22.0 ],
													"text" : "o.union"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"id" : "obj-7",
													"linecount" : 8,
													"maxclass" : "o.expr.codebox",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "FullPacket", "FullPacket" ],
													"patching_rect" : [ 50.0, 261.000025868415833, 415.0, 121.0 ],
													"text" : "/prev/health ??= /max_health,\n/prev/projectiles ??= 0,\n\n/health/delta = /curr_health - /prev/health,\n/projectiles/delta = /alive_projectiles - /prev/projectiles,\n\n/prev/health = /curr_health,\n/prev/projectiles = /alive_projectiles"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 50.0, 199.000025868415833, 105.0, 22.0 ],
													"text" : "o.union"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "", "", "", "FullPacket" ],
													"patching_rect" : [ 50.0, 134.249974131584167, 277.0, 22.0 ],
													"text" : "o.select /curr_health /max_health /alive_projectiles"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 100.0, 78.0, 22.0 ],
													"text" : "r player-stats"
												}

											}
, 											{
												"box" : 												{
													"annotation" : "Wave (OSC)",
													"comment" : "Wave (OSC)",
													"hint" : "Wave (OSC)",
													"id" : "obj-149",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 275.0, 467.999994868415797, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"annotation" : "Voices (OSC)",
													"comment" : "Voices (OSC)",
													"hint" : "Voices (OSC)",
													"id" : "obj-150",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 200.0, 544.000025868415833, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"annotation" : "Game Init (bang)",
													"comment" : "Game Init (bang)",
													"hint" : "Game Init (bang)",
													"id" : "obj-151",
													"index" : 3,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 446.0, 144.999994868415826, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-152",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 111.0, 1009.000025868415833, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 1 ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 0 ],
													"source" : [ "obj-103", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-67", 0 ],
													"source" : [ "obj-12", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 1 ],
													"midpoints" : [ 59.5, 458.000025868415833, 473.5, 458.000025868415833, 473.5, 225.000025868415833, 455.5, 225.000025868415833 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-67", 1 ],
													"source" : [ "obj-149", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 1 ],
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-95", 1 ],
													"source" : [ "obj-150", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"source" : [ "obj-151", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-16", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"source" : [ "obj-17", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"source" : [ "obj-17", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 1 ],
													"source" : [ "obj-2", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"source" : [ "obj-2", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 1 ],
													"source" : [ "obj-20", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"source" : [ "obj-20", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 1 ],
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 1 ],
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-152", 0 ],
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-38", 0 ],
													"source" : [ "obj-28", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"source" : [ "obj-30", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 2 ],
													"source" : [ "obj-36", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 0 ],
													"source" : [ "obj-36", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-103", 0 ],
													"source" : [ "obj-37", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-36", 0 ],
													"source" : [ "obj-37", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 1 ],
													"source" : [ "obj-38", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"source" : [ "obj-39", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 1 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-95", 0 ],
													"source" : [ "obj-67", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"source" : [ "obj-8", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"source" : [ "obj-9", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 0 ],
													"source" : [ "obj-95", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 515.75, 861.999974000000066, 97.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p fm-parameters"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-148",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 5,
											"revision" : 5,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 1753.0, -63.0, 1651.0, 868.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
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
										"boxes" : [ 											{
												"box" : 												{
													"fontsize" : 16.0,
													"id" : "obj-9",
													"linecount" : 9,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 451.0, 267.000025868415833, 311.0, 167.0 ],
													"text" : "Delay modulation:\n\n1) The delay time is based on the avg time between collecting notes.\n2) The delay feedback is based on the percentage the player spends moving and rotating\n3) Delay mix is based on the percentage of notes the player has collected"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-16",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "", "", "", "FullPacket" ],
													"patching_rect" : [ 111.0, 674.0, 418.0, 22.0 ],
													"text" : "o.route /mix /feedback /ms"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 377.0, 711.0, 45.0, 22.0 ],
													"text" : "$1 200"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 244.0, 711.0, 45.0, 22.0 ],
													"text" : "$1 200"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-11",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 111.0, 711.0, 45.0, 22.0 ],
													"text" : "$1 200"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 377.0, 745.0, 51.0, 22.0 ],
													"text" : "line 0. 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 244.0, 745.0, 57.0, 22.0 ],
													"text" : "line 0. 10"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-5",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 111.0, 745.0, 57.0, 22.0 ],
													"text" : "line 0. 10"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 111.0, 779.0, 285.0, 22.0 ],
													"text" : "o.pack /mix /feedback /ms"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-137",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "FullPacket", "FullPacket" ],
													"patching_rect" : [ 111.0, 438.0, 132.0, 22.0 ],
													"text" : "o.if /collected/delta != 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-133",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "FullPacket" ],
													"patching_rect" : [ 111.0, 636.0, 81.0, 22.0 ],
													"text" : "o.route /delay"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-132",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "FullPacket" ],
													"patching_rect" : [ 50.0, 398.5, 80.0, 22.0 ],
													"text" : "o.select /prev"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-131",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 368.666666666666742, 170.0, 72.666666666666515, 22.0 ],
													"text" : "o.union"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-123",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "FullPacket" ],
													"patching_rect" : [ 50.0, 204.0, 169.0, 22.0 ],
													"text" : "o.select /moving_and_rotating"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"id" : "obj-122",
													"linecount" : 10,
													"maxclass" : "o.expr.codebox",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "FullPacket", "FullPacket" ],
													"patching_rect" : [ 111.0, 475.0, 474.0, 147.0 ],
													"text" : "/delay/ms = scale(\n  /time/between_collecting[[ 1 ]],\n  /time/between_collecting[[ 0 ]],\n  /time/between_collecting[[ 3 ]],\n  50,\n  250\n),\n/delay/feedback = scale(/moving_and_rotating, 0., 100., 0., 0.9),\n/delay/mix = scale(/percent/collected, 0., 10., 10, 40),\n/delay/mix = clip(/delay/mix, 10, 40)"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"id" : "obj-121",
													"linecount" : 4,
													"maxclass" : "o.expr.codebox",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "FullPacket", "FullPacket" ],
													"patching_rect" : [ 50.0, 320.0, 352.0, 70.0 ],
													"text" : "/prev/collected ??= 0,\n\n/collected/delta = /collected - /prev/collected,\n/prev/collected = /collected"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-116",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 50.0, 278.0, 368.0, 22.0 ],
													"text" : "o.union"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-115",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 50.0, 241.0, 284.0, 22.0 ],
													"text" : "o.union"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-113",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "FullPacket" ],
													"patching_rect" : [ 50.0, 171.0, 212.0, 22.0 ],
													"text" : "o.route /percent"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-112",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 134.0, 78.0, 22.0 ],
													"text" : "r player-stats"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-111",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 315.0, 204.0, 72.666666666666742, 22.0 ],
													"text" : "o.union"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"id" : "obj-110",
													"maxclass" : "o.compose",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 399.0, 235.0, 163.0, 23.0 ],
													"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 112, 114, 101, 118, 47, 99, 111, 108, 108, 101, 99, 116, 101, 100, 0, 44, 105, 0, 0, 0, 0, 0, 0 ],
													"saved_bundle_length" : 44,
													"text" : "/prev/collected : 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-109",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "", "", "", "FullPacket" ],
													"patching_rect" : [ 315.0, 137.0, 180.0, 22.0 ],
													"text" : "o.select /time /collected /percent"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-108",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 315.0, 100.0, 75.0, 22.0 ],
													"text" : "r notes-stats"
												}

											}
, 											{
												"box" : 												{
													"annotation" : "Game Init (bang)",
													"comment" : "Game Init (bang)",
													"hint" : "Game Init (bang)",
													"id" : "obj-146",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 399.0, 198.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"annotation" : "Delay Variables (OSC)",
													"comment" : "Delay Variables (OSC)",
													"hint" : "Delay Variables (OSC)",
													"id" : "obj-147",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 111.0, 817.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-109", 0 ],
													"source" : [ "obj-108", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-111", 0 ],
													"source" : [ "obj-109", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-131", 1 ],
													"source" : [ "obj-109", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-131", 0 ],
													"source" : [ "obj-109", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-116", 1 ],
													"source" : [ "obj-110", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-115", 1 ],
													"source" : [ "obj-111", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-113", 0 ],
													"source" : [ "obj-112", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-123", 0 ],
													"source" : [ "obj-113", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-116", 0 ],
													"source" : [ "obj-115", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-121", 0 ],
													"source" : [ "obj-116", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-132", 0 ],
													"source" : [ "obj-121", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-133", 0 ],
													"source" : [ "obj-122", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-115", 0 ],
													"source" : [ "obj-123", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-111", 1 ],
													"source" : [ "obj-131", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-116", 1 ],
													"midpoints" : [ 59.5, 430.0, 426.5, 430.0, 426.5, 267.0, 408.5, 267.0 ],
													"source" : [ "obj-132", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-137", 0 ],
													"source" : [ "obj-132", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"source" : [ "obj-133", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-122", 0 ],
													"source" : [ "obj-137", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-110", 0 ],
													"source" : [ "obj-146", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"source" : [ "obj-16", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"source" : [ "obj-16", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-147", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 1 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 2 ],
													"source" : [ "obj-8", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 800.5, 861.999974000000066, 112.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p delay-parameters"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-143",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 236.0, 223.249974131584167, 32.0, 22.0 ],
									"text" : "t 0 b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-124",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 515.75, 899.0, 303.75, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-117",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "bang" ],
									"patching_rect" : [ 391.0, 223.249974131584167, 428.5, 22.0 ],
									"text" : "b 3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-105",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 433.25, 1308.0, 133.0, 22.0 ],
									"text" : "s all-voice-delay-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-104",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "FullPacket" ],
									"patching_rect" : [ 77.75, 1273.0, 552.250000000000114, 22.0 ],
									"text" : "o.route /fm /chorus /delay"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-102",
									"linecount" : 19,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 77.75, 1001.5, 653.5, 262.0 ],
									"text" : "# Turn off chorus\n/chorus/1/chorus/mix = 0,\n/chorus/2/chorus/mix = 0,\n/chorus/3/chorus/mix = 0,\n\n# Assign FM values\nassign(\"/fm/\" + /fm_voice + \"/fm/wave\", /wave),\nassign(\"/fm/\" + /fm_voice + \"/fm/factor\", /factor),\nassign(\"/fm/\" + /fm_voice + \"/fm/depth\", /depth),\n\n# Assign Delay values\nassign(\"/delay/\" + /delay_voice + \"/delay/mix\", /mix),\nassign(\"/delay/\" + /delay_voice + \"/delay/ms\", /ms),\nassign(\"/delay/\" + /delay_voice + \"/delay/feedback\", /feedback),\nassign(\"/delay/\" + /delay_voice + \"/delay/automation/enable\", 0),\n\n# Turn off delay and FM for other voices\nassign(\"/fm/\" + /delay_voice + \"/fm/wave\", 0),\nassign(\"/delay/\" + /fm_voice + \"/delay/mix\", 0)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-101",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 255.5, 1308.0, 141.0, 22.0 ],
									"text" : "s all-voice-chorus-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-96",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "" ],
									"patching_rect" : [ 162.0, 791.0, 219.5, 22.0 ],
									"text" : "t 1 l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-87",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 162.0, 707.0, 85.0, 22.0 ],
									"text" : "o.pack /voices"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-79",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 162.0, 675.0, 68.0, 22.0 ],
									"saved_object_attributes" : 									{
										"filename" : "shuffle.js",
										"parameter_enable" : 0
									}
,
									"text" : "js shuffle.js"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-78",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 162.0, 641.0, 114.5, 22.0 ],
									"text" : "o.route /voices"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-77",
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 162.0, 597.0, 150.0, 31.0 ],
									"text" : "/voices = [2, 3]"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-70",
									"linecount" : 2,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 162.0, 737.5, 219.5, 44.0 ],
									"text" : "/fm_voice = /voices[[ 0 ]],\n/delay_voice = /voices[[ 1 ]]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-63",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 385.5, 669.0, 79.0, 22.0 ],
									"text" : "o.pack /wave"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "FullPacket" ],
									"patching_rect" : [ 385.5, 603.0, 211.0, 22.0 ],
									"text" : "o.route /waves /weights"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-184",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 385.5, 637.0, 211.0, 22.0 ],
									"saved_object_attributes" : 									{
										"filename" : "weightedchoice.js",
										"parameter_enable" : 0
									}
,
									"text" : "js weightedchoice.js"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-62",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 162.0, 565.0, 242.5, 22.0 ],
									"text" : "t l l"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-61",
									"linecount" : 2,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 162.0, 511.0, 220.0, 44.0 ],
									"text" : "/waves = [1, 2, 3, 4],\n/weights = /per_angle_quadrant"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-57",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 101.0, 161.499922394752502, 114.5, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-56",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 196.5, 131.49989652633667, 164.0, 22.0 ],
									"text" : "o.select /per_angle_quadrant"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-53",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 196.5, 99.49989652633667, 89.0, 22.0 ],
									"text" : "o.route /frames"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-52",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 196.5, 67.749870657920837, 78.0, 22.0 ],
									"text" : "r player-stats"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-51",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 77.75, 968.0, 457.0, 22.0 ],
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-50",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 162.0, 481.0, 129.0, 22.0 ],
									"text" : "o.if /selected/delta != 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-49",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 101.0, 430.0, 80.0, 22.0 ],
									"text" : "o.select /prev"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 391.0, 193.249948263168335, 118.0, 22.0 ],
									"text" : "if $i1 == 1 then bang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-48",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 391.0, 161.499922394752502, 69.0, 22.0 ],
									"text" : "r game-init"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-46",
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 391.0, 273.0, 151.0, 23.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 112, 114, 101, 118, 47, 115, 101, 108, 101, 99, 116, 101, 100, 0, 0, 44, 105, 0, 0, -1, -1, -1, -1 ],
									"saved_bundle_length" : 44,
									"text" : "/prev/selected : -1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-45",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 101.0, 307.0, 309.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 101.0, 193.249948263168335, 154.0, 22.0 ],
									"text" : "o.if /selected == 0"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-41",
									"linecount" : 4,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 101.0, 337.499922394752502, 309.0, 70.0 ],
									"text" : "/prev/selected ??= -1,\n\n/selected/delta = /selected - /prev/selected,\n/prev/selected = /selected"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 101.0, 131.49989652633667, 87.0, 22.0 ],
									"text" : "r weapon-stats"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 77.75, 1308.0, 128.0, 22.0 ],
									"text" : "s all-voice-mod-values"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-104", 0 ],
									"source" : [ "obj-102", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-101", 0 ],
									"source" : [ "obj-104", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-105", 0 ],
									"source" : [ "obj-104", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-104", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-148", 0 ],
									"source" : [ "obj-117", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-153", 2 ],
									"source" : [ "obj-117", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"source" : [ "obj-117", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-124", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"midpoints" : [ 258.5, 251.5, 400.5, 251.5 ],
									"source" : [ "obj-143", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"midpoints" : [ 245.5, 252.0, 87.25, 252.0 ],
									"source" : [ "obj-143", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-124", 1 ],
									"source" : [ "obj-148", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-124", 0 ],
									"source" : [ "obj-153", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 0 ],
									"source" : [ "obj-184", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 1 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-184", 1 ],
									"source" : [ "obj-37", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-184", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-57", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-143", 0 ],
									"source" : [ "obj-42", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 1 ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-117", 0 ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 1 ],
									"midpoints" : [ 110.5, 461.0, 417.0, 461.0, 417.0, 300.0, 400.5, 300.0 ],
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"source" : [ "obj-49", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-102", 0 ],
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-57", 1 ],
									"source" : [ "obj-56", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-57", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 0 ],
									"source" : [ "obj-61", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-62", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-77", 0 ],
									"source" : [ "obj-62", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-153", 1 ],
									"midpoints" : [ 395.0, 768.999987000000033, 564.25, 768.999987000000033 ],
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-96", 0 ],
									"source" : [ "obj-70", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-78", 0 ],
									"source" : [ "obj-77", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-79", 0 ],
									"source" : [ "obj-78", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-87", 0 ],
									"source" : [ "obj-79", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-70", 0 ],
									"source" : [ "obj-87", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-153", 0 ],
									"midpoints" : [ 372.0, 850.999987000000033, 525.25, 850.999987000000033 ],
									"source" : [ "obj-96", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"midpoints" : [ 171.5, 845.5, 87.25, 845.5 ],
									"source" : [ "obj-96", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 357.0, 2415.0, 176.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p weapon-zero-effects-handling"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-453",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3322.484375134109541, 2889.577254772186279, 115.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 2029.500000000010004, 1116.523436302421487, 58.0, 20.0 ],
					"text" : "Voice 3",
					"textcolor" : [ 0.901956915855408, 0.901983857154846, 0.901968538761139, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-452",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3322.484375134109541, 2856.19487738609314, 115.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 2032.968750268224539, 600.617751121520996, 53.000000000000455, 20.0 ],
					"text" : "Voice 2",
					"textcolor" : [ 0.901956915855408, 0.901983857154846, 0.901968538761139, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-451",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3322.484375134109541, 2829.69487738609314, 115.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 2029.031249731790012, 83.458988606929779, 56.0, 20.0 ],
					"text" : "Voice 1",
					"textcolor" : [ 0.901956915855408, 0.901983857154846, 0.901968538761139, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-445",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 798.999999999999773, 2081.0, 129.0, 22.0 ],
					"text" : "r voice1-chorus-values"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-446",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "chorus~.maxpat",
					"numinlets" : 3,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 621.499999999999773, 2115.0, 374.0, 157.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1871.000000000004775, 105.458988606929779, 374.000000000000227, 154.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-447",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 798.999999999999773, 2475.0, 127.0, 22.0 ],
					"text" : "r voice1-reverb-values"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-448",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "reverb~.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "FullPacket", "signal" ],
					"patching_rect" : [ 621.499999999999773, 2501.31618869304657, 374.0, 153.36762261390686 ],
					"presentation" : 1,
					"presentation_rect" : [ 1871.000000000004775, 405.642414927482605, 374.0, 153.36762261390686 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-449",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 798.999999999999773, 2278.0, 122.0, 22.0 ],
					"text" : "r voice1-delay-values"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-450",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "delayZ~.maxpat",
					"numinlets" : 3,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 621.499999999999773, 2312.0, 374.0, 153.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1871.000000000004775, 257.458988606929779, 374.0, 153.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-444",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1595.484375134109996, 2081.0, 129.0, 22.0 ],
					"text" : "r voice2-chorus-values"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-443",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "chorus~.maxpat",
					"numinlets" : 3,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 1417.984375134109996, 2115.0, 374.0, 157.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1871.000000000004775, 622.617751121520996, 374.0, 157.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-441",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3984.937500536440893, 2481.411789298057556, 127.0, 22.0 ],
					"text" : "r voice5-reverb-values"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-440",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "reverb~.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "FullPacket", "signal" ],
					"patching_rect" : [ 3807.437500536440893, 2516.31618869304657, 374.0, 153.36762261390686 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-439",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3188.453125402330443, 2481.411789298057556, 127.0, 22.0 ],
					"text" : "r voice4-reverb-values"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-438",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "reverb~.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "FullPacket", "signal" ],
					"patching_rect" : [ 3010.953125402330443, 2516.31618869304657, 374.0, 153.36762261390686 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-434",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1595.484375134109996, 2475.0, 127.0, 22.0 ],
					"text" : "r voice2-reverb-values"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-435",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "reverb~.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "FullPacket", "signal" ],
					"patching_rect" : [ 1417.984375134109996, 2501.31618869304657, 374.0, 153.36762261390686 ],
					"presentation" : 1,
					"presentation_rect" : [ 1871.000000000004775, 923.617751121520996, 374.0, 153.36762261390686 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-436",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1595.484375134109996, 2278.0, 122.0, 22.0 ],
					"text" : "r voice2-delay-values"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-437",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "delayZ~.maxpat",
					"numinlets" : 3,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 1417.984375134109996, 2312.0, 374.0, 153.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1871.000000000004775, 774.617751121520996, 374.0, 153.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-433",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2391.968750268219992, 2479.0, 127.0, 22.0 ],
					"text" : "r voice3-reverb-values"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-432",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "reverb~.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "FullPacket", "signal" ],
					"patching_rect" : [ 2214.468750268219992, 2505.31618869304657, 374.0, 153.36762261390686 ],
					"presentation" : 1,
					"presentation_rect" : [ 1870.031249731789785, 1439.929224604843057, 374.0, 153.36762261390686 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-427",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 2219.0, 134.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-2",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 155.0, 219.661789517677789, 401.0, 24.0 ],
									"text" : "Initial Mixer values when the Max application is loaded."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-423",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 130.0, 118.0, 22.0 ],
									"text" : "if $i1 == 1 then bang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-424",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 100.0, 65.0, 22.0 ],
									"text" : "r menu-init"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-425",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 183.0, 130.0, 118.0, 22.0 ],
									"text" : "if $i1 == 1 then bang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-426",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 183.0, 100.0, 78.0, 22.0 ],
									"text" : "r music-reset"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-422",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 250.632326131584705, 93.0, 22.0 ],
									"text" : "s matrixctrl-msg"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-421",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 50.0, 219.661789517677789, 82.0, 22.0 ],
									"text" : "o.route /mixer"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-419",
									"linecount" : 2,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 168.264703517677845, 477.0, 36.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -56, 47, 109, 105, 120, 101, 114, 0, 0, 44, 105, 105, 100, 105, 105, 100, 105, 105, 100, 105, 105, 100, 105, 105, 100, 105, 105, 100, 105, 105, 100, 105, 105, 100, 105, 105, 100, 105, 105, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, -16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 63, -16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 63, -32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 63, -32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 63, -32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 1, 63, -32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 63, -16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 1, 63, -16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 63, -55, -103, -103, -103, -103, -103, -102, 0, 0, 0, 4, 0, 0, 0, 1, 63, -55, -103, -103, -103, -103, -103, -102 ],
									"saved_bundle_length" : 220,
									"text" : "/mixer : [0, 0, 1., 0, 1, 1., 1, 0, 0.5, 1, 1, 0.5, 2, 0, 0.5, 2, 1, 0.5, 3, 0, 1., 3, 1, 1., 4, 0, 0.2, 4, 1, 0.2]"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-421", 0 ],
									"source" : [ "obj-419", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-422", 0 ],
									"source" : [ "obj-421", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-419", 0 ],
									"source" : [ "obj-423", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-423", 0 ],
									"source" : [ "obj-424", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-419", 0 ],
									"midpoints" : [ 192.5, 159.632351758838922, 59.5, 159.632351758838922 ],
									"source" : [ "obj-425", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-425", 0 ],
									"source" : [ "obj-426", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 32.0, 1996.0, 111.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p init-mixer-on-load"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-374",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2391.968750268219992, 2079.0, 129.0, 22.0 ],
					"text" : "r voice3-chorus-values"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-373",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "chorus~.maxpat",
					"numinlets" : 3,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 2214.468750268219992, 2115.0, 374.0, 157.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1870.031249731789785, 1138.523436302421487, 374.0, 157.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-372",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2391.968750268219992, 2282.0, 122.0, 22.0 ],
					"text" : "r voice3-delay-values"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-368",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3188.453125402330443, 2273.411789298057556, 122.0, 22.0 ],
					"text" : "r voice4-delay-values"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-363",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 1652.0, -81.0, 1682.0, 749.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-47",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 305.5, 75.0, 210.0, 42.0 ],
									"text" : "Initial values for all effects for Main Menu music."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 771.0, 536.0, 139.0, 22.0 ],
									"text" : "s all-voice-reverb-values"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-15",
									"linecount" : 28,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 771.0, 155.0, 222.0, 369.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 49, 47, 114, 101, 118, 101, 114, 98, 47, 109, 105, 120, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 50, 47, 114, 101, 118, 101, 114, 98, 47, 109, 105, 120, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 30, 0, 0, 0, 32, 47, 50, 47, 114, 101, 118, 101, 114, 98, 47, 98, 97, 110, 100, 119, 105, 100, 116, 104, 0, 44, 100, 0, 0, 63, -32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 47, 50, 47, 114, 101, 118, 101, 114, 98, 47, 100, 97, 109, 112, 105, 110, 103, 0, 0, 0, 44, 100, 0, 0, 63, -26, 102, 102, 102, 102, 102, 102, 0, 0, 0, 28, 47, 50, 47, 114, 101, 118, 101, 114, 98, 47, 115, 112, 114, 101, 97, 100, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 30, 0, 0, 0, 28, 47, 50, 47, 114, 101, 118, 101, 114, 98, 47, 100, 114, 121, 0, 0, 0, 44, 100, 0, 0, 63, -29, 51, 51, 51, 51, 51, 51, 0, 0, 0, 24, 47, 50, 47, 114, 101, 118, 101, 114, 98, 47, 114, 111, 111, 109, 0, 0, 44, 105, 0, 0, 0, 0, 0, 60, 0, 0, 0, 24, 47, 50, 47, 114, 101, 118, 101, 114, 98, 47, 116, 105, 109, 101, 0, 0, 44, 105, 0, 0, 0, 0, 0, 10, 0, 0, 0, 28, 47, 50, 47, 114, 101, 118, 101, 114, 98, 47, 101, 97, 114, 108, 121, 0, 44, 100, 0, 0, 63, -48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 50, 47, 114, 101, 118, 101, 114, 98, 47, 100, 101, 99, 97, 121, 0, 44, 100, 0, 0, 63, -48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 51, 47, 114, 101, 118, 101, 114, 98, 47, 109, 105, 120, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 15, 0, 0, 0, 32, 47, 51, 47, 114, 101, 118, 101, 114, 98, 47, 98, 97, 110, 100, 119, 105, 100, 116, 104, 0, 44, 100, 0, 0, 63, -32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 47, 51, 47, 114, 101, 118, 101, 114, 98, 47, 100, 97, 109, 112, 105, 110, 103, 0, 0, 0, 44, 100, 0, 0, 63, -45, 51, 51, 51, 51, 51, 51, 0, 0, 0, 28, 47, 51, 47, 114, 101, 118, 101, 114, 98, 47, 115, 112, 114, 101, 97, 100, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 70, 0, 0, 0, 28, 47, 51, 47, 114, 101, 118, 101, 114, 98, 47, 100, 114, 121, 0, 0, 0, 44, 100, 0, 0, 63, -55, -103, -103, -103, -103, -103, -102, 0, 0, 0, 24, 47, 51, 47, 114, 101, 118, 101, 114, 98, 47, 114, 111, 111, 109, 0, 0, 44, 105, 0, 0, 0, 0, 0, 75, 0, 0, 0, 24, 47, 51, 47, 114, 101, 118, 101, 114, 98, 47, 116, 105, 109, 101, 0, 0, 44, 105, 0, 0, 0, 0, 0, 30, 0, 0, 0, 28, 47, 51, 47, 114, 101, 118, 101, 114, 98, 47, 101, 97, 114, 108, 121, 0, 44, 100, 0, 0, 63, -48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 51, 47, 114, 101, 118, 101, 114, 98, 47, 100, 101, 99, 97, 121, 0, 44, 100, 0, 0, 63, -55, -103, -103, -103, -103, -103, -102, 0, 0, 0, 24, 47, 52, 47, 114, 101, 118, 101, 114, 98, 47, 109, 105, 120, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 45, 0, 0, 0, 32, 47, 52, 47, 114, 101, 118, 101, 114, 98, 47, 98, 97, 110, 100, 119, 105, 100, 116, 104, 0, 44, 100, 0, 0, 63, -55, -103, -103, -103, -103, -103, -102, 0, 0, 0, 32, 47, 52, 47, 114, 101, 118, 101, 114, 98, 47, 100, 97, 109, 112, 105, 110, 103, 0, 0, 0, 44, 100, 0, 0, 63, -26, 102, 102, 102, 102, 102, 102, 0, 0, 0, 28, 47, 52, 47, 114, 101, 118, 101, 114, 98, 47, 115, 112, 114, 101, 97, 100, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 15, 0, 0, 0, 28, 47, 52, 47, 114, 101, 118, 101, 114, 98, 47, 100, 114, 121, 0, 0, 0, 44, 100, 0, 0, 63, -32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 52, 47, 114, 101, 118, 101, 114, 98, 47, 114, 111, 111, 109, 0, 0, 44, 105, 0, 0, 0, 0, 0, 30, 0, 0, 0, 24, 47, 52, 47, 114, 101, 118, 101, 114, 98, 47, 116, 105, 109, 101, 0, 0, 44, 105, 0, 0, 0, 0, 0, 11, 0, 0, 0, 28, 47, 52, 47, 114, 101, 118, 101, 114, 98, 47, 101, 97, 114, 108, 121, 0, 44, 100, 0, 0, 63, -71, -103, -103, -103, -103, -103, -102, 0, 0, 0, 28, 47, 52, 47, 114, 101, 118, 101, 114, 98, 47, 100, 101, 99, 97, 121, 0, 44, 100, 0, 0, 63, -55, -103, -103, -103, -103, -103, -102 ],
									"saved_bundle_length" : 896,
									"text" : "/1/reverb/mix : 0,\n/2/reverb/mix : 30,\n/2/reverb/bandwidth : 0.5,\n/2/reverb/damping : 0.7,\n/2/reverb/spread : 30,\n/2/reverb/dry : 0.6,\n/2/reverb/room : 60,\n/2/reverb/time : 10,\n/2/reverb/early : 0.25,\n/2/reverb/decay : 0.25,\n/3/reverb/mix : 15,\n/3/reverb/bandwidth : 0.5,\n/3/reverb/damping : 0.3,\n/3/reverb/spread : 70,\n/3/reverb/dry : 0.2,\n/3/reverb/room : 75,\n/3/reverb/time : 30,\n/3/reverb/early : 0.25,\n/3/reverb/decay : 0.2,\n/4/reverb/mix : 45,\n/4/reverb/bandwidth : 0.2,\n/4/reverb/damping : 0.7,\n/4/reverb/spread : 15,\n/4/reverb/dry : 0.5,\n/4/reverb/room : 30,\n/4/reverb/time : 11,\n/4/reverb/early : 0.1,\n/4/reverb/decay : 0.2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 524.333333333333258, 303.0, 141.0, 22.0 ],
									"text" : "s all-voice-chorus-values"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-13",
									"linecount" : 10,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 524.333333333333258, 155.0, 222.0, 139.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 49, 47, 99, 104, 111, 114, 117, 115, 47, 109, 105, 120, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 50, 47, 99, 104, 111, 114, 117, 115, 47, 109, 105, 120, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 51, 47, 99, 104, 111, 114, 117, 115, 47, 109, 105, 120, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 28, 0, 0, 0, 28, 47, 51, 47, 99, 104, 111, 114, 117, 115, 47, 114, 97, 116, 101, 0, 0, 44, 100, 0, 0, 64, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 51, 47, 99, 104, 111, 114, 117, 115, 47, 100, 101, 112, 116, 104, 0, 44, 100, 0, 0, 63, -52, 40, -11, -62, -113, 92, 41, 0, 0, 0, 28, 47, 51, 47, 99, 104, 111, 114, 117, 115, 47, 103, 97, 105, 110, 0, 0, 44, 100, 0, 0, 63, -12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 51, 47, 99, 104, 111, 114, 117, 115, 47, 108, 101, 102, 116, 47, 109, 115, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 28, 0, 0, 0, 36, 47, 51, 47, 99, 104, 111, 114, 117, 115, 47, 108, 101, 102, 116, 47, 102, 101, 101, 100, 98, 97, 99, 107, 0, 44, 100, 0, 0, 63, -23, -103, -103, -103, -103, -103, -102, 0, 0, 0, 28, 47, 51, 47, 99, 104, 111, 114, 117, 115, 47, 114, 105, 103, 104, 116, 47, 109, 115, 0, 0, 44, 105, 0, 0, 0, 0, 0, 28, 0, 0, 0, 40, 47, 51, 47, 99, 104, 111, 114, 117, 115, 47, 114, 105, 103, 104, 116, 47, 102, 101, 101, 100, 98, 97, 99, 107, 0, 0, 0, 0, 44, 100, 0, 0, 63, -45, 51, 51, 51, 51, 51, 51 ],
									"saved_bundle_length" : 344,
									"text" : "/1/chorus/mix : 0,\n/2/chorus/mix : 0,\n/3/chorus/mix : 28,\n/3/chorus/rate : 2.5,\n/3/chorus/depth : 0.22,\n/3/chorus/gain : 1.25,\n/3/chorus/left/ms : 28,\n/3/chorus/left/feedback : 0.8,\n/3/chorus/right/ms : 28,\n/3/chorus/right/feedback : 0.3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 277.666666666666629, 303.0, 133.0, 22.0 ],
									"text" : "s all-voice-delay-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "bang", "bang", "bang", "bang" ],
									"patching_rect" : [ 31.0, 127.0, 759.0, 22.0 ],
									"text" : "b 4"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-8",
									"linecount" : 10,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 277.666666666666629, 155.0, 226.0, 139.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 49, 47, 100, 101, 108, 97, 121, 47, 109, 105, 120, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 50, 47, 100, 101, 108, 97, 121, 47, 109, 105, 120, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 22, 0, 0, 0, 20, 47, 50, 47, 100, 101, 108, 97, 121, 47, 109, 115, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 32, 47, 50, 47, 100, 101, 108, 97, 121, 47, 102, 101, 101, 100, 98, 97, 99, 107, 0, 0, 0, 44, 100, 0, 0, 63, -48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 47, 50, 47, 100, 101, 108, 97, 121, 47, 97, 117, 116, 111, 109, 97, 116, 105, 111, 110, 47, 101, 110, 97, 98, 108, 101, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 51, 47, 100, 101, 108, 97, 121, 47, 109, 105, 120, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 52, 47, 100, 101, 108, 97, 121, 47, 109, 105, 120, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 33, 0, 0, 0, 20, 47, 52, 47, 100, 101, 108, 97, 121, 47, 109, 115, 0, 44, 105, 0, 0, 0, 0, 0, 60, 0, 0, 0, 32, 47, 52, 47, 100, 101, 108, 97, 121, 47, 102, 101, 101, 100, 98, 97, 99, 107, 0, 0, 0, 44, 100, 0, 0, 63, -45, 51, 51, 51, 51, 51, 51, 0, 0, 0, 36, 47, 52, 47, 100, 101, 108, 97, 121, 47, 97, 117, 116, 111, 109, 97, 116, 105, 111, 110, 47, 101, 110, 97, 98, 108, 101, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0 ],
									"saved_bundle_length" : 328,
									"text" : "/1/delay/mix : 0,\n/2/delay/mix : 22,\n/2/delay/ms : 100,\n/2/delay/feedback : 0.25,\n/2/delay/automation/enable : 0,\n/3/delay/mix : 0,\n/4/delay/mix : 33,\n/4/delay/ms : 60,\n/4/delay/feedback : 0.3,\n/4/delay/automation/enable : 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 31.0, 95.0, 118.0, 22.0 ],
									"text" : "if $i1 == 1 then bang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 101.0, 57.0, 65.0, 22.0 ],
									"text" : "r menu-init"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 31.0, 57.0, 58.0, 22.0 ],
									"text" : "r max-init"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 31.0, 240.0, 128.0, 22.0 ],
									"text" : "s all-voice-mod-values"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-2",
									"linecount" : 5,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 31.0, 155.0, 187.0, 75.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 49, 47, 102, 109, 47, 119, 97, 118, 101, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 50, 47, 102, 109, 47, 119, 97, 118, 101, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 28, 47, 50, 47, 102, 109, 47, 102, 97, 99, 116, 111, 114, 0, 0, 0, 0, 44, 100, 0, 0, 63, -32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 50, 47, 102, 109, 47, 100, 101, 112, 116, 104, 0, 44, 100, 0, 0, 63, -55, -103, -103, -103, -103, -103, -102, 0, 0, 0, 20, 47, 51, 47, 102, 109, 47, 119, 97, 118, 101, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0 ],
									"saved_bundle_length" : 148,
									"text" : "/1/fm/wave : 0,\n/2/fm/wave : 1,\n/2/fm/factor : 0.5,\n/2/fm/depth : 0.2,\n/3/fm/wave : 0"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-11", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-11", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-11", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"midpoints" : [ 110.5, 86.5, 40.5, 86.5 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 430.0, 1995.25, 144.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p load-main-menu-effects"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-353",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2457.668750268223903, 971.558772921562195, 117.0, 22.0 ],
					"text" : "r voice3-mod-values"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-352",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1661.509375205635479, 971.558772921562195, 117.0, 22.0 ],
					"text" : "r voice2-mod-values"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-351",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 862.699999999999932, 971.558772921562195, 117.0, 22.0 ],
					"text" : "r voice1-mod-values"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-344",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "delayZ~.maxpat",
					"numinlets" : 3,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 3807.437500536440893, 2314.911789298057556, 374.0, 153.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-340",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "delayZ~.maxpat",
					"numinlets" : 3,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 3010.953125402330443, 2314.911789298057556, 374.0, 153.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-316",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2336.06875026822172, 971.558772921562195, 121.0, 22.0 ],
					"text" : "r voice3-scale-values"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-315",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1539.746875169872737, 971.558772921562195, 121.0, 22.0 ],
					"text" : "r voice2-scale-values"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-311",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 742.099999999999909, 971.558772921562195, 121.0, 22.0 ],
					"text" : "r voice1-scale-values"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-309",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2974.401041800775602, 262.73789119720459, 130.0, 22.0 ],
					"text" : "if $i1 != 0 then 1 else 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-291",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2232.785416934894329, 971.558772921562195, 95.0, 22.0 ],
					"text" : "r voice3-on-load"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-294",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2231.549396669068301, 905.70596182346344, 131.0, 22.0 ],
					"text" : "r voice3-pattern-values"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-262",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 637.416666666666515, 971.558772921562195, 95.0, 22.0 ],
					"text" : "r voice1-on-load"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-266",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 647.303423569591132, 905.70596182346344, 131.0, 22.0 ],
					"text" : "r voice1-pattern-values"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-246",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1433.459999999999809, 971.558772921562195, 95.0, 22.0 ],
					"text" : "r voice2-on-load"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-247",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1440.430090236257911, 905.70596182346344, 131.0, 22.0 ],
					"text" : "r voice2-pattern-values"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-199",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1668.953125402330443, 54.170437932014465, 91.0, 22.0 ],
					"text" : "r matrixctrl-msg"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-197",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 1989.0, -41.0, 1879.0, 1036.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 271.5, 507.0, 64.0, 22.0 ],
									"text" : "line 0.5 10"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 271.5, 475.0, 45.0, 22.0 ],
									"text" : "$1 250"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 144.0, 475.0, 45.0, 22.0 ],
									"text" : "$1 250"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 144.0, 507.0, 64.0, 22.0 ],
									"text" : "line 0.5 10"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 144.0, 548.0, 146.5, 22.0 ],
									"text" : "o.pack /pan/left /pan/right"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "FullPacket" ],
									"patching_rect" : [ 144.0, 442.0, 274.0, 22.0 ],
									"text" : "o.route /pan/left /pan/right"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-30",
									"linecount" : 12,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 633.0, 316.0, 326.0, 221.0 ],
									"text" : "Handles track panning for voices 2 and 3.\n\nTrack panning is based on Player's horizontal position. \n\nIf the Player is on the left side of the screen, voice 2 will be on the right channel and voice 3 will be on the left channel. \n\nIf the Player is on the right side of the screen, voice 2 will be on the left channel and voice 3 will be on the right channel."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 144.0, 151.0, 133.0, 22.0 ],
									"text" : "if $i1 == 0 then 0 else 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 144.0, 119.0, 65.0, 22.0 ],
									"text" : "r game-init"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 144.0, 213.0, 39.0, 22.0 ],
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 144.0, 732.0, 125.0, 22.0 ],
									"text" : "o.route /pan/matrixctrl"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 144.0, 767.0, 93.0, 22.0 ],
									"text" : "s matrixctrl-msg"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-20",
									"linecount" : 9,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 144.0, 583.0, 428.0, 134.0 ],
									"text" : "/voice/2 = [/pan/left, /pan/right],\n/voice/3 = [/pan/right, /pan/left],\n\n/pan/matrixctrl = [\n  1, 0, /voice/2[[ 0 ]],\n  1, 1, /voice/2[[ 1 ]],\n  2, 0, /voice/3[[ 0 ]],\n  2, 1, /voice/3[[ 1]]\n]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 144.0, 410.0, 77.0, 22.0 ],
									"text" : "o.select /pan"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 144.0, 281.0, 136.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 261.0, 246.0, 114.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "FullPacket" ],
									"patching_rect" : [ 261.0, 213.0, 209.0, 22.0 ],
									"text" : "o.select /screen_width /screen_height"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 261.0, 182.0, 81.0, 22.0 ],
									"text" : "r control-stats"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-4",
									"linecount" : 5,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 144.0, 316.0, 473.0, 83.0 ],
									"text" : "/x = /position[[ 0 ]],\n/y = /position[[ 1 ]],\n\n/pan/left = scale(/x, 0., /screen_width, 0., 1.),\n/pan/right = 1. - /pan/left"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 144.0, 246.0, 98.0, 22.0 ],
									"text" : "o.select /position"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 164.0, 182.0, 78.0, 22.0 ],
									"text" : "r player-stats"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 1 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 1 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-31", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 1 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 1 ],
									"source" : [ "obj-9", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 32.0, 2265.382352000000083, 188.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p player-movement-track-panning"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-80",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 3807.437500536440893, 2273.411789298057556, 78.0, 22.0 ],
					"text" : "overdrive~ 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-79",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 3010.953125402330443, 2273.411789298057556, 78.0, 22.0 ],
					"text" : "overdrive~ 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4212.541667262717965, 971.470562219619751, 77.0, 22.0 ],
					"text" : "r metro-reset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3416.286458735663928, 971.470562219619751, 77.0, 22.0 ],
					"text" : "r metro-reset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 1474.0, -211.0, 2041.0, 1319.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-8",
									"linecount" : 5,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 99.0, 500.0, 206.0, 82.0 ],
									"text" : "/modes = [2, 3],\n/weights = [\n  /frames/per_weapon[[ 0 ]],\n  /frames/per_weapon[[ 1 ]]\n]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "FullPacket" ],
									"patching_rect" : [ 99.0, 597.5, 136.0, 22.0 ],
									"text" : "o.route /modes /weights"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 99.0, 632.5, 136.0, 22.0 ],
									"saved_object_attributes" : 									{
										"filename" : "weightedchoice.js",
										"parameter_enable" : 0
									}
,
									"text" : "js weightedchoice.js"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-129",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 382.0, 1301.0, 323.0, 42.0 ],
									"text" : "Distance modifier functions are defined in the patternmodifier.js file as modes 2 and 3"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-128",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 276.0, 1001.0, 160.0, 42.0 ],
									"text" : "Debug print distance modifier type"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-127",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 688.25, 591.0, 195.0, 78.0 ],
									"text" : "Choose voice to modify based on number of current projectiles from player and enemies"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-83",
									"linecount" : 6,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 478.25, 24.0, 366.0, 114.0 ],
									"text" : "Converts steps to leaps or leaps to steps based on the number of projectiles fired from each weapon.\n\nWeapon 0 converts leaps to steps, Weapon 1 converts steps to leaps."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-117",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 38.0, 415.0, 80.0, 22.0 ],
									"text" : "o.select /prev"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-115",
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 364.0, 350.0, 176.0, 31.0 ],
									"text" : "/prev/1/count = /1/count"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-114",
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 38.0, 350.0, 177.0, 31.0 ],
									"text" : "/prev/0/count = /0/count"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-109",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 364.0, 317.0, 108.0, 22.0 ],
									"text" : "o.if /delta > /thresh"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-108",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 38.0, 317.0, 108.0, 22.0 ],
									"text" : "o.if /delta > /thresh"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-104",
									"linecount" : 4,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 364.0, 234.147132158279419, 328.0, 70.0 ],
									"text" : "/1/count = /hits_per_weapon[[ 1 ]],\n\n/delta = /1/count - /prev/1/count,\n/thresh = 100 - /percent/one_over_two"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-103",
									"linecount" : 4,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 38.0, 234.147132158279419, 267.0, 70.0 ],
									"text" : "/0/count = /hits_per_weapon[[ 0 ]],\n\n/delta = /0/count - /prev/0/count,\n/thresh = (/percent/one_over_two * 2)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-99",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 38.0, 198.0, 345.0, 22.0 ],
									"text" : "o.if /selected == 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-96",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 318.0, 70.0, 118.0, 22.0 ],
									"text" : "if $i1 == 1 then bang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-94",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 318.0, 36.5, 65.0, 22.0 ],
									"text" : "r game-init"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-93",
									"linecount" : 2,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 318.0, 101.0, 150.0, 36.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 112, 114, 101, 118, 47, 48, 47, 99, 111, 117, 110, 116, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 112, 114, 101, 118, 47, 49, 47, 99, 111, 117, 110, 116, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0 ],
									"saved_bundle_length" : 72,
									"text" : "/prev/0/count : 0,\n/prev/1/count : 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-90",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 38.0, 160.0, 299.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-88",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 38.0, 124.0, 87.0, 22.0 ],
									"text" : "r weapon-stats"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 292.0, 1114.0, 121.0, 22.0 ],
									"text" : "o.route /distancemod"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 292.0, 1082.0, 86.0, 22.0 ],
									"text" : "o.route /debug"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-503",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 292.0, 1054.0, 128.0, 22.0 ],
									"text" : "r debug-enable-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 292.0, 1145.0, 174.0, 22.0 ],
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-55",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 446.999999999999886, 1011.0, 98.666666666666742, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-54",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 526.666666666666629, 980.0, 98.666666666666742, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-53",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "FullPacket" ],
									"patching_rect" : [ 447.0, 945.0, 258.0, 22.0 ],
									"text" : "o.select /update_mode /voice_num /extra_args"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-52",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 99.0, 912.0, 367.0, 22.0 ],
									"text" : "t l l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-73",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 447.0, 1048.0, 68.5, 22.0 ],
									"text" : "t l b"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-72",
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 496.5, 1080.0, 199.0, 23.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 47, 116, 121, 112, 101, 0, 0, 0, 44, 115, 0, 0, 100, 105, 115, 116, 97, 110, 99, 101, 45, 109, 111, 100, 105, 102, 105, 101, 114, 0, 0, 0 ],
									"saved_bundle_length" : 52,
									"text" : "/type : \"distance-modifier\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-70",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 447.0, 1114.0, 68.5, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-51",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 292.0, 1177.0, 42.0, 22.0 ],
									"text" : "o.print"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-92",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 99.000000000000455, 1476.5, 97.0, 22.0 ],
									"text" : "o.route /selected"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-111",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 99.000000000000455, 1512.36762261390686, 142.0, 22.0 ],
									"text" : "s all-voice-pattern-values"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-112",
									"linecount" : 3,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 99.000000000000455, 1408.0, 476.0, 57.0 ],
									"text" : "assign(\"/selected\" + \"/\" + /voice_num + \"/pattern/values\", /values),\nassign(\"/selected\" + \"/\" + /voice_num + \"/pattern/sustain\", /sustain),\ndelete(/values, /sustain)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-110",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 99.250000000000455, 1372.0, 274.999999999999545, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-374",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 99.250000000000455, 1336.0, 210.999999999999545, 22.0 ],
									"text" : "o.pack /values /sustain"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-50",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 99.0, 710.0, 213.0, 22.0 ],
									"text" : "t l b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 483.0, 710.0, 79.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-46",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "FullPacket" ],
									"patching_rect" : [ 482.5, 678.0, 138.0, 22.0 ],
									"text" : "o.select /voices /weights"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-45",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 293.0, 746.0, 209.0, 22.0 ],
									"text" : "o.var"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-44",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 99.0, 878.0, 213.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 293.0, 847.0, 109.0, 22.0 ],
									"text" : "o.pack /voice_num"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "FullPacket" ],
									"patching_rect" : [ 293.0, 778.5, 134.0, 22.0 ],
									"text" : "o.route /voices /weights"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-184",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 293.0, 813.5, 134.0, 22.0 ],
									"saved_object_attributes" : 									{
										"filename" : "weightedchoice.js",
										"parameter_enable" : 0
									}
,
									"text" : "js weightedchoice.js"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-38",
									"linecount" : 5,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 482.5, 590.0, 200.0, 80.0 ],
									"text" : "/voices = [2, 3],\n/weights = [\n  /player/alive_projectiles,\n  /enemy/alive_projectiles\n]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 482.5, 559.0, 51.0, 22.0 ],
									"text" : "o.flatten"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 482.5, 530.0, 180.0, 22.0 ],
									"text" : "o.pack /player /enemy"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 643.5, 500.0, 142.0, 22.0 ],
									"text" : "o.select /alive_projectiles"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 482.5, 500.0, 142.0, 22.0 ],
									"text" : "o.select /alive_projectiles"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 643.5, 469.0, 81.0, 22.0 ],
									"text" : "r enemy-stats"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 482.5, 469.0, 78.0, 22.0 ],
									"text" : "r player-stats"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 99.0, 668.0, 124.0, 22.0 ],
									"text" : "o.pack /update_mode"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-86",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 99.0, 847.0, 56.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-95",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 136.0, 813.5, 111.0, 22.0 ],
									"text" : "r all-voice-dumpout"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-107",
									"linecount" : 2,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 99.0, 1210.5, 329.0, 46.0 ],
									"text" : "/values = value(\"/\" + /voice_num + \"/values\"),\n/sustain = value(\"/\" + /voice_num + \"/sustain\")"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-375",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "FullPacket" ],
									"patching_rect" : [ 99.0, 1268.0, 275.0, 22.0 ],
									"text" : "o.route /values /sustain /update_mode /extra_args"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-367",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 99.000000000000455, 1301.0, 210.999999999999545, 22.0 ],
									"saved_object_attributes" : 									{
										"filename" : "patternmodifier.js",
										"parameter_enable" : 0
									}
,
									"text" : "js patternmodifier.js"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-108", 0 ],
									"source" : [ "obj-103", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-109", 0 ],
									"source" : [ "obj-104", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-375", 0 ],
									"source" : [ "obj-107", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-114", 0 ],
									"source" : [ "obj-108", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-115", 0 ],
									"source" : [ "obj-109", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-112", 0 ],
									"source" : [ "obj-110", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-92", 0 ],
									"source" : [ "obj-112", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-117", 0 ],
									"source" : [ "obj-114", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-117", 0 ],
									"midpoints" : [ 373.5, 404.0, 47.5, 404.0 ],
									"source" : [ "obj-115", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-117", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-90", 1 ],
									"midpoints" : [ 47.5, 446.0, 716.5, 446.0, 716.5, 149.0, 327.5, 149.0 ],
									"source" : [ "obj-117", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-184", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 1 ],
									"source" : [ "obj-2", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 1 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-374", 1 ],
									"source" : [ "obj-367", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-374", 0 ],
									"source" : [ "obj-367", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-184", 1 ],
									"source" : [ "obj-37", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-184", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-110", 0 ],
									"source" : [ "obj-374", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-110", 1 ],
									"source" : [ "obj-375", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-367", 3 ],
									"source" : [ "obj-375", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-367", 2 ],
									"source" : [ "obj-375", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-367", 1 ],
									"source" : [ "obj-375", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-367", 0 ],
									"source" : [ "obj-375", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 1 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-52", 0 ],
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 1 ],
									"source" : [ "obj-46", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 1 ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"source" : [ "obj-50", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-86", 0 ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-503", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-107", 0 ],
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"source" : [ "obj-52", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 1 ],
									"source" : [ "obj-53", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 0 ],
									"source" : [ "obj-53", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 0 ],
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 1 ],
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-73", 0 ],
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 1 ],
									"source" : [ "obj-70", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-70", 1 ],
									"source" : [ "obj-72", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-70", 0 ],
									"source" : [ "obj-73", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-72", 0 ],
									"source" : [ "obj-73", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"source" : [ "obj-86", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-90", 0 ],
									"source" : [ "obj-88", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-99", 0 ],
									"source" : [ "obj-90", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-111", 0 ],
									"source" : [ "obj-92", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-90", 1 ],
									"source" : [ "obj-93", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-96", 0 ],
									"source" : [ "obj-94", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-86", 1 ],
									"source" : [ "obj-95", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-93", 0 ],
									"source" : [ "obj-96", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-103", 0 ],
									"source" : [ "obj-99", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-104", 0 ],
									"source" : [ "obj-99", 1 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 357.0, 2298.779438000000027, 211.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p player-firing-distance-leaps-vs-steps"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1239.871952772140503, 143.417399048805237, 79.0, 22.0 ],
					"text" : "s metro-reset"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.098038777709007, 0.098041713237762, 0.09804005920887, 1.0 ],
					"blinkcolor" : [ 0.986251831054688, 0.007236152887344, 0.027423052117229, 1.0 ],
					"id" : "obj-50",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.999995052814484, 1.0, 1.0, 1.0 ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1239.871952772140503, 86.0, 46.006094455718994, 46.006094455718994 ],
					"presentation" : 1,
					"presentation_rect" : [ 1687.995612947145673, 1554.0, 46.006094455718994, 46.006094455718994 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-46",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2783.5, 2747.69487738609314, 98.0, 33.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 1602.077826877434745, 1560.503047227859497, 88.0, 33.0 ],
					"text" : "Hard Tempo Reset",
					"textcolor" : [ 0.999995052814484, 1.0, 1.0, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2700.868750268227814, 971.558772921562195, 77.0, 22.0 ],
					"text" : "r metro-reset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1103.900000000000091, 971.558772921562195, 77.0, 22.0 ],
					"text" : "r metro-reset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 757.263423569591396, 115.506019353866577, 98.0, 22.0 ],
					"text" : "if $i1 == 1 then 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 757.263423569591396, 88.506019353866577, 78.0, 22.0 ],
					"text" : "r music-reset"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-5",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "delayZ~.maxpat",
					"numinlets" : 3,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 2214.468750268219992, 2316.0, 374.0, 153.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1870.031249731789785, 1290.523436302421487, 374.0, 153.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-406",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3479.998958628375021, 292.685125946998596, 118.0, 22.0 ],
					"text" : "if $i1 == 1 then bang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-405",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3479.998958628375021, 265.685125946998596, 78.0, 22.0 ],
					"text" : "r music-reset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-404",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 2290.0, 113.0, 1060.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-2",
									"linecount" : 6,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 335.0, 147.382351517677307, 233.0, 114.0 ],
									"text" : "This value is 1 when \"Restart\" is selected from the Death Menu screen. This resets various music values, such as reloading the patterstorage file and re-initializing mixer values."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-360",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.199999999999989, 100.0, 81.0, 22.0 ],
									"text" : "r control-stats"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-358",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 133.0, 368.5, 80.0, 22.0 ],
									"text" : "s music-reset"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-357",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 133.0, 337.25, 117.0, 22.0 ],
									"text" : "o.route /reset_music"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-356",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.199999999999989, 133.882351517677307, 107.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-355",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 50.0, 261.5, 102.0, 22.0 ],
									"text" : "o.select /prev"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-354",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 133.0, 306.5, 71.0, 22.0 ],
									"text" : "o.if /diff != 0"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-353",
									"linecount" : 5,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 50.199999999999989, 162.882351517677307, 262.0, 83.0 ],
									"text" : "/reset_music ??= 0,\n/prev/reset ??= 0,\n\n/diff = /prev/reset - /reset_music,\n/prev/reset = /reset_music"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-355", 0 ],
									"source" : [ "obj-353", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-357", 0 ],
									"source" : [ "obj-354", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-354", 0 ],
									"source" : [ "obj-355", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-356", 1 ],
									"midpoints" : [ 59.5, 293.5, 324.599999999999966, 293.5, 324.599999999999966, 122.882351517677307, 147.699999999999989, 122.882351517677307 ],
									"source" : [ "obj-355", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-353", 0 ],
									"source" : [ "obj-356", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-358", 0 ],
									"source" : [ "obj-357", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-356", 0 ],
									"source" : [ "obj-360", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 250.0, 2008.0, 111.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p send-music-reset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-403",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 1474.0, -211.0, 2492.0, 1319.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-74",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 363.0, 1587.0, 96.0, 60.0 ],
									"text" : "Debug print Key-change variables"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-73",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 837.0, 1107.5, 224.0, 78.0 ],
									"text" : "Select a new Key based on how many accidental projectiles the player has collided with. "
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-72",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 105.0, 1129.5, 224.0, 42.0 ],
									"text" : "Send new Melody group to the Game Melody manager"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-71",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 248.5, 665.999974131584167, 128.0, 60.0 ],
									"text" : "Randomly select new melody group"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 18.0,
									"id" : "obj-70",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 370.0, 40.617596745491028, 290.0, 47.0 ],
									"text" : "Update the Melody group and Key after 2 in-game Special Events"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 254.0, 1090.999974131584167, 117.0, 22.0 ],
									"text" : "s on-melody-change"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-67",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 105.0, 1059.0, 168.0, 22.0 ],
									"text" : "t l b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 469.0, 1647.0, 111.0, 22.0 ],
									"text" : "o.route /keychange"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-65",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 469.0, 1615.0, 86.0, 22.0 ],
									"text" : "o.route /debug"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-503",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 469.0, 1587.0, 128.0, 22.0 ],
									"text" : "r debug-enable-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-66",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 469.0, 1678.0, 174.0, 22.0 ],
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-51",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 469.0, 1710.0, 42.0, 22.0 ],
									"text" : "o.print"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-63",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 624.0, 1648.0, 48.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-62",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 624.0, 1533.0, 116.0, 22.0 ],
									"text" : "o.select /pattern/key"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-59",
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 653.0, 1618.499974131584167, 158.0, 23.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 116, 121, 112, 101, 0, 0, 0, 44, 115, 0, 0, 99, 104, 97, 110, 103, 101, 45, 107, 101, 121, 0, 0 ],
									"saved_bundle_length" : 44,
									"text" : "/type : \"change-key\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-57",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 624.0, 1587.0, 48.0, 22.0 ],
									"text" : "t l b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 467.0, 1533.0, 142.0, 22.0 ],
									"text" : "s all-voice-pattern-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 467.0, 1499.499974131584167, 176.0, 22.0 ],
									"text" : "o.route /selected"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-36",
									"linecount" : 8,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 467.0, 1364.499974131584167, 451.0, 121.0 ],
									"text" : "/voices = [1, 2, 3],\n\nmap(\n  lambda([voice],\n    assign(\"/selected/\" + voice + \"/pattern/key\", /pattern/key)\n  ),\n  /voices\n)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 406.0, 1314.0, 80.0, 22.0 ],
									"text" : "o.select /prev"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-25",
									"linecount" : 21,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 406.0, 1012.0, 408.0, 287.0 ],
									"text" : "# Calculate differences\n/sharp/delta = /sharp/count - /prev/sharp,\n/flat/delta = /flat/count - /prev/flat,\n/natural/delta = /natural/count - /prev/natural,\n\n# Find max delta\n/max = max(list(/sharp/delta, /flat/delta, /natural/delta)),\n\n# Calculate key change\n/pattern/key = /prev/key,\nif (/max == /sharp/delta,\n  /pattern/key = (/pattern/key + /sharp/delta) % 12,\n  if (/max == /flat/delta,\n    /pattern/key = (/pattern/key - /flat/delta) % 12\n  )\n),\n\n/prev/key = /pattern/key,\n/prev/sharp = /sharp/count,\n/prev/flat = /flat/count,\n/prev/natural = /natural/count"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 406.0, 946.499974131584167, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 406.0, 981.499974131584167, 259.0, 22.0 ],
									"text" : "o.var"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 588.0, 768.249974131584167, 77.0, 22.0 ],
									"text" : "o.select /rest"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 777.0, 709.249974131584167, 118.0, 22.0 ],
									"text" : "if $i1 == 1 then bang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 777.0, 679.249948263168335, 69.0, 22.0 ],
									"text" : "r game-init"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 646.0, 801.249974131584167, 150.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-16",
									"linecount" : 3,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 777.0, 741.249974131584167, 150.0, 49.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 112, 114, 101, 118, 47, 115, 104, 97, 114, 112, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 112, 114, 101, 118, 47, 102, 108, 97, 116, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 112, 114, 101, 118, 47, 110, 97, 116, 117, 114, 97, 108, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0 ],
									"saved_bundle_length" : 92,
									"text" : "/prev/sharp : 0,\n/prev/flat : 0,\n/prev/natural : 0"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-14",
									"linecount" : 4,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 646.0, 835.499974131584167, 150.0, 70.0 ],
									"text" : "/prev/key ??= 7,\n/prev/sharp ??= 0,\n/prev/flat ??= 0,\n/prev/natural ??= 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-577",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 588.0, 735.638394236564636, 151.0, 22.0 ],
									"text" : "r player-projectile-hit-count"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-6",
									"linecount" : 6,
									"maxclass" : "o.display",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 105.0, 949.999974131584167, 275.0, 85.0 ],
									"text" : "/melody/idx : 2,\n/melody/pattern : [15, 15, 16, 16, 17, 17, 18, 18, 17, 17, 16, 16, 17, 17, 18, 15],\n/melody/beat_len : 16,\n/melody/pattern_len : 16"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 280.0, 562.0, 89.0, 22.0 ],
									"text" : "o.select /length"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-5",
									"linecount" : 2,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 44.0, 370.0, 229.0, 46.0 ],
									"text" : "/prev/num_events = /num_events,\n/prev/game_init = /game_init"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 44.0, 336.888420104980469, 238.0, 22.0 ],
									"text" : "o.if /event_delta > 1 || /game_init_delta != 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 44.0, 53.117596745491028, 122.0, 22.0 ],
									"text" : "o.select /num_events"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 220.0, 87.117596745491028, 91.0, 22.0 ],
									"text" : "r melody-banks"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-237",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 105.0, 915.499974131584167, 320.0, 22.0 ],
									"text" : "o.select /melody"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-236",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 105.0, 1090.999974131584167, 120.0, 22.0 ],
									"text" : "s patternbank-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-235",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 179.0, 53.117596745491028, 103.0, 22.0 ],
									"text" : "o.pack /game_init"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-234",
									"linecount" : 3,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 105.0, 835.499974131584167, 511.0, 70.0 ],
									"text" : "/melody/pattern = getbundlemember(value(\"/\" + /melody/idx), \"/pattern\"),\n/melody/beat_len = getbundlemember(value(\"/\" + /melody/idx), \"/beat_len\"),\n/melody/pattern_len = length(/melody/pattern)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-223",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 44.0, 87.117596745491028, 154.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-217",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 179.0, 20.999974131584167, 69.0, 22.0 ],
									"text" : "r game-init"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-210",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 44.0, 120.111528158187866, 195.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-212",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 44.0, 20.999974131584167, 75.0, 22.0 ],
									"text" : "r game-stats"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-207",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 105.0, 802.388420104980469, 58.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-206",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 144.0, 768.388420104980469, 108.0, 22.0 ],
									"text" : "o.pack /melody/idx"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-205",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"patching_rect" : [ 144.0, 698.388420104980469, 49.0, 22.0 ],
									"text" : "t b i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-201",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 144.0, 733.499974131584167, 49.0, 22.0 ],
									"text" : "random"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-202",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 144.0, 665.999974131584167, 85.0, 22.0 ],
									"text" : "o.route /length"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-198",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 105.0, 630.388420104980469, 58.0, 22.0 ],
									"text" : "t l l"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-197",
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 105.0, 477.888420104980469, 326.0, 31.0 ],
									"text" : "/length = length(getaddresses(/melodies))"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-193",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 105.0, 596.388420104980469, 194.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-196",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 105.0, 527.888420104980469, 194.0, 22.0 ],
									"text" : "o.route /melodies"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-192",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 44.0, 154.999974131584167, 342.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-191",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 44.0, 427.999974131584167, 80.0, 22.0 ],
									"text" : "o.select /prev"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-187",
									"linecount" : 9,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 44.0, 188.999974131584167, 342.0, 134.0 ],
									"text" : "/game_init ??= 0,\n/prev/num_events ??= 0,\n/prev/game_init ??= 0,\n\n# Choose melody on game start\n/game_init_delta = /game_init - /prev/game_init,\n\n# Check how many events have passed\n/event_delta = /num_events - /prev/num_events"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-210", 1 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 1 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 1 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-187", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-192", 1 ],
									"midpoints" : [ 53.5, 464.888420104980469, 397.0, 464.888420104980469, 397.0, 143.999974131584167, 376.5, 143.999974131584167 ],
									"source" : [ "obj-191", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-197", 0 ],
									"source" : [ "obj-191", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-187", 0 ],
									"source" : [ "obj-192", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-198", 0 ],
									"source" : [ "obj-193", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-193", 0 ],
									"source" : [ "obj-196", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-196", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-196", 0 ],
									"source" : [ "obj-197", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-202", 0 ],
									"source" : [ "obj-198", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-207", 0 ],
									"source" : [ "obj-198", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-223", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-20", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-206", 0 ],
									"source" : [ "obj-201", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-205", 0 ],
									"source" : [ "obj-202", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-201", 1 ],
									"source" : [ "obj-205", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-201", 0 ],
									"source" : [ "obj-205", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-207", 1 ],
									"source" : [ "obj-206", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-234", 0 ],
									"source" : [ "obj-207", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-192", 0 ],
									"source" : [ "obj-210", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-212", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-235", 0 ],
									"source" : [ "obj-217", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-210", 0 ],
									"source" : [ "obj-223", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-237", 0 ],
									"source" : [ "obj-234", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-223", 1 ],
									"source" : [ "obj-235", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-237", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-237", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 1 ],
									"midpoints" : [ 415.5, 1347.0, 831.5, 1347.0, 831.5, 794.111554026603699, 786.5, 794.111554026603699 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-26", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 0 ],
									"source" : [ "obj-38", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-191", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"source" : [ "obj-503", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 0 ],
									"source" : [ "obj-57", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 0 ],
									"source" : [ "obj-57", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-577", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 1 ],
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-67", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-57", 0 ],
									"source" : [ "obj-62", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 1 ],
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-236", 0 ],
									"source" : [ "obj-67", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 0 ],
									"source" : [ "obj-67", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-193", 1 ],
									"source" : [ "obj-7", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 32.0, 2166.617647999999917, 222.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p special-event-change-melody-and-key"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 18.0,
					"id" : "obj-401",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3043.449999999999818, 2833.8125, 168.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1031.250000000005002, 1634.702894151210785, 195.0, 27.0 ],
					"text" : "Stats Tracker",
					"textcolor" : [ 0.901956915855408, 0.901983857154846, 0.901968538761139, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-398",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3003.399999999999636, 2955.69487738609314, 115.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1281.999999999999545, 2078.702894151210785, 99.0, 20.0 ],
					"text" : "Weapon Stats",
					"textcolor" : [ 0.901956915855408, 0.901983857154846, 0.901968538761139, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-397",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3126.949999999999818, 2927.69487738609314, 115.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 423.96428571428487, 1858.702894151210785, 73.0, 20.0 ],
					"text" : "Note Stats",
					"textcolor" : [ 0.901956915855408, 0.901983857154846, 0.901968538761139, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-396",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3126.949999999999818, 2901.69487738609314, 115.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1287.499999999999545, 1862.702894151210785, 88.0, 20.0 ],
					"text" : "Enemy Stats",
					"textcolor" : [ 0.901956915855408, 0.901983857154846, 0.901968538761139, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-395",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3126.949999999999818, 2875.69487738609314, 115.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1283.750000000003411, 1681.702894151210785, 95.499999999992269, 20.0 ],
					"text" : "Upgrade Stats",
					"textcolor" : [ 0.901956915855408, 0.901983857154846, 0.901968538761139, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-394",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3003.399999999999636, 2927.69487738609314, 115.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 410.999999999999318, 2014.702894151210785, 99.0, 20.0 ],
					"text" : "Control Stats",
					"textcolor" : [ 0.901956915855408, 0.901983857154846, 0.901968538761139, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-393",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3003.399999999999636, 2901.69487738609314, 115.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 421.999999999999432, 1681.702894151210785, 77.0, 20.0 ],
					"text" : "Game Stats",
					"textcolor" : [ 0.901956915855408, 0.901983857154846, 0.901968538761139, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-392",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3003.399999999999636, 2875.69487738609314, 115.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 849.264705538751969, 1681.702894151210785, 92.0, 20.0 ],
					"text" : "Player Stats",
					"textcolor" : [ 0.901956915855408, 0.901983857154846, 0.901968538761139, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-390",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 1474.0, -211.0, 2492.0, 1319.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-87",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 365.750000000000455, 1671.0, 321.0, 42.0 ],
									"text" : "Details around each pattern modifier type can be found in the patternmodifier.js file"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-85",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 220.5, 1437.0, 129.0, 42.0 ],
									"text" : "Debug Print modifier type"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-84",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1239.75, 1068.0, 168.0, 42.0 ],
									"text" : "Assign any extra args for specific modes."
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-83",
									"linecount" : 5,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1365.0, 592.5, 317.0, 96.0 ],
									"text" : "Select the Update Mode and any additional arguments for the particular mode.\n\nAll of these values are determined based on a weighted choice."
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-82",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 207.0, 635.5, 196.0, 24.0 ],
									"text" : "Select the voice to modify"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-80",
									"linecount" : 9,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 289.0, 163.5, 432.0, 167.0 ],
									"text" : "Pattern modifiers is where the most apparent changes to a pattern. Pattern modifiers bulk update notes to rests, rests to notes, change leaps to steps, steps to leaps, and add in some randomness to a pattern (in both a controlled and a chaotic way).\n\nPatterns are modified after a certain number of enemies are killed. The modifier type and the extent of the modification are based on Player stats."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-48",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 2111.75, 825.5, 66.25, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-45",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 2159.0, 785.0, 104.0, 22.0 ],
									"text" : "o.select /collected"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-44",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 2159.0, 751.0, 93.0, 22.0 ],
									"text" : "o.route /percent"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 2159.0, 719.0, 75.0, 22.0 ],
									"text" : "r notes-stats"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 220.5, 1541.0, 113.0, 22.0 ],
									"text" : "o.route /patternmod"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 220.5, 1509.0, 86.0, 22.0 ],
									"text" : "o.route /debug"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-503",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 220.5, 1481.0, 128.0, 22.0 ],
									"text" : "r debug-enable-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 220.5, 1572.0, 174.0, 22.0 ],
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 82.0, 1340.0, 312.5, 22.0 ],
									"text" : "t l l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-55",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 376.499999999999886, 1442.0, 97.666666666666742, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 455.166666666666629, 1410.0, 98.666666666666742, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "FullPacket" ],
									"patching_rect" : [ 375.5, 1375.0, 258.0, 22.0 ],
									"text" : "o.select /update_mode /voice_num /extra_args"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-73",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 375.5, 1478.0, 68.5, 22.0 ],
									"text" : "t l b"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-72",
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 425.0, 1510.0, 193.0, 23.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 47, 116, 121, 112, 101, 0, 0, 0, 44, 115, 0, 0, 112, 97, 116, 116, 101, 114, 110, 45, 109, 111, 100, 105, 102, 105, 101, 114, 0, 0, 0, 0 ],
									"saved_bundle_length" : 52,
									"text" : "/type : \"pattern-modifier\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-70",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 375.5, 1541.0, 68.5, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-51",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 220.5, 1602.0, 42.0, 22.0 ],
									"text" : "o.print"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-127",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 567.75, 923.0, 1563.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-122",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 568.0, 435.5, 534.0, 22.0 ],
									"text" : "t l b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-121",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 1083.0, 467.0, 56.0, 22.0 ],
									"text" : "o.var"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-117",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1597.25, 852.5, 211.0, 22.0 ],
									"saved_object_attributes" : 									{
										"filename" : "weightedchoice.js",
										"parameter_enable" : 0
									}
,
									"text" : "js weightedchoice.js"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-116",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "FullPacket" ],
									"patching_rect" : [ 1597.25, 817.5, 211.0, 22.0 ],
									"text" : "o.route /values1 /weights/1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-115",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "FullPacket" ],
									"patching_rect" : [ 1082.75, 817.5, 307.0, 22.0 ],
									"text" : "o.route /values0 /weights/0 /num_choices"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-114",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 1082.75, 785.0, 1048.0, 22.0 ],
									"text" : "t l l l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-113",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1082.75, 852.5, 211.0, 22.0 ],
									"saved_object_attributes" : 									{
										"filename" : "weightedchoice.js",
										"parameter_enable" : 0
									}
,
									"text" : "js weightedchoice.js"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-101",
									"linecount" : 20,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 1083.0, 498.0, 278.0, 275.0 ],
									"text" : "/num_choices = 2,\n/values0 = [1, 2, 3, 4],\n/weights/0 = [\n  /still, \n  /moving, \n  /moving_over_rotating, \n  /rotating\n],\n\n/values1 = [1, 2, 3, 4, 5, 6, 7, 8],\n/weights/1 = [\n  /per_screen_quadrant[[ 0 ]],\n  /per_angle_quadrant[[ 0 ]],\n  /per_screen_quadrant[[ 1 ]],\n  /per_angle_quadrant[[ 1 ]], \n  /per_screen_quadrant[[ 2 ]], \n  /per_angle_quadrant[[ 2 ]],\n  /per_screen_quadrant[[ 3 ]],\n  /per_angle_quadrant[[ 3 ]]\n]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-99",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 1120.0, 161.11762261390686, 78.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-98",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "FullPacket" ],
									"patching_rect" : [ 1120.0, 128.11762261390686, 136.0, 22.0 ],
									"text" : "o.route /percent /frames"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-89",
									"linecount" : 17,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 568.0, 498.0, 476.0, 236.0 ],
									"text" : "/modes = [0, 1, 4, 5],\n/weights = [/0, /1, /2, /3],\n/max_weight = max(/weights),\n/copy = /weights,\n\nmap(\n  lambda(\n    [elem, idx],\n    if ( elem == 0,\n      /weights[[ idx ]] = /max_weight\n    )\n  ),\n  /weights,\n  aseq(0, length(/weights) - 1)\n),\n\n/weights = /max_weight - /weights"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-69",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 81.750000000000455, 1306.5, 504.999999999999545, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-67",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 567.75, 1263.5, 106.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-61",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "FullPacket" ],
									"patching_rect" : [ 567.75, 1230.5, 193.0, 22.0 ],
									"text" : "o.select /update_mode /extra_args"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-40",
									"linecount" : 18,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 567.75, 964.5, 670.0, 249.0 ],
									"text" : "/min = /range[[ 0 ]] * -1,\n/max = /range[[ 1 ]],\n\nif (/update_mode == 0,\n  /extra_args = [/accuracy, /max_changes]\n),\n\nif (/update_mode == 1,\n  /extra_args = [/moving_and_rotating, /max_changes]\n),\n\nif (/update_mode == 4,\n  /extra_args = [100 - /moving_over_rotating, /min, /max, /max_changes]\n),\n\nif (/update_mode == 5,\n  /extra_args = [/collected, /max_changes]\n)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 568.0, 887.0, 1048.25, 22.0 ],
									"text" : "o.pack /update_mode /range /max_changes"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "FullPacket" ],
									"patching_rect" : [ 568.0, 817.5, 211.0, 22.0 ],
									"text" : "o.route /modes /weights"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-184",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 568.0, 852.5, 211.0, 22.0 ],
									"saved_object_attributes" : 									{
										"filename" : "weightedchoice.js",
										"parameter_enable" : 0
									}
,
									"text" : "js weightedchoice.js"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 568.0, 467.0, 98.0, 22.0 ],
									"text" : "o.route /weight"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 568.0, 403.0, 53.0, 22.0 ],
									"text" : "o.collect"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-27",
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 785.0, 346.11762261390686, 288.0, 31.0 ],
									"text" : "/weight/3 = /between_collecting[[ 1 ]]"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-25",
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 768.5, 237.11762261390686, 288.0, 31.0 ],
									"text" : "/weight/2 = /between_collecting[[ 2 ]]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 785.0, 314.11762261390686, 75.0, 22.0 ],
									"text" : "o.route /time"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 768.5, 205.11762261390686, 75.0, 22.0 ],
									"text" : "o.route /time"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 785.0, 280.11762261390686, 89.0, 22.0 ],
									"text" : "r upgrade-stats"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 768.5, 171.11762261390686, 75.0, 22.0 ],
									"text" : "r notes-stats"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 753.0, 89.11762261390686, 386.0, 22.0 ],
									"text" : "o.route /time"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-10",
									"linecount" : 2,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 753.0, 121.11762261390686, 277.0, 44.0 ],
									"text" : "/weight/0 = /between_kills[[ 2 ]],\n/weight/1 = /between_getting_hit[[ 2 ]]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 753.0, 55.11762261390686, 78.0, 22.0 ],
									"text" : "r player-stats"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-86",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 81.750000000000455, 1213.5, 139.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-95",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 201.750000000000455, 1180.5, 111.0, 22.0 ],
									"text" : "r all-voice-dumpout"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 81.750000000000455, 1180.5, 109.0, 22.0 ],
									"text" : "o.pack /voice_num"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-107",
									"linecount" : 2,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 81.750000000000455, 1246.5, 329.0, 46.0 ],
									"text" : "/values = value(\"/\" + /voice_num + \"/values\"),\n/sustain = value(\"/\" + /voice_num + \"/sustain\")"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-92",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 81.750000000000455, 1844.5, 97.0, 22.0 ],
									"text" : "o.route /selected"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-111",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 81.750000000000455, 1880.36762261390686, 142.0, 22.0 ],
									"text" : "s all-voice-pattern-values"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-112",
									"linecount" : 3,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 81.750000000000455, 1776.0, 476.0, 57.0 ],
									"text" : "assign(\"/selected\" + \"/\" + /voice_num + \"/pattern/values\", /values),\nassign(\"/selected\" + \"/\" + /voice_num + \"/pattern/sustain\", /sustain),\ndelete(/values, /sustain)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-110",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 82.000000000000455, 1740.0, 274.999999999999545, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-66",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"patching_rect" : [ 82.0, 365.0, 505.0, 22.0 ],
									"text" : "t b b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-64",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "FullPacket" ],
									"patching_rect" : [ 81.750000000000455, 1115.5, 211.0, 22.0 ],
									"text" : "o.route /voices /weights"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-65",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 81.750000000000455, 1148.5, 211.0, 22.0 ],
									"saved_object_attributes" : 									{
										"filename" : "weightedchoice.js",
										"parameter_enable" : 0
									}
,
									"text" : "js weightedchoice.js"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-63",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 81.750000000000455, 1083.5, 67.0, 22.0 ],
									"text" : "o.var"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-62",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 129.750000000000455, 1050.5, 78.5, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-60",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "FullPacket" ],
									"patching_rect" : [ 129.750000000000455, 1015.5, 138.0, 22.0 ],
									"text" : "o.select /voices /weights"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-58",
									"linecount" : 14,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 129.750000000000455, 803.0, 355.0, 198.0 ],
									"text" : "# initial values\n/voices = [1, 2, 3],\n/weights = [0., 0., 0.],\n\n# update weights for active voices\nif (/pattern[[ 0 ]] != 0,\n  /weights[[ 0 ]] = /accuracy\n),\nif (/pattern[[ 1 ]] != 0,\n  /weights[[ 1 ]] = /moving_over_rotating\n),\nif (/pattern[[ 2 ]] != 0,\n  /weights[[ 2 ]] = /firing_weapon\n)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-54",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 129.750000000000455, 767.5, 206.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-52",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 129.750000000000455, 732.61762261390686, 93.0, 22.0 ],
									"text" : "o.route /percent"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-53",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 129.750000000000455, 703.5, 78.0, 22.0 ],
									"text" : "r player-stats"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-43",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 316.750000000000455, 732.61762261390686, 94.0, 22.0 ],
									"text" : "o.select /pattern"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 316.750000000000455, 703.5, 101.0, 22.0 ],
									"text" : "o.route /modifiers"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-245",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 316.750000000000455, 673.61762261390686, 132.0, 22.0 ],
									"text" : "r active-voice-modifiers"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-81",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 230.0, 45.5, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-79",
									"linecount" : 2,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 230.0, 82.11762261390686, 150.0, 36.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 112, 114, 101, 118, 47, 107, 105, 108, 108, 101, 100, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 105, 108, 108, 101, 100, 0, 44, 105, 0, 0, 0, 0, 0, 0 ],
									"saved_bundle_length" : 64,
									"text" : "/prev/killed : 0,\n/killed : 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-77",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 230.0, 14.0, 65.0, 22.0 ],
									"text" : "r game-init"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 21.0, 320.5, 80.0, 22.0 ],
									"text" : "o.select /prev"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-35",
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 21.0, 277.5, 166.0, 34.0 ],
									"text" : "/prev/killed = /killed"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 21.0, 244.5, 131.0, 22.0 ],
									"text" : "o.if /delta >= /threshold"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-31",
									"linecount" : 4,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 21.0, 163.5, 228.0, 70.0 ],
									"text" : "/prev/killed ??= 0,\n/threshold ??= 12,\n\n/delta = /killed - /prev/killed"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 21.0, 130.5, 228.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 21.0, 98.5, 84.0, 22.0 ],
									"text" : "o.select /killed"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 21.0, 65.5, 81.0, 22.0 ],
									"text" : "r enemy-stats"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-375",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "FullPacket" ],
									"patching_rect" : [ 82.0, 1638.0, 275.0, 22.0 ],
									"text" : "o.route /values /sustain /update_mode /extra_args"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-374",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 82.000000000000455, 1704.0, 210.999999999999545, 22.0 ],
									"text" : "o.pack /values /sustain"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-367",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 82.000000000000455, 1671.0, 210.999999999999545, 22.0 ],
									"saved_object_attributes" : 									{
										"filename" : "patternmodifier.js",
										"parameter_enable" : 0
									}
,
									"text" : "js patternmodifier.js"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"midpoints" : [ 762.5, 391.55881130695343, 577.5, 391.55881130695343 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-114", 0 ],
									"source" : [ "obj-101", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-69", 0 ],
									"source" : [ "obj-107", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-98", 0 ],
									"source" : [ "obj-11", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-112", 0 ],
									"source" : [ "obj-110", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-92", 0 ],
									"source" : [ "obj-112", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 1 ],
									"source" : [ "obj-113", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-115", 0 ],
									"source" : [ "obj-114", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-116", 0 ],
									"source" : [ "obj-114", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"source" : [ "obj-114", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-113", 2 ],
									"source" : [ "obj-115", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-113", 1 ],
									"source" : [ "obj-115", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-113", 0 ],
									"source" : [ "obj-115", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-117", 1 ],
									"source" : [ "obj-116", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-117", 0 ],
									"source" : [ "obj-116", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 2 ],
									"source" : [ "obj-117", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 1 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-101", 0 ],
									"source" : [ "obj-121", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-121", 0 ],
									"source" : [ "obj-122", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-122", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"source" : [ "obj-127", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 1 ],
									"source" : [ "obj-13", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-13", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-14", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-375", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-184", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-245", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"midpoints" : [ 778.0, 391.05881130695343, 577.5, 391.05881130695343 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"midpoints" : [ 794.5, 391.55881130695343, 577.5, 391.55881130695343 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-122", 0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-89", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 1 ],
									"midpoints" : [ 30.5, 353.5, 259.0, 353.5, 259.0, 123.5, 239.5, 123.5 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"source" : [ "obj-36", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-374", 1 ],
									"source" : [ "obj-367", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-374", 0 ],
									"source" : [ "obj-367", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-184", 1 ],
									"source" : [ "obj-37", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-184", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-110", 0 ],
									"source" : [ "obj-374", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-110", 1 ],
									"source" : [ "obj-375", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-367", 3 ],
									"source" : [ "obj-375", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-367", 2 ],
									"source" : [ "obj-375", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-367", 1 ],
									"source" : [ "obj-375", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-367", 0 ],
									"source" : [ "obj-375", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-127", 0 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 1 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 1 ],
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-127", 1 ],
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-503", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 0 ],
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-52", 0 ],
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-73", 0 ],
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-60", 0 ],
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 1 ],
									"source" : [ "obj-60", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 0 ],
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-67", 1 ],
									"source" : [ "obj-61", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-67", 0 ],
									"source" : [ "obj-61", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 1 ],
									"source" : [ "obj-62", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 1 ],
									"source" : [ "obj-64", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 0 ],
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-66", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 0 ],
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-69", 1 ],
									"source" : [ "obj-67", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-86", 0 ],
									"source" : [ "obj-68", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-69", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 1 ],
									"source" : [ "obj-70", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-70", 1 ],
									"source" : [ "obj-72", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-70", 0 ],
									"source" : [ "obj-73", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-72", 0 ],
									"source" : [ "obj-73", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 0 ],
									"source" : [ "obj-77", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 1 ],
									"source" : [ "obj-79", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-79", 0 ],
									"source" : [ "obj-81", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-107", 0 ],
									"source" : [ "obj-86", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-89", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-111", 0 ],
									"source" : [ "obj-92", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-86", 1 ],
									"source" : [ "obj-95", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-99", 1 ],
									"source" : [ "obj-98", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-99", 0 ],
									"source" : [ "obj-98", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-121", 1 ],
									"source" : [ "obj-99", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 357.0, 2230.941228000000137, 167.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p enemy-kill-pattern-modifiers"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-364",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 2330.0, -32.0, 924.0, 779.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-5",
									"linecount" : 5,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 43.0, 448.0, 825.0, 96.0 ],
									"text" : "Define each melody group.\n    /pattern contains a list of pattr values in the order in which they should be loaded.\n    /beat_len is the length of beats that each pattr value should play for before the next pattr value is loaded.\n\nOn load, these values are sent to the Game Melody manager to handle playing and switching melodies on-beat."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 43.0, 412.0, 93.0, 22.0 ],
									"text" : "s melody-banks"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 43.0, 25.0, 117.0, 22.0 ],
									"text" : "r melody-banks-load"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-2",
									"linecount" : 26,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 43.0, 58.617596745491028, 560.0, 343.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 76, 47, 109, 101, 108, 111, 100, 105, 101, 115, 0, 0, 0, 44, 46, 0, 0, 0, 0, 3, 56, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 112, 47, 48, 0, 0, 44, 46, 0, 0, 0, 0, 0, 100, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 56, 47, 112, 97, 116, 116, 101, 114, 110, 0, 0, 0, 0, 44, 105, 105, 105, 105, 105, 105, 105, 105, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 5, 0, 0, 0, 6, 0, 0, 0, 6, 0, 0, 0, 7, 0, 0, 0, 7, 0, 0, 0, 6, 0, 0, 0, 6, 0, 0, 0, 20, 47, 98, 101, 97, 116, 95, 108, 101, 110, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 16, 0, 0, 0, -128, 47, 49, 0, 0, 44, 46, 0, 0, 0, 0, 0, 116, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 47, 112, 97, 116, 116, 101, 114, 110, 0, 0, 0, 0, 44, 105, 105, 105, 105, 105, 105, 105, 105, 105, 105, 105, 0, 0, 0, 0, 0, 0, 0, 11, 0, 0, 0, 11, 0, 0, 0, 12, 0, 0, 0, 12, 0, 0, 0, 13, 0, 0, 0, 13, 0, 0, 0, 14, 0, 0, 0, 13, 0, 0, 0, 12, 0, 0, 0, 12, 0, 0, 0, 12, 0, 0, 0, 20, 47, 98, 101, 97, 116, 95, 108, 101, 110, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 16, 0, 0, 0, -104, 47, 50, 0, 0, 44, 46, 0, 0, 0, 0, 0, -116, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 47, 112, 97, 116, 116, 101, 114, 110, 0, 0, 0, 0, 44, 105, 105, 105, 105, 105, 105, 105, 105, 105, 105, 105, 105, 105, 105, 105, 105, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 15, 0, 0, 0, 16, 0, 0, 0, 16, 0, 0, 0, 17, 0, 0, 0, 17, 0, 0, 0, 18, 0, 0, 0, 18, 0, 0, 0, 17, 0, 0, 0, 17, 0, 0, 0, 16, 0, 0, 0, 16, 0, 0, 0, 17, 0, 0, 0, 17, 0, 0, 0, 18, 0, 0, 0, 15, 0, 0, 0, 20, 47, 98, 101, 97, 116, 95, 108, 101, 110, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 16, 0, 0, 0, 116, 47, 51, 0, 0, 44, 46, 0, 0, 0, 0, 0, 104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 47, 112, 97, 116, 116, 101, 114, 110, 0, 0, 0, 0, 44, 105, 105, 105, 105, 105, 105, 105, 105, 105, 0, 0, 0, 0, 0, 19, 0, 0, 0, 19, 0, 0, 0, 20, 0, 0, 0, 20, 0, 0, 0, 21, 0, 0, 0, 20, 0, 0, 0, 21, 0, 0, 0, 19, 0, 0, 0, 20, 0, 0, 0, 20, 47, 98, 101, 97, 116, 95, 108, 101, 110, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 14, 0, 0, 0, -120, 47, 52, 0, 0, 44, 46, 0, 0, 0, 0, 0, 124, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80, 47, 112, 97, 116, 116, 101, 114, 110, 0, 0, 0, 0, 44, 105, 105, 105, 105, 105, 105, 105, 105, 105, 105, 105, 105, 105, 0, 0, 0, 0, 0, 8, 0, 0, 0, 8, 0, 0, 0, 9, 0, 0, 0, 9, 0, 0, 0, 9, 0, 0, 0, 8, 0, 0, 0, 8, 0, 0, 0, 10, 0, 0, 0, 10, 0, 0, 0, 10, 0, 0, 0, 10, 0, 0, 0, 9, 0, 0, 0, 9, 0, 0, 0, 20, 47, 98, 101, 97, 116, 95, 108, 101, 110, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 12, 0, 0, 0, -116, 47, 53, 0, 0, 44, 46, 0, 0, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 84, 47, 112, 97, 116, 116, 101, 114, 110, 0, 0, 0, 0, 44, 105, 105, 105, 105, 105, 105, 105, 105, 105, 105, 105, 105, 105, 105, 0, 0, 0, 0, 22, 0, 0, 0, 22, 0, 0, 0, 23, 0, 0, 0, 23, 0, 0, 0, 24, 0, 0, 0, 24, 0, 0, 0, 23, 0, 0, 0, 23, 0, 0, 0, 24, 0, 0, 0, 24, 0, 0, 0, 22, 0, 0, 0, 22, 0, 0, 0, 23, 0, 0, 0, 23, 0, 0, 0, 20, 47, 98, 101, 97, 116, 95, 108, 101, 110, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 16 ],
									"saved_bundle_length" : 864,
									"text" : "/melodies : {\n  /0 : {\n    /pattern : [5, 5, 6, 6, 7, 7, 6, 6],\n    /beat_len : 16\n  },\n  /1 : {\n    /pattern : [11, 11, 12, 12, 13, 13, 14, 13, 12, 12, 12],\n    /beat_len : 16\n  },\n  /2 : {\n    /pattern : [15, 15, 16, 16, 17, 17, 18, 18, 17, 17, 16, 16, 17, 17, 18, 15],\n    /beat_len : 16\n  },\n  /3 : {\n    /pattern : [19, 19, 20, 20, 21, 20, 21, 19, 20],\n    /beat_len : 14\n  },\n  /4 : {\n    /pattern : [8, 8, 9, 9, 9, 8, 8, 10, 10, 10, 10, 9, 9],\n    /beat_len : 12\n  },\n  /5 : {\n    /pattern : [22, 22, 23, 23, 24, 24, 23, 23, 24, 24, 22, 22, 23, 23],\n    /beat_len : 16\n  }\n}"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 32.0, 1964.125, 130.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p init-melodies-on-load"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-360",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4415.093750625856956, 971.470562219619751, 66.0, 22.0 ],
					"text" : "r seq-reset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-358",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3618.953125402330443, 971.470562219619751, 66.0, 22.0 ],
					"text" : "r seq-reset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-357",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2822.468750268229542, 971.558772921562195, 66.0, 22.0 ],
					"text" : "r seq-reset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-356",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1224.500000000000227, 971.558772921562195, 66.0, 22.0 ],
					"text" : "r seq-reset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-354",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1905.034375277161189, 971.558772921562195, 77.0, 22.0 ],
					"text" : "r metro-reset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-355",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2026.79687531292393, 971.558772921562195, 66.0, 22.0 ],
					"text" : "r seq-reset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-350",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3807.437500536440893, 971.470562219619751, 53.0, 22.0 ],
					"text" : "o.collect"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-349",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3010.953125402330443, 971.558772921562195, 53.0, 22.0 ],
					"text" : "o.collect"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-348",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2214.468750268219992, 938.176626682281494, 53.0, 22.0 ],
					"text" : "o.collect"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-346",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1417.984375134109996, 938.176626682281494, 53.0, 22.0 ],
					"text" : "o.collect"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-337",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 621.499999999999773, 938.176626682281494, 53.0, 22.0 ],
					"text" : "o.collect"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-313",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 2673.124999999998636, 97.935038328170776, 113.0, 22.0 ],
					"text" : "metro 4n @active 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-312",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2673.124999999998636, 159.731767535209656, 53.0, 22.0 ],
					"text" : "o.collect"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-305",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 38.499999999999773, 2916.44487738609314, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-293",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1313.399999999999636, 2951.547745227813721, 77.0, 22.0 ],
					"text" : "s reset-voice"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-292",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1313.399999999999636, 2882.3125, 48.0, 22.0 ],
					"text" : "del 250"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-252",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1242.625, 214.487853646278381, 102.0, 22.0 ],
					"text" : "s transport-toggle"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-204",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2783.5, 2948.69487738609314, 98.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1427.500000000004547, 1504.038069307808655, 88.0, 20.0 ],
					"text" : "Pattern SAVE",
					"textcolor" : [ 0.999995052814484, 1.0, 1.0, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-201",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2783.5, 2924.69487738609314, 98.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1303.000000000004547, 1503.86162224411737, 101.0, 20.0 ],
					"text" : "Pattern Select",
					"textcolor" : [ 0.999995052814484, 1.0, 1.0, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-191",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 2171.953125402330443, 261.920437932014465, 94.0, 22.0 ],
					"text" : "receive~ mixer5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-190",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 2033.953125402330443, 261.920437932014465, 94.0, 22.0 ],
					"text" : "receive~ mixer4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-189",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3807.437500536440893, 2685.411789298057556, 81.0, 22.0 ],
					"text" : "send~ mixer5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-178",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 4415.093750625856956, 1809.0, 145.0, 22.0 ],
					"text" : "o.route /pattern/sequence"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-179",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3820.312500536441803, 900.617751121520996, 95.0, 22.0 ],
					"text" : "r voice5-on-load"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-180",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "FullPacket" ],
					"patching_rect" : [ 3820.312500536441803, 936.617751121520996, 205.0, 22.0 ],
					"text" : "o.select /tempo/beat_div /pattern/key"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-186",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "HL-drum.maxpat",
					"numinlets" : 4,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "FullPacket" ],
					"patching_rect" : [ 3807.437500536440893, 1003.382351517677307, 626.656250089416062, 763.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 620.0, 863.617648000000031, 622.0, 763.0 ],
					"varname" : "HL-drum[1]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-177",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 3618.953125402330443, 1815.0, 145.0, 22.0 ],
					"text" : "o.route /pattern/sequence"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-157",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3028.090514949560202, 900.617751121520996, 95.0, 22.0 ],
					"text" : "r voice4-on-load"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-158",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "FullPacket" ],
					"patching_rect" : [ 3028.090514949560202, 936.617751121520996, 205.0, 22.0 ],
					"text" : "o.select /tempo/beat_div /pattern/key"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-156",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "HL-drum.maxpat",
					"numinlets" : 4,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "FullPacket" ],
					"patching_rect" : [ 3010.953125402330443, 1003.470562219619751, 627.0, 762.911789298057556 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 863.617648000000031, 622.0, 763.0 ],
					"varname" : "HL-drum",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-96",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3010.953125402330443, 2685.411789298057556, 81.0, 22.0 ],
					"text" : "send~ mixer4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-245",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1135.125, 451.332196354866028, 134.0, 22.0 ],
					"text" : "s active-voice-modifiers"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-242",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "voice-modifier-selection.maxpat",
					"numinlets" : 0,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 1135.125, 313.237863659858704, 249.812500178813934, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1262.000000000007276, 1357.891061902046204, 249.812500178813934, 128.0 ],
					"varname" : "voice-modifier-selection",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-229",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 300.571428571428555, 346.196227788925171, 77.0, 22.0 ],
					"text" : "s notes-stats"
				}

			}
, 			{
				"box" : 				{
					"background_color" : [ 0.199999153614044, 0.200005099177361, 0.20000171661377, 1.0 ],
					"flash_color" : [ 0.986251831054688, 0.007236152887344, 0.027423052117229, 1.0 ],
					"fontface" : 0,
					"id" : "obj-226",
					"linecount" : 8,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 300.571428571428555, 219.487853646278381, 282.0, 123.0 ],
					"presentation" : 1,
					"presentation_linecount" : 6,
					"presentation_rect" : [ 257.999999999999318, 1880.702894151210785, 404.928571428571104, 97.0 ],
					"text" : "/collected : 25,\n/total : 494,\n/score : 211,\n/time/between_collecting : [830, 2023.12, 1982, 3973, 25],\n/time/lifespan : [7, 3672.03, 7, 5803, 730],\n/percent/collected : 5.06073",
					"textcolor" : [ 0.999995052814484, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-216",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 4034.0, -11.0, 1852.0, 959.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-90",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 377.25, 1609.5, 307.0, 42.0 ],
									"text" : "For details on each patterninverter function, see the patterninverter.js file"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-89",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 99.0, 514.0, 100.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-88",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 358.0, 1246.0, 239.0, 24.0 ],
									"text" : "Debug print patterninverter type"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-87",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 138.0, 627.5, 319.0, 42.0 ],
									"text" : "Select Voice based on frames player spends in particular screen sections"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-84",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 703.25, 730.5, 366.0, 60.0 ],
									"text" : "The patterninverter function to call is a weighted choice that is based off the number of frames that the player has performed a particular action"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-83",
									"linecount" : 8,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 499.25, 14.0, 363.0, 149.0 ],
									"text" : "Pattern inversion and reversing is a timed-event that is based off the average lifespan of an enemy. Once the game time crosses this threshold, a patterninversion function is called. \n\nPattern inversion functions are the least-frequently called as they can drastically alter the pattern."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 127.0, 1306.0, 105.0, 22.0 ],
									"text" : "o.route /patterninv"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-81",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 127.0, 1274.0, 86.0, 22.0 ],
									"text" : "o.route /debug"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-503",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 127.0, 1246.0, 128.0, 22.0 ],
									"text" : "r debug-enable-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 127.0, 1337.0, 174.0, 22.0 ],
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-82",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 127.0, 1369.0, 42.0, 22.0 ],
									"text" : "o.print"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-76",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 374.0, 176.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-74",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 374.0, 143.0, 115.0, 22.0 ],
									"text" : "if $i1 ==1 then bang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-73",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 282.0, 1246.0, 68.5, 22.0 ],
									"text" : "t l b"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-72",
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 331.5, 1274.0, 194.0, 23.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 47, 116, 121, 112, 101, 0, 0, 0, 44, 115, 0, 0, 112, 97, 116, 116, 101, 114, 110, 45, 105, 110, 118, 101, 114, 116, 101, 114, 0, 0, 0, 0 ],
									"saved_bundle_length" : 52,
									"text" : "/type : \"pattern-inverter\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-70",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 282.0, 1306.0, 68.5, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-55",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 29.0, 224.0, 255.0, 22.0 ],
									"text" : "o.if /count > 5 && /lifespan/max > /lifespan/min"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-50",
									"linecount" : 4,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 29.0, 143.0, 262.0, 70.0 ],
									"text" : "/lifespan/min = /time/lifespan[[ 0 ]],\n/lifespan/avg = /time/lifespan[[ 1 ]],\n/lifespan/max = /time/lifespan[[ 3 ]],\n/count = /time/lifespan[[ 4 ]]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 29.0, 271.0, 364.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-34",
									"linecount" : 2,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 374.0, 210.0, 150.0, 36.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 112, 114, 101, 118, 47, 102, 114, 97, 109, 101, 115, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 116, 111, 116, 97, 108, 95, 102, 114, 97, 109, 101, 115, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0 ],
									"saved_bundle_length" : 72,
									"text" : "/prev/frames : 0,\n/total_frames : 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 374.0, 109.0, 65.0, 22.0 ],
									"text" : "r game-init"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 29.0, 540.61762261390686, 80.0, 22.0 ],
									"text" : "o.select /prev"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-28",
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 29.0, 495.5, 199.0, 34.0 ],
									"text" : "/prev/frames = /total_frames"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 29.0, 467.0, 124.0, 22.0 ],
									"text" : "o.if /delta > /threshold"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-21",
									"linecount" : 10,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 29.0, 304.5, 567.0, 147.0 ],
									"text" : "# set initial values\n/prev/frames ??= 0,\n\n/min = /fps * 15,\n/max = /fps * 90,\n\n# set threshold\n/threshold = int32(scale(/lifespan/avg, /lifespan/min, /lifespan/max, /min, /max)),\n\n/delta = /total_frames - /prev/frames"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 29.0, 109.0, 115.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 125.0, 77.0, 159.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 265.0, 46.5, 73.0, 22.0 ],
									"text" : "o.select /fps"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 125.0, 46.5, 123.0, 22.0 ],
									"text" : "o.select /total_frames"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 29.0, 46.5, 79.0, 22.0 ],
									"text" : "o.select /time"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 29.0, 14.0, 81.0, 22.0 ],
									"text" : "r enemy-stats"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 265.0, 14.0, 81.0, 22.0 ],
									"text" : "r control-stats"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 125.0, 14.0, 75.0, 22.0 ],
									"text" : "r game-stats"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-96",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 90.0, 1479.0, 110.0, 22.0 ],
									"text" : "o.if /voice_num > 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-92",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 90.0, 1782.0, 97.0, 22.0 ],
									"text" : "o.route /selected"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-86",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 90.0, 1446.0, 56.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 90.0, 1204.0, 452.0, 22.0 ],
									"text" : "o.pack /voice_num /update_mode"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-66",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"patching_rect" : [ 90.0, 594.0, 452.0, 22.0 ],
									"text" : "b 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-64",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "FullPacket" ],
									"patching_rect" : [ 90.0, 1138.5, 211.0, 22.0 ],
									"text" : "o.route /voices /weights"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-65",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 90.0, 1171.5, 211.0, 22.0 ],
									"saved_object_attributes" : 									{
										"filename" : "weightedchoice.js",
										"parameter_enable" : 0
									}
,
									"text" : "js weightedchoice.js"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-63",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 90.0, 1106.5, 67.0, 22.0 ],
									"text" : "o.var"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-62",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 138.0, 1062.5, 78.5, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-60",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "FullPacket" ],
									"patching_rect" : [ 138.0, 1030.5, 138.0, 22.0 ],
									"text" : "o.select /voices /weights"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-58",
									"linecount" : 15,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 138.0, 802.5, 355.0, 211.0 ],
									"text" : "# initial values\n/total = /per_screen_quadrant[[ 0 ]],\n/voices = [1, 2, 3],\n/weights = [0., 0., 0.],\n\n# update weights for active voices\nif (/pattern[[ 0 ]] != 0,\n  /weights[[ 0 ]] = /per_screen_quadrant[[ 0 ]]\n),\nif (/pattern[[ 1 ]] != 0,\n  /weights[[ 1 ]] = /per_screen_quadrant[[ 1 ]]\n),\nif (/pattern[[ 2 ]] != 0,\n  /weights[[ 2 ]] = /per_screen_quadrant[[ 2 ]]\n)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-54",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 138.0, 770.5, 206.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-51",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 138.0, 735.61762261390686, 171.0, 22.0 ],
									"text" : "o.select /per_screen_quadrant"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-52",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 138.0, 706.5, 89.0, 22.0 ],
									"text" : "o.route /frames"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-53",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 138.0, 676.61762261390686, 78.0, 22.0 ],
									"text" : "r player-stats"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-43",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 325.0, 735.61762261390686, 94.0, 22.0 ],
									"text" : "o.select /pattern"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 325.0, 706.5, 101.0, 22.0 ],
									"text" : "o.route /modifiers"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-245",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 325.0, 676.61762261390686, 132.0, 22.0 ],
									"text" : "r active-voice-modifiers"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-111",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 90.0, 1817.86762261390686, 142.0, 22.0 ],
									"text" : "s all-voice-pattern-values"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-112",
									"linecount" : 3,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 90.0, 1713.5, 476.0, 57.0 ],
									"text" : "assign(\"/selected\" + \"/\" + /voice_num + \"/pattern/values\", /values),\nassign(\"/selected\" + \"/\" + /voice_num + \"/pattern/sustain\", /sustain),\ndelete(/values, /sustain)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-110",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 90.0, 1679.5, 286.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-107",
									"linecount" : 2,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 90.0, 1511.5, 378.0, 44.0 ],
									"text" : "/values = value(\"/\" + /voice_num + \"/values\"),\n/sustain = value(\"/\" + /voice_num + \"/sustain\")"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-95",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 127.0, 1412.0, 111.0, 22.0 ],
									"text" : "r all-voice-dumpout"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-61",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "FullPacket" ],
									"patching_rect" : [ 90.0, 1571.5, 286.0, 22.0 ],
									"text" : "o.route /values /sustain /update_mode /scale_length"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-59",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 90.0, 1645.5, 219.25, 22.0 ],
									"text" : "o.pack /values /sustain"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-44",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 90.0, 1609.5, 219.25, 22.0 ],
									"saved_object_attributes" : 									{
										"filename" : "patterninverter.js",
										"parameter_enable" : 0
									}
,
									"text" : "js patterninverter.js"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "FullPacket" ],
									"patching_rect" : [ 523.0, 1138.5, 211.0, 22.0 ],
									"text" : "o.route /modes /weights"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 523.0, 1106.5, 93.0, 22.0 ],
									"text" : "o.var"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 597.0, 1072.5, 48.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 597.0, 1003.5, 48.0, 22.0 ],
									"text" : "t l b"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-8",
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 626.0, 1036.5, 183.0, 23.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 47, 109, 111, 100, 101, 115, 0, 0, 44, 105, 105, 105, 105, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 3, 0, 0, 0, 4 ],
									"saved_bundle_length" : 56,
									"text" : "/modes : [0, 1, 2, 3, 4]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-184",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 523.0, 1171.5, 211.0, 22.0 ],
									"saved_object_attributes" : 									{
										"filename" : "weightedchoice.js",
										"parameter_enable" : 0
									}
,
									"text" : "js weightedchoice.js"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 597.0, 970.5, 97.0, 22.0 ],
									"text" : "o.select /weights"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-3",
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 597.0, 928.5, 218.0, 33.0 ],
									"text" : "/weights = [/0, /1, /2, /3, /4]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 597.0, 899.5, 87.0, 22.0 ],
									"text" : "o.route /weight"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-205",
									"linecount" : 5,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 597.0, 802.5, 245.0, 81.0 ],
									"text" : "/weight/0 = /moving_and_rotating,\n/weight/1 = /moving,\n/weight/2 = /rotating,\n/weight/3 = /firing,\n/weight/4 = /still"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-201",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 597.0, 768.5, 89.0, 22.0 ],
									"text" : "o.route /frames"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-199",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 597.0, 736.5, 78.0, 22.0 ],
									"text" : "r player-stats"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"source" : [ "obj-107", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-11", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-112", 0 ],
									"source" : [ "obj-110", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-92", 0 ],
									"source" : [ "obj-112", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 1 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 1 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 1 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-184", 1 ],
									"source" : [ "obj-16", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-184", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 1 ],
									"source" : [ "obj-184", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-201", 0 ],
									"source" : [ "obj-199", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-82", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-205", 0 ],
									"source" : [ "obj-201", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-205", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-245", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 1 ],
									"midpoints" : [ 38.5, 576.61762261390686, 609.0, 576.61762261390686, 609.0, 256.0, 383.5, 256.0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"source" : [ "obj-30", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 1 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-74", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 1 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 1 ],
									"source" : [ "obj-44", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 0 ],
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 0 ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 0 ],
									"source" : [ "obj-503", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 0 ],
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-52", 0 ],
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-60", 0 ],
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-110", 0 ],
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 1 ],
									"source" : [ "obj-60", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 0 ],
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-110", 1 ],
									"source" : [ "obj-61", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 2 ],
									"source" : [ "obj-61", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 1 ],
									"source" : [ "obj-61", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"source" : [ "obj-61", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 1 ],
									"source" : [ "obj-62", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 1 ],
									"source" : [ "obj-64", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 0 ],
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-66", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 0 ],
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-73", 0 ],
									"midpoints" : [ 99.5, 1231.5, 291.5, 1231.5 ],
									"order" : 0,
									"source" : [ "obj-68", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-86", 0 ],
									"order" : 1,
									"source" : [ "obj-68", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 1 ],
									"source" : [ "obj-70", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-70", 1 ],
									"source" : [ "obj-72", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-70", 0 ],
									"source" : [ "obj-73", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-72", 0 ],
									"source" : [ "obj-73", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-76", 0 ],
									"source" : [ "obj-74", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"source" : [ "obj-76", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 1 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-81", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-96", 0 ],
									"source" : [ "obj-86", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-111", 0 ],
									"source" : [ "obj-92", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-86", 1 ],
									"source" : [ "obj-95", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-107", 0 ],
									"source" : [ "obj-96", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 357.0, 2263.16179000000011, 211.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p player-time-in-game-pattern-inverter"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-183",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 2270.0, 111.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-2",
									"linecount" : 5,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 185.0, 94.0, 266.0, 96.0 ],
									"text" : "Quit the Max Application.\n\nSend Max the \"clean\" message first so it doesn't ask to save un-saved changes"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-178",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 131.0, 118.0, 22.0 ],
									"text" : "if $i1 == 1 then bang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-177",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 100.0, 62.0, 22.0 ],
									"text" : "r max-quit"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-176",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 50.0, 197.220510263168308, 55.0, 22.0 ],
									"text" : "del 1000"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-175",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 125.000000000000227, 197.220510263168308, 48.0, 22.0 ],
									"text" : "del 500"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-174",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"patching_rect" : [ 50.0, 165.72053613158414, 94.000000000000227, 22.0 ],
									"text" : "t b b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-173",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 232.102887649261447, 54.0, 35.0 ],
									"text" : ";\rmax quit"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-172",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 125.000000000000227, 232.102887649261447, 63.0, 35.0 ],
									"text" : ";\rmax clean"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-175", 0 ],
									"source" : [ "obj-174", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-176", 0 ],
									"source" : [ "obj-174", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-172", 0 ],
									"source" : [ "obj-175", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-173", 0 ],
									"source" : [ "obj-176", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-178", 0 ],
									"source" : [ "obj-177", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-174", 0 ],
									"source" : [ "obj-178", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 352.5, 2618.779411911964417, 148.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p close-max-on-game-quit"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-182",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 2367.0, -11.0, 927.0, 774.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-2",
									"linecount" : 9,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 251.0, 80.0, 266.0, 167.0 ],
									"text" : "Handle selecting the correct output audio device.\n\nIt can be tricky for Max to recognize the correct default device, so the default device name is sent from the Python application, and then adstatus is used to select this device name."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"patching_rect" : [ 50.0, 162.0, 185.0, 22.0 ],
									"text" : "t b b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-67",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 131.0, 118.0, 22.0 ],
									"text" : "if $i1 == 1 then bang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-119",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 258.0, 48.0, 22.0 ],
									"text" : "o.var"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-124",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 100.0, 91.0, 22.0 ],
									"text" : "r device-control"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-121",
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 216.0, 258.0, 187.0, 23.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 112, 114, 101, 118, 47, 111, 117, 116, 112, 117, 116, 95, 100, 101, 118, 105, 99, 101, 0, 44, 115, 0, 0, 0, 0, 0, 0 ],
									"saved_bundle_length" : 48,
									"text" : "/prev/output_device : \"\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-134",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 111.0, 508.0, 127.0, 22.0 ],
									"text" : "o.route /output_device"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-137",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 50.0, 467.0, 80.0, 22.0 ],
									"text" : "o.select /prev"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-142",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 292.0, 185.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-146",
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 50.0, 419.0, 252.0, 35.0 ],
									"text" : "/prev/output_device = /output_device"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-148",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 79.0, 225.0, 131.0, 22.0 ],
									"text" : "o.select /output_device"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-151",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 50.0, 386.0, 228.0, 22.0 ],
									"text" : "o.if /output_device != /prev/output_device"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-155",
									"linecount" : 2,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 50.0, 328.470562219619751, 195.0, 46.0 ],
									"text" : "/prev/output_device ??= \"\",\n/output_device ??= \"\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-156",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 79.0, 193.970562219619751, 81.0, 22.0 ],
									"text" : "r control-stats"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-157",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 698.0, 83.0, 22.0 ],
									"text" : "s dac-controls"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-158",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 50.0, 664.0, 161.0, 22.0 ],
									"text" : "t 1 i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-310",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 111.0, 546.61762261390686, 43.0, 22.0 ],
									"text" : "t b s"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-309",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 135.0, 577.61762261390686, 72.0, 22.0 ],
									"text" : "prepend set"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-307",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 217.0, 577.61762261390686, 109.0, 22.0 ],
									"text" : "adstatus option 1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-180",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 50.0, 625.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-181",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 111.0, 625.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-142", 0 ],
									"source" : [ "obj-119", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-142", 1 ],
									"source" : [ "obj-121", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-67", 0 ],
									"source" : [ "obj-124", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-310", 0 ],
									"source" : [ "obj-134", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-134", 0 ],
									"source" : [ "obj-137", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-142", 1 ],
									"midpoints" : [ 59.5, 498.0, 308.5, 498.0, 308.5, 286.0, 225.5, 286.0 ],
									"source" : [ "obj-137", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-155", 0 ],
									"source" : [ "obj-142", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-137", 0 ],
									"source" : [ "obj-146", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-119", 1 ],
									"source" : [ "obj-148", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-146", 0 ],
									"source" : [ "obj-151", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-151", 0 ],
									"source" : [ "obj-155", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-148", 0 ],
									"source" : [ "obj-156", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-157", 0 ],
									"source" : [ "obj-158", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-307", 0 ],
									"midpoints" : [ 201.5, 699.61762261390686, 331.5, 699.61762261390686, 331.5, 565.0, 226.5, 565.0 ],
									"source" : [ "obj-158", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-158", 0 ],
									"source" : [ "obj-180", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-119", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-121", 0 ],
									"source" : [ "obj-24", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-181", 0 ],
									"midpoints" : [ 226.5, 613.80881130695343, 120.5, 613.80881130695343 ],
									"source" : [ "obj-307", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-181", 0 ],
									"midpoints" : [ 144.5, 613.80881130695343, 120.5, 613.80881130695343 ],
									"source" : [ "obj-309", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-181", 0 ],
									"source" : [ "obj-310", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-309", 0 ],
									"source" : [ "obj-310", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-67", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 57.0, 2618.779411911964417, 126.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p output-device-select"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-168",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 2605.0, 100.0, 814.0, 596.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-2",
									"linecount" : 5,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 287.0, 116.382351517677307, 233.0, 96.0 ],
									"text" : "This value is 1 when the Python application receives a signal to Quit. This value is used to close the Max application."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-360",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.199999999999989, 51.0, 81.0, 22.0 ],
									"text" : "r control-stats"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-358",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 91.0, 319.5, 64.0, 22.0 ],
									"text" : "s max-quit"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-357",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 91.0, 288.25, 101.0, 22.0 ],
									"text" : "o.route /max_quit"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-356",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 30.199999999999989, 84.882351517677307, 107.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-355",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 30.199999999999989, 209.5, 80.0, 22.0 ],
									"text" : "o.select /prev"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-354",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 91.0, 257.5, 71.0, 22.0 ],
									"text" : "o.if /diff != 0"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-353",
									"linecount" : 5,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 30.199999999999989, 113.882351517677307, 231.0, 83.0 ],
									"text" : "/max_quit ??= 0,\n/prev/quit ??= 0,\n\n/diff = /prev/quit - /max_quit,\n/prev/quit = /max_quit"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-355", 0 ],
									"source" : [ "obj-353", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-357", 0 ],
									"source" : [ "obj-354", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-354", 0 ],
									"source" : [ "obj-355", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-356", 1 ],
									"midpoints" : [ 39.699999999999989, 244.5, 274.599999999999966, 244.5, 274.599999999999966, 73.882351517677307, 127.699999999999989, 73.882351517677307 ],
									"source" : [ "obj-355", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-353", 0 ],
									"source" : [ "obj-356", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-358", 0 ],
									"source" : [ "obj-357", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-356", 0 ],
									"source" : [ "obj-360", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 250.0, 2073.0, 95.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p send-max-quit"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-167",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1893.799999999999272, 2951.547745227813721, 85.0, 22.0 ],
					"text" : "s max-opened"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-162",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 430.499999999999773, 54.170437932014465, 83.0, 22.0 ],
					"text" : "r max-opened"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-160",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 430.499999999999773, 85.170437932014465, 123.0, 23.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 109, 97, 120, 95, 111, 112, 101, 110, 101, 100, 0, 44, 105, 0, 0, 0, 0, 0, 1 ],
					"saved_bundle_length" : 40,
					"text" : "/max_opened : 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-159",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 100.499999999999773, 2811.69487738609314, 361.0, 22.0 ],
					"saved_object_attributes" : 					{
						"allwindowsactive" : 0,
						"appicon_mac" : "",
						"appicon_win" : "",
						"audiosupport" : 1,
						"bundleidentifier" : "com.mycompany.myprogram",
						"cantclosetoplevelpatchers" : 1,
						"cefsupport" : 0,
						"copysupport" : 1,
						"database" : 0,
						"extensions" : 1,
						"gensupport" : 1,
						"midisupport" : 1,
						"noloadbangdefeating" : 1,
						"overdrive" : 1,
						"preffilename" : "Max 8 Preferences",
						"searchformissingfiles" : 1,
						"statusvisible" : 1,
						"usesearchpath" : 0
					}
,
					"text" : "standalone @cefsupport 0 @overdrive 1 @noloadbangdefeating 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-84",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1748.699999999999818, 2882.3125, 41.0, 22.0 ],
					"text" : "del 50"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-83",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2757.0, 2898.69487738609314, 151.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1629.000000000004547, 1136.420437932014465, 151.0, 20.0 ],
					"text" : "Tempo / Pattern Control",
					"textcolor" : [ 0.999995052814484, 1.0, 1.0, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-68",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2765.5, 2872.69487738609314, 134.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1480.500000000004547, 1136.420437932014465, 134.0, 20.0 ],
					"text" : "Receiving Game Data",
					"textcolor" : [ 0.999995052814484, 1.0, 1.0, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1642.953125402330443, 407.552846765074719, 121.0, 22.0 ],
					"text" : "r gain-default-volume"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 152.599999999999909, 2882.3125, 48.0, 22.0 ],
					"text" : "del 900"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 152.599999999999909, 2916.44487738609314, 29.5, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-56",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 152.599999999999909, 2950.0625, 83.0, 22.0 ],
					"text" : "s dac-controls"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 297.699999999999818, 2882.3125, 48.0, 22.0 ],
					"text" : "del 800"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 297.699999999999818, 2916.44487738609314, 29.5, 22.0 ],
					"text" : "-5."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 297.699999999999818, 2950.0625, 123.0, 22.0 ],
					"text" : "s gain-default-volume"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-166",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 7.499999999999773, 2882.44487738609314, 55.0, 22.0 ],
					"text" : "del 1500"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-164",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 442.799999999999727, 2916.93012261390686, 29.5, 22.0 ],
					"text" : "1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-165",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 442.799999999999727, 2882.3125, 48.0, 22.0 ],
					"text" : "del 700"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-163",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1748.699999999999818, 2916.93012261390686, 29.5, 22.0 ],
					"text" : "1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-136",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1458.5, 2916.93012261390686, 29.5, 22.0 ],
					"text" : "1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-132",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 442.799999999999727, 2949.8125, 94.0, 22.0 ],
					"text" : "s overdrive-load"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-130",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 587.899999999999864, 2882.3125, 48.0, 22.0 ],
					"text" : "del 600"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-128",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 587.899999999999864, 2951.547745227813721, 113.0, 22.0 ],
					"text" : "s tempo-range-load"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-127",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 732.999999999999773, 2882.3125, 48.0, 22.0 ],
					"text" : "del 500"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-126",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 732.999999999999773, 2951.547745227813721, 119.0, 22.0 ],
					"text" : "s melody-banks-load"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-120",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 1846.0, 106.0, 1212.0, 1319.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-31",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 283.0, 499.0, 222.0, 24.0 ],
									"text" : "Debug Print on scale change"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-2",
									"linecount" : 7,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 330.0, 132.359007973396274, 266.0, 132.0 ],
									"text" : "Gets the scale values and sends them to specific voices.\n\nThe \"scale-selector\" subpatch peforms input-validation, and then selects the scale values from the given scale class and type."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 50.0, 463.0, 120.0, 22.0 ],
									"text" : "o.route /scalechange"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-81",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 50.0, 431.0, 86.0, 22.0 ],
									"text" : "o.route /debug"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-503",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 403.0, 128.0, 22.0 ],
									"text" : "r debug-enable-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 499.0, 211.0, 22.0 ],
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 242.0, 369.0, 85.0, 22.0 ],
									"text" : "o.select /scale"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-73",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 242.0, 404.0, 68.5, 22.0 ],
									"text" : "t l b"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-72",
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 291.5, 436.0, 193.0, 23.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 116, 121, 112, 101, 0, 0, 0, 44, 115, 0, 0, 115, 99, 97, 108, 101, 45, 115, 101, 108, 101, 99, 116, 111, 114, 0, 0 ],
									"saved_bundle_length" : 48,
									"text" : "/type : \"scale-selector\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-70",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 242.0, 467.0, 68.5, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 50.0, 271.0, 211.0, 22.0 ],
									"text" : "t l l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 536.0, 42.0, 22.0 ],
									"text" : "o.print"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 88.0, 118.0, 22.0 ],
									"text" : "if $i1 == 1 then bang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 58.0, 58.0, 22.0 ],
									"text" : "r max-init"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 183.0, 88.0, 118.0, 22.0 ],
									"text" : "if $i1 == 1 then bang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 183.0, 58.0, 78.0, 22.0 ],
									"text" : "r music-reset"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 308.0, 133.0, 22.0 ],
									"text" : "s all-voice-scale-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 73.0, 199.0, 87.0, 22.0 ],
									"text" : "r change-scale"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-45",
									"linecount" : 3,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 132.359007973396274, 248.0, 49.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 47, 115, 99, 97, 108, 101, 47, 99, 108, 97, 115, 115, 0, 0, 0, 0, 44, 115, 0, 0, 104, 101, 112, 116, 97, 116, 111, 110, 105, 99, 0, 0, 0, 0, 0, 24, 47, 115, 99, 97, 108, 101, 47, 116, 121, 112, 101, 0, 44, 115, 0, 0, 109, 97, 106, 111, 114, 0, 0, 0, 0, 0, 0, 36, 47, 115, 99, 97, 108, 101, 47, 118, 111, 105, 99, 101, 115, 0, 0, 0, 44, 105, 105, 105, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 3 ],
									"saved_bundle_length" : 120,
									"text" : "/scale/class : \"heptatonic\",\n/scale/type : \"major\",\n/scale/voices : [1, 2, 3]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 5,
											"revision" : 5,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 2119.0, -81.0, 1212.0, 1319.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
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
										"boxes" : [ 											{
												"box" : 												{
													"fontsize" : 16.0,
													"id" : "obj-2",
													"linecount" : 4,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 302.0, 199.0, 234.0, 78.0 ],
													"text" : "Fancy way to retrieve values from a nested bundle. All this is doing is getting the values from the scale-map."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-10",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 196.0, 220.382351517677307, 71.0, 22.0 ],
													"text" : "r scale-map"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"id" : "obj-7",
													"linecount" : 13,
													"maxclass" : "o.expr.codebox",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "FullPacket", "FullPacket" ],
													"patching_rect" : [ 66.0, 390.0, 555.0, 185.0 ],
													"text" : "map(\n  lambda(\n    [voice],\n    progn(\n      assign(\"/selected/\" + voice + \"/scale/current\", /scale/current),\n      assign(\"/selected/\" + voice + \"/scale/length\", /scale/length)\n    )\n  ),\n  /scale/voices\n),\n\n/selected/scale/type = /scale/type,\n/selected/scale/class = /scale/class"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-32",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "FullPacket" ],
													"patching_rect" : [ 66.0, 590.0, 97.0, 22.0 ],
													"text" : "o.route /selected"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-31",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "FullPacket" ],
													"patching_rect" : [ 66.0, 355.0, 109.0, 22.0 ],
													"text" : "o.select /scale"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-28",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 66.0, 255.0, 149.0, 22.0 ],
													"text" : "o.union"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-27",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 8,
															"minor" : 5,
															"revision" : 5,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"classnamespace" : "box",
														"rect" : [ 2476.0, 65.0, 790.0, 636.0 ],
														"bglocked" : 0,
														"openinpresentation" : 0,
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
														"boxes" : [ 															{
																"box" : 																{
																	"fontsize" : 16.0,
																	"id" : "obj-6",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 96.0, 43.0, 229.0, 24.0 ],
																	"text" : "Validation for input addresses"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-3",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 169.0, 332.0, 256.0, 22.0 ],
																	"text" : "/scale/voices must be defined in scale-selector"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-4",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 169.0, 366.0, 79.0, 22.0 ],
																	"text" : "print ERROR"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-2",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "FullPacket", "FullPacket" ],
																	"patching_rect" : [ 50.0, 304.0, 138.0, 22.0 ],
																	"text" : "o.if bound(/scale/voices)"
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 0,
																	"id" : "obj-9",
																	"linecount" : 3,
																	"maxclass" : "o.expr.codebox",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "FullPacket", "FullPacket" ],
																	"patching_rect" : [ 50.0, 397.382351517677307, 285.0, 57.0 ],
																	"text" : "# Label as an address\n/member/scale/class = \"/\" + /scale/class,\n/member/scale/type = \"/\" + /scale/type"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-23",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 169.0, 235.0, 245.0, 22.0 ],
																	"text" : "/scale/type must be defined in scale-selector"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-24",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 169.0, 269.0, 79.0, 22.0 ],
																	"text" : "print ERROR"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-17",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 169.0, 133.0, 249.0, 22.0 ],
																	"text" : "/scale/class must be defined in scale-selector"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-15",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 169.0, 167.0, 79.0, 22.0 ],
																	"text" : "print ERROR"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-14",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "FullPacket", "FullPacket" ],
																	"patching_rect" : [ 50.0, 202.0, 138.0, 22.0 ],
																	"text" : "o.if bound(/scale/type)"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-13",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "FullPacket", "FullPacket" ],
																	"patching_rect" : [ 50.0, 100.0, 138.0, 22.0 ],
																	"text" : "o.if bound(/scale/class)"
																}

															}
, 															{
																"box" : 																{
																	"annotation" : "Input Bundle (OSC)",
																	"comment" : "Input Bundle (OSC)",
																	"hint" : "Input Bundle (OSC)",
																	"id" : "obj-25",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"annotation" : "Output Bundle (OSC)",
																	"comment" : "Output Bundle (OSC)",
																	"hint" : "Output Bundle (OSC)",
																	"id" : "obj-26",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 50.0, 470.0, 30.0, 30.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-14", 0 ],
																	"source" : [ "obj-13", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-17", 0 ],
																	"source" : [ "obj-13", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-2", 0 ],
																	"source" : [ "obj-14", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-23", 0 ],
																	"source" : [ "obj-14", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-15", 0 ],
																	"source" : [ "obj-17", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-3", 0 ],
																	"source" : [ "obj-2", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-9", 0 ],
																	"source" : [ "obj-2", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-24", 0 ],
																	"source" : [ "obj-23", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-13", 0 ],
																	"source" : [ "obj-25", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-4", 0 ],
																	"source" : [ "obj-3", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-26", 0 ],
																	"source" : [ "obj-9", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 66.0, 220.382351517677307, 99.0, 22.0 ],
													"saved_object_attributes" : 													{
														"description" : "",
														"digest" : "",
														"globalpatchername" : "",
														"tags" : ""
													}
,
													"text" : "p input-validation"
												}

											}
, 											{
												"box" : 												{
													"annotation" : "Scale class and type (OSC)",
													"comment" : "Scale class and type (OSC)",
													"hint" : "Scale class and type (OSC)",
													"id" : "obj-1",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 66.0, 177.382351517677307, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"id" : "obj-258",
													"linecount" : 3,
													"maxclass" : "o.expr.codebox",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "FullPacket", "FullPacket" ],
													"patching_rect" : [ 66.0, 287.382351999999969, 704.0, 57.0 ],
													"text" : "/scale/types = getbundlemember(/scales, value(/member/scale/class)),\n/scale/current = getbundlemember(/scale/types, value(/member/scale/type)),\n/scale/length = length( /scale/current )"
												}

											}
, 											{
												"box" : 												{
													"annotation" : "Current Scale values and length (OSC)",
													"comment" : "Current Scale values and length (OSC)",
													"hint" : "Current Scale values and length (OSC)",
													"id" : "obj-22",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 66.0, 629.000000000000114, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 1 ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-31", 0 ],
													"source" : [ "obj-258", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 0 ],
													"source" : [ "obj-27", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-258", 0 ],
													"source" : [ "obj-28", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"source" : [ "obj-31", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"source" : [ "obj-32", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-32", 0 ],
													"source" : [ "obj-7", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 50.0, 234.0, 102.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p scale-selector"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"midpoints" : [ 192.5, 121.679503986698137, 59.5, 121.679503986698137 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"midpoints" : [ 59.5, 121.679503986698137, 59.5, 121.679503986698137 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-19", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-73", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 0 ],
									"source" : [ "obj-503", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 1 ],
									"source" : [ "obj-70", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-70", 1 ],
									"source" : [ "obj-72", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-70", 0 ],
									"source" : [ "obj-73", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-72", 0 ],
									"source" : [ "obj-73", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-81", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 32.0, 2415.0, 125.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p voice-scale-selector"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-117",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 878.099999999999682, 2882.3125, 48.0, 22.0 ],
					"text" : "del 400"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-116",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1023.199999999999818, 2882.3125, 48.0, 22.0 ],
					"text" : "del 350"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-114",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 878.099999999999682, 2951.547745227813721, 113.0, 22.0 ],
					"text" : "s default-voice-load"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-113",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1023.199999999999818, 2951.547745227813721, 113.0, 22.0 ],
					"text" : "s default-scale-load"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-105",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1603.600000000000364, 2882.3125, 48.0, 22.0 ],
					"text" : "del 100"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-93",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1458.5, 2882.3125, 48.0, 22.0 ],
					"text" : "del 200"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-91",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3174.287396525342047, 239.014688014984131, 95.0, 22.0 ],
					"text" : "r pattr-switch-on"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-90",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2396.047730002400385, 162.949793100357056, 95.0, 22.0 ],
					"text" : "r pattr-switch-on"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-89",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3399.286458735663473, 239.014688014984131, 94.0, 22.0 ],
					"text" : "r pattr-read-json"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-88",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1458.5, 2949.8125, 97.0, 22.0 ],
					"text" : "s pattr-switch-on"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-87",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1603.600000000000364, 2951.547745227813721, 96.0, 22.0 ],
					"text" : "s pattr-read-json"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-86",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 288.533333333333303, 54.170437932014465, 104.0, 22.0 ],
					"text" : "r max-fully-loaded"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-85",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 7.499999999999773, 2951.0625, 106.0, 22.0 ],
					"text" : "s max-fully-loaded"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 10.0, 54.170437932014465, 88.0, 22.0 ],
					"text" : "r udp-metro-on"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-70",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1748.699999999999818, 2951.547745227813721, 90.0, 22.0 ],
					"text" : "s udp-metro-on"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 14,
					"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang" ],
					"patching_rect" : [ 7.499999999999773, 2848.0625, 1905.300000000000182, 22.0 ],
					"text" : "t b b b b b b b b b b b b b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 7.499999999999773, 2811.69487738609314, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-55",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 288.533333333333303, 85.170437932014465, 123.0, 23.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 109, 97, 120, 95, 108, 111, 97, 100, 101, 100, 0, 44, 105, 0, 0, 0, 0, 0, 1 ],
					"saved_bundle_length" : 40,
					"text" : "/max_loaded : 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 288.533333333333303, 118.905734896659851, 167.0, 22.0 ],
					"text" : "udpsend 127.0.0.1 8002 OSC"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-139",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 252.14285714285711, 512.694514513015747, 91.0, 22.0 ],
					"text" : "s upgrade-stats"
				}

			}
, 			{
				"box" : 				{
					"background_color" : [ 0.199999153614044, 0.200005099177361, 0.20000171661377, 1.0 ],
					"flash_color" : [ 0.986251831054688, 0.007236152887344, 0.027423052117229, 1.0 ],
					"fontface" : 0,
					"id" : "obj-140",
					"linecount" : 7,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 252.14285714285711, 382.91174840927124, 322.0, 110.0 ],
					"presentation" : 1,
					"presentation_linecount" : 6,
					"presentation_rect" : [ 1128.999999999999545, 1703.702894151210785, 405.000000000000227, 97.0 ],
					"text" : "/total_dropped : 2,\n/picked_up : 2,\n/missed : 0,\n/time/between_collecting : [984, 2112., 984, 3240, 2],\n/time/lifespan : [984, 2112., 984, 3240, 2],\n/percent/collected : 100.",
					"textcolor" : [ 0.999995052814484, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-123",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1350.125, 214.487853646278381, 93.0, 22.0 ],
					"text" : "s device-control"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1631.453125402330443, 584.785498023033142, 81.0, 22.0 ],
					"text" : "r dac-controls"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-206",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 1474.0, -211.0, 2492.0, 1319.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-12",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 706.0, 1504.691124439239502, 449.0, 42.0 ],
									"text" : "Route based on whether the tempo should scale to new weapon range, decrease, increase, or stay the same"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-10",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 706.0, 1231.691124439239502, 295.0, 78.0 ],
									"text" : "Check if the player has swapped weapons, or if the player has had a period of continuous movement or continuous non-movement"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-6",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1455.0, 397.691124439239502, 237.0, 42.0 ],
									"text" : "Handle swapping weapons and saving previous tempo range"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-3",
									"linecount" : 10,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 150.0, 331.191124439239502, 397.0, 185.0 ],
									"text" : "Handle tempo modulation based on swapping weapons and player movement.\n\nContinuous movement and rotation will cause the tempo to increase. Staying still will cause the tempo to decrease.\n\nThe tempo is bounded by a range that is defined per Weapon. On weapon swap, the current tempo is scaled to the range of the new weapon."
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-5",
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 929.5, 335.0, 189.0, 30.0 ],
									"text" : "/prev/selected = /selected"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 929.5, 301.0, 214.5, 22.0 ],
									"text" : "t l l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "int", "int" ],
									"patching_rect" : [ 15.0, 43.0, 1317.125000357618319, 22.0 ],
									"text" : "t i i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-128",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1029.5, 74.0, 111.0, 22.0 ],
									"text" : "r tempo-range-load"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 14.5, 1496.0, 48.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-34",
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 43.5, 1468.25, 150.0, 23.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 105, 110, 95, 116, 114, 97, 110, 115, 105, 116, 105, 111, 110, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0 ],
									"saved_bundle_length" : 44,
									"text" : "/in_transition : 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 14.5, 1432.970562219619751, 114.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 204.5, 1589.220590591430664, 132.0, 22.0 ],
									"text" : "o.if /selected_delta != 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 204.5, 1726.602967977523804, 59.0, 22.0 ],
									"text" : "$1, $2 $3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 204.5, 1758.970590591430664, 57.0, 22.0 ],
									"text" : "line 1. 10"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 204.5, 1691.602967977523804, 137.0, 22.0 ],
									"text" : "o.route /tempo/line_msg"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-16",
									"linecount" : 2,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 204.5, 1621.220590591430664, 398.0, 44.0 ],
									"text" : "/new_bpm = scale(/bpm, /prev/min, /prev/max, /min, /max),\n/tempo/line_msg = [/bpm, /new_bpm, 2000]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "FullPacket" ],
									"patching_rect" : [ 14.5, 1401.073530197143555, 209.0, 22.0 ],
									"text" : "o.select /prev/selected /selected"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 14.5, 921.25, 675.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 1125.0, 717.970562219619751, 86.0, 22.0 ],
									"text" : "o.route /tempo"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 1125.0, 749.970562219619751, 118.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "FullPacket" ],
									"patching_rect" : [ 1125.0, 680.794079899787903, 217.0, 22.0 ],
									"text" : "o.select /tempo /selected"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 14.5, 888.25, 1129.5, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-234",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1313.125000357618319, 137.323517680168152, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-232",
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1313.125000357618319, 172.323517680168152, 146.0, 23.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 112, 114, 101, 118, 47, 115, 101, 108, 101, 99, 116, 101, 100, 0, 0, 44, 105, 0, 0, -1, -1, -1, -1 ],
									"saved_bundle_length" : 44,
									"text" : "/prev/selected : -1"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-231",
									"linecount" : 16,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 1125.0, 441.691124439239502, 563.0, 223.0 ],
									"text" : "/tempo/range = getbundlemember(/weapon/tempo_range, \"/\" + /selected),\n/tempo/min = /tempo/range[[ 0 ]],\n/tempo/max = /tempo/range[[ 1 ]],\n\n# Get previous tempo range\nif (/prev/selected == -1,\n  progn(\n    /tempo/prev/min = /tempo/min,\n    /tempo/prev/max = /tempo/max\n  ),\n  progn(\n    /prev/tempo/range = getbundlemember(/weapon/tempo_range, \"/\" + /prev/selected),\n    /tempo/prev/min = /prev/tempo/range[[ 0 ]],\n    /tempo/prev/max = /prev/tempo/range[[ 1 ]]\n  )\n)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-226",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 929.5, 214.323517680168152, 402.625000357618319, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-225",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 929.5, 373.5, 80.0, 22.0 ],
									"text" : "o.select /prev"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-224",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 1125.0, 412.691124439239502, 132.0, 22.0 ],
									"text" : "o.if /selected_delta != 0"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-223",
									"linecount" : 2,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 929.5, 246.823491811752319, 403.0, 44.0 ],
									"text" : "/prev/selected ??= -1,\n/selected_delta = /selected - /prev/selected"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-216",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 929.5, 179.323517680168152, 119.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-212",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 929.5, 145.323517680168152, 87.0, 22.0 ],
									"text" : "r weapon-stats"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-210",
									"linecount" : 4,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1029.5, 105.323517680168152, 248.0, 62.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 84, 47, 119, 101, 97, 112, 111, 110, 47, 116, 101, 109, 112, 111, 95, 114, 97, 110, 103, 101, 0, 44, 46, 0, 0, 0, 0, 0, 56, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 48, 0, 0, 44, 105, 105, 0, 0, 0, 0, 120, 0, 0, 0, -76, 0, 0, 0, 16, 47, 49, 0, 0, 44, 105, 105, 0, 0, 0, 0, 100, 0, 0, 0, -96 ],
									"saved_bundle_length" : 104,
									"text" : "/weapon/tempo_range : {\n  /0 : [120, 180],\n  /1 : [100, 160]\n}"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 664.062500178809159, 714.691124439239502, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-4",
									"linecount" : 2,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 664.062500178809159, 743.970562219619751, 150.0, 36.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 112, 114, 101, 118, 47, 109, 111, 118, 105, 110, 103, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 112, 114, 101, 118, 47, 115, 116, 105, 108, 108, 0, 44, 105, 0, 0, 0, 0, 0, 0 ],
									"saved_bundle_length" : 68,
									"text" : "/prev/moving : 0,\n/prev/still : 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-205",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 150.0, 717.970562219619751, 69.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-204",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "FullPacket" ],
									"patching_rect" : [ 150.0, 684.970562219619751, 119.0, 22.0 ],
									"text" : "o.select /moving /still"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-201",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 711.166666666666742, 1833.102967977523804, 92.0, 22.0 ],
									"text" : "s transport-msg"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-202",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 711.166666666666742, 1800.602967977523804, 59.0, 22.0 ],
									"text" : "tempo $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-199",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 15.0, 8.25, 65.0, 22.0 ],
									"text" : "r game-init"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-198",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 15.0, 855.897044539451599, 154.0, 22.0 ],
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-197",
									"linecount" : 3,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 711.166666666666742, 1621.220590591430664, 300.0, 57.0 ],
									"text" : "/new_bpm = /bpm - /tempo_change,\n/new_bpm = clip(/new_bpm, /min, /max),\n/tempo/line_msg = [/bpm, /new_bpm, 500]"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-196",
									"linecount" : 20,
									"maxclass" : "o.display",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 706.0, 921.25, 299.0, 277.0 ],
									"text" : "/moving : 1518,\n/still : 1007,\n/fps : 60,\n/bpm : 120.551,\n/prev/moving : 1518,\n/prev/still : 940,\n/prev/min : 120,\n/prev/max : 180,\n/range : [120, 180],\n/min : 120,\n/max : 180,\n/selected : 0,\n/prev/selected : 0,\n/in_transition : 0,\n/tempo_change : 1,\n/sec_threshold : 2.,\n/moving_delta : 0,\n/still_delta : 67,\n/selected_delta : 0,\n/mode : 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-188",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 711.166666666666742, 1726.602967977523804, 59.0, 22.0 ],
									"text" : "$1, $2 $3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-189",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 711.166666666666742, 1691.602967977523804, 137.0, 22.0 ],
									"text" : "o.route /tempo/line_msg"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-190",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 711.166666666666742, 1758.970590591430664, 57.0, 22.0 ],
									"text" : "line 1. 10"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-187",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1217.833333333333485, 1726.602967977523804, 59.0, 22.0 ],
									"text" : "$1, $2 $3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-185",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 1217.833333333333485, 1691.602967977523804, 137.0, 22.0 ],
									"text" : "o.route /tempo/line_msg"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-184",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 1217.833333333333485, 1758.970590591430664, 57.0, 22.0 ],
									"text" : "line 1. 10"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-183",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 711.166666666666742, 1589.220590591430664, 178.0, 22.0 ],
									"text" : "o.if (/still / /fps) > /sec_threshold"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-182",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 1217.833333333333485, 1589.220590591430664, 199.0, 22.0 ],
									"text" : "o.if (/moving / /fps) > /sec_threshold"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-181",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 1724.5, 1647.602967977523804, 80.0, 22.0 ],
									"text" : "o.select /prev"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-180",
									"linecount" : 3,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 1217.833333333333485, 1621.220590591430664, 300.0, 57.0 ],
									"text" : "/new_bpm = /bpm + /tempo_change,\n/new_bpm = clip(/new_bpm, /min, /max),\n/tempo/line_msg = [/bpm, /new_bpm, 500]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-179",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 414.0, 717.970562219619751, 89.0, 22.0 ],
									"text" : "r transport-vals"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-178",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 414.0, 750.970562219619751, 86.0, 22.0 ],
									"text" : "o.route /tempo"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-177",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 150.0, 786.25, 283.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-174",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "FullPacket", "FullPacket", "FullPacket", "FullPacket" ],
									"patching_rect" : [ 204.5, 1550.602967977523804, 1539.0, 22.0 ],
									"text" : "o.cond /mode == 2\\, /mode == 1\\, /mode == 0"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-173",
									"linecount" : 2,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 1724.5, 1589.220590591430664, 165.0, 48.0 ],
									"text" : "/prev/moving = /moving,\n/prev/still = /still"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-167",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 150.0, 821.25, 533.062500178809159, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-166",
									"linecount" : 31,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 14.5, 954.279437780380249, 668.562500178809159, 428.0 ],
									"text" : "/tempo_change ??= 1,\n/sec_threshold ??= 2.,\n/in_transition ??= 0,\n/selected ??= 0,\n\n/prev/moving ??= 0.,\n/prev/still ??= 0.,\n/prev/selected ??= -1,\n\n/moving_delta = /moving - /prev/moving,\n/still_delta = /still - /prev/still,\n/selected_delta = /prev/selected - /selected,\n/prev/selected = /selected,\n\n/mode = -1,\n# weapon change, update tempo range\nif ( /selected_delta != 0,\n  progn(\n    /mode = 2,\n    /in_transition = 1\n  )\n),\n# continuous movement\nif ( /in_transition == 0 && /moving_delta != 0 && /still_delta < /fps && /mode < 0,\n  /mode = 0\n),\n# continious non-movement\nif ( /in_transition == 0 && /moving_delta < (/fps * 2 ) && /still_delta != 0 && /mode < 0,\n  /mode = 1\n)\n\n"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-73",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 150.0, 652.0, 89.0, 22.0 ],
									"text" : "o.route /frames"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-67",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 303.125000357618774, 717.970562219619751, 73.0, 22.0 ],
									"text" : "o.select /fps"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-64",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 150.0, 750.970562219619751, 172.125000357618774, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 303.125000357618774, 684.970562219619751, 81.0, 22.0 ],
									"text" : "r control-stats"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-56",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 150.0, 619.0, 78.0, 22.0 ],
									"text" : "r player-stats"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-224", 0 ],
									"source" : [ "obj-1", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 1 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-210", 0 ],
									"source" : [ "obj-128", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-166", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-174", 0 ],
									"source" : [ "obj-15", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 1 ],
									"source" : [ "obj-15", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"order" : 1,
									"source" : [ "obj-166", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-196", 0 ],
									"midpoints" : [ 24.0, 1383.279437780380249, 698.5, 1383.279437780380249, 698.5, 914.279437780380249, 715.5, 914.279437780380249 ],
									"order" : 0,
									"source" : [ "obj-166", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-198", 1 ],
									"source" : [ "obj-167", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-181", 0 ],
									"source" : [ "obj-173", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-173", 0 ],
									"source" : [ "obj-174", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-182", 0 ],
									"source" : [ "obj-174", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-183", 0 ],
									"source" : [ "obj-174", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-174", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-167", 0 ],
									"source" : [ "obj-177", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-177", 1 ],
									"source" : [ "obj-178", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-178", 0 ],
									"source" : [ "obj-179", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-185", 0 ],
									"source" : [ "obj-180", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-167", 1 ],
									"midpoints" : [ 1734.0, 1683.529437780380249, 1902.562500178809387, 1683.529437780380249, 1902.562500178809387, 795.0, 673.562500178809159, 795.0 ],
									"source" : [ "obj-181", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-180", 0 ],
									"source" : [ "obj-182", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-197", 0 ],
									"source" : [ "obj-183", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-202", 0 ],
									"midpoints" : [ 1227.333333333333485, 1792.286779284477234, 720.666666666666742, 1792.286779284477234 ],
									"source" : [ "obj-184", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-187", 0 ],
									"source" : [ "obj-185", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-184", 0 ],
									"source" : [ "obj-187", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-190", 0 ],
									"source" : [ "obj-188", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-188", 0 ],
									"source" : [ "obj-189", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-202", 0 ],
									"midpoints" : [ 214.0, 1792.286779284477234, 720.666666666666742, 1792.286779284477234 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"midpoints" : [ 252.0, 1792.970590591430664, 197.5, 1792.970590591430664, 197.5, 1461.25, 53.0, 1461.25 ],
									"source" : [ "obj-19", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-202", 0 ],
									"source" : [ "obj-190", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-189", 0 ],
									"source" : [ "obj-197", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-198", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-199", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-198", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-234", 0 ],
									"source" : [ "obj-2", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-2", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-201", 0 ],
									"source" : [ "obj-202", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-205", 1 ],
									"source" : [ "obj-204", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-205", 0 ],
									"source" : [ "obj-204", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"source" : [ "obj-205", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-216", 1 ],
									"source" : [ "obj-210", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-216", 0 ],
									"source" : [ "obj-212", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-226", 0 ],
									"source" : [ "obj-216", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-223", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-231", 0 ],
									"source" : [ "obj-224", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-226", 1 ],
									"midpoints" : [ 939.0, 402.941140294075012, 1412.312500178809387, 402.941140294075012, 1412.312500178809387, 206.323517680168152, 1322.625000357618319, 206.323517680168152 ],
									"source" : [ "obj-225", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-223", 0 ],
									"source" : [ "obj-226", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-231", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-226", 1 ],
									"source" : [ "obj-232", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-232", 0 ],
									"source" : [ "obj-234", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 1 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 1 ],
									"midpoints" : [ 24.0, 1530.0, 698.5, 1530.0, 698.5, 914.25, 680.0, 914.25 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-167", 1 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-225", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-73", 0 ],
									"source" : [ "obj-56", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-67", 0 ],
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-177", 0 ],
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 1 ],
									"source" : [ "obj-67", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-204", 0 ],
									"source" : [ "obj-73", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 1 ],
									"source" : [ "obj-9", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 32.0, 2231.470561999999973, 211.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p player-movement-tempo-modulation"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-161",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 1734.0, 100.0, 1091.0, 643.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 606.0, 234.13239324092865, 158.0, 22.0 ],
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 606.0, 200.0, 126.0, 22.0 ],
									"text" : "if $i1 > 0 then 1 else 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 606.0, 166.13239324092865, 113.0, 22.0 ],
									"text" : "o.route /curr_health"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 606.0, 127.5147864818573, 78.0, 22.0 ],
									"text" : "r player-stats"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 606.0, 264.0, 45.0, 22.0 ],
									"text" : "0 1000"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 745.0, 127.5147864818573, 115.0, 22.0 ],
									"text" : "r on-melody-change"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-83",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 404.25, 362.75, 201.0, 60.0 ],
									"text" : "Handle volume control on application start, stop, and when melodies change."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 484.0, 264.0, 55.0, 22.0 ],
									"text" : "0.1 1500"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 484.0, 234.13239324092865, 109.0, 22.0 ],
									"text" : "r volume-long-fade"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 322.0, 267.75, 32.0, 22.0 ],
									"text" : "0 $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 322.0, 234.13239324092865, 147.0, 22.0 ],
									"text" : "if $i1 == 1 then 0 else 500"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 322.0, 200.0, 72.0, 22.0 ],
									"text" : "r volume-off"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "float" ],
									"patching_rect" : [ 227.0, 332.0, 57.0, 22.0 ],
									"text" : "t f f"
								}

							}
, 							{
								"box" : 								{
									"annotation" : "Output Signal (2)",
									"comment" : "Output Signal (2)",
									"hint" : "Output Signal (2)",
									"id" : "obj-6",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 307.0, 423.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"annotation" : "Output Signal (1)",
									"comment" : "Output Signal (1)",
									"hint" : "Output Signal (1)",
									"id" : "obj-5",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 165.0, 423.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"annotation" : "Input Signal (2)",
									"comment" : "Input Signal (2)",
									"hint" : "Input Signal (2)",
									"id" : "obj-3",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 307.0, 324.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"annotation" : "Input Signal (1)",
									"comment" : "Input Signal (1)",
									"hint" : "Input Signal (1)",
									"id" : "obj-2",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 165.0, 324.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 165.0, 381.75, 81.0, 22.0 ],
									"text" : "*~ 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-373",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 227.0, 300.75, 57.0, 22.0 ],
									"text" : "line 0. 10"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-374",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 227.0, 267.75, 49.0, 22.0 ],
									"text" : "0.1 500"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-375",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 227.0, 234.13239324092865, 72.0, 22.0 ],
									"text" : "r volume-on"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-376",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 307.0, 381.75, 81.0, 22.0 ],
									"text" : "*~ 0."
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-373", 0 ],
									"midpoints" : [ 331.5, 294.75, 236.5, 294.75 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-376", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-373", 0 ],
									"midpoints" : [ 493.5, 294.875, 236.5, 294.875 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-373", 0 ],
									"midpoints" : [ 615.5, 294.875, 236.5, 294.875 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-373", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-373", 0 ],
									"source" : [ "obj-374", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-374", 0 ],
									"source" : [ "obj-375", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-376", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 1 ],
									"source" : [ "obj-68", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 1 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-376", 1 ],
									"midpoints" : [ 274.5, 365.375, 378.5, 365.375 ],
									"source" : [ "obj-7", 1 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 1619.953125402330443, 333.552815318107605, 295.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p max-init-volume-control"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-143",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 1474.0, -211.0, 2492.0, 1319.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-12",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 798.25, 1229.999981219619713, 231.0, 60.0 ],
									"text" : "As the signal is overdriven, decrease the overal gain to keep the volume consistent."
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-83",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 342.25, 139.999981219619713, 366.0, 78.0 ],
									"text" : "Handle signal overdrive based on Player's current health. The more health the player loses, the more the signal is overdrived. This is used to signal to the player how much health they have left."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 389.0, 1153.0, 77.0, 22.0 ],
									"text" : "-10. -5. 2000"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 723.5, 1305.897041613906822, 123.0, 22.0 ],
									"text" : "s gain-default-volume"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 723.5, 1233.779418999999962, 59.0, 22.0 ],
									"text" : "$1, $2 $3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 723.5, 1267.897041613906822, 57.0, 22.0 ],
									"text" : "line 0. 10"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 306.0, 1267.897041613906822, 57.0, 22.0 ],
									"text" : "line 1. 10"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 306.0, 1234.0, 49.0, 22.0 ],
									"text" : "1. 1000"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-132",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 399.0, 1268.0, 92.0, 22.0 ],
									"text" : "r overdrive-load"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-45",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 311.0, 1153.0, 62.0, 22.0 ],
									"text" : "8. 1. 2000"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-44",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 311.0, 1118.0, 111.0, 22.0 ],
									"text" : "if $i1 > 1 then bang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-43",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 311.0, 1085.0, 111.0, 22.0 ],
									"text" : "o.route /play_count"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 311.0, 1052.0, 146.0, 22.0 ],
									"text" : "o.if /play_count_delta != 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 250.0, 1008.0, 80.0, 22.0 ],
									"text" : "o.select /prev"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 250.0, 891.0, 350.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-39",
									"linecount" : 4,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 250.0, 925.999981219619713, 350.0, 70.0 ],
									"text" : "/prev/play_count ??= 0,\n\n/play_count_delta = /play_count - /prev/play_count,\n/prev/play_count = /play_count"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 250.0, 859.0, 75.0, 22.0 ],
									"text" : "r game-stats"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 306.0, 1202.0, 65.0, 22.0 ],
									"text" : "r menu-init"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 222.5, 822.0, 410.0, 22.0 ],
									"text" : "t l l"
								}

							}
, 							{
								"box" : 								{
									"annotation" : "Input Signal (2)",
									"comment" : "Input Signal (2)",
									"hint" : "Input Signal (2)",
									"id" : "obj-15",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 567.5, 1259.897041613906822, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"annotation" : "Output Signal (2)",
									"comment" : "Output Signal (2)",
									"hint" : "Output Signal (2)",
									"id" : "obj-16",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 567.5, 1341.897041613906822, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 613.5, 1233.779418999999962, 59.0, 22.0 ],
									"text" : "$1, $2 $3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 613.5, 1267.897041613906822, 57.0, 22.0 ],
									"text" : "line 0. 10"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 567.5, 1305.897041613906822, 65.0, 22.0 ],
									"text" : "overdrive~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 144.5, 346.999981219619713, 102.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 144.5, 735.0, 97.0, 22.0 ],
									"text" : "o.select /prev"
								}

							}
, 							{
								"box" : 								{
									"annotation" : "Input Signal (1)",
									"comment" : "Input Signal (1)",
									"hint" : "Input Signal (1)",
									"id" : "obj-140",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 176.5, 1259.897041613906822, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"annotation" : "Output Signal (1)",
									"comment" : "Output Signal (1)",
									"hint" : "Output Signal (1)",
									"id" : "obj-142",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 176.5, 1341.897041613906822, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-127",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 222.5, 1233.779418999999962, 59.0, 22.0 ],
									"text" : "$1, $2 $3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-124",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "FullPacket" ],
									"patching_rect" : [ 222.5, 785.779418999999962, 1021.0, 22.0 ],
									"text" : "o.route /od/line_msg /volume/line_msg"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-123",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 4.0, 258.617603833526573, 159.5, 22.0 ],
									"text" : "t l l"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-119",
									"linecount" : 26,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 144.5, 372.999981219619713, 408.0, 351.0 ],
									"text" : "/prev/od ??= 1.,\n/prev/volume ??= -5,\n/ms = 500,\n\nif ( /curr_health == /max_health,\n  /toggle = 1,\n  /toggle = 2\n),\n\n/od/curr = float32((/max_health - /curr_health) + 1),\n\nif (/od/curr < 8,\n  /od/curr = scale(/od/curr, 1., 7., 1., 3.),\n  /od/curr = scale(/od/curr, 8., 11., 3.5, 8.)\n),\n\n/od/curr = clip(/od/curr, 1., 12.),\n/volume/db = scale(/od/curr, 1., 8., -5, -10),\n\n/od/delta = /prev/od - /od/curr,\n/od/line_ms = /ms * /od/delta,\n\n/od/line_msg = [/prev/od, /od/curr, /od/line_ms],\n/volume/line_msg = [/prev/volume, /volume/db, /od/line_ms],\n/prev/od = /od/curr,\n/prev/volume = /volume/db"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-114",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 4.0, 109.999981219619713, 131.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-113",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 4.0, 291.867603833526573, 120.0, 22.0 ],
									"text" : "o.select /prev/health"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-105",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 4.0, 224.999981219619713, 120.0, 22.0 ],
									"text" : "o.if /health_delta != 0"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-93",
									"linecount" : 4,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 4.0, 142.999981219619713, 305.0, 72.0 ],
									"text" : "/prev/health ??= /max_health,\n\n/health_delta = /curr_health - /prev/health,\n/prev/health = /curr_health"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-90",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 222.5, 1267.897041613906822, 57.0, 22.0 ],
									"text" : "line 0. 10"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-89",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 4.0, 77.999981219619713, 102.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-88",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "FullPacket" ],
									"patching_rect" : [ 4.0, 42.999981219619713, 185.0, 22.0 ],
									"text" : "o.select /max_health /curr_health"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-87",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 4.0, 7.999981219619713, 78.0, 22.0 ],
									"text" : "r player-stats"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 176.5, 1305.897041613906822, 65.0, 22.0 ],
									"text" : "overdrive~"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-119", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-123", 0 ],
									"source" : [ "obj-105", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"midpoints" : [ 398.5, 1183.948520806953411, 733.0, 1183.948520806953411 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-114", 1 ],
									"midpoints" : [ 13.5, 329.867603833526573, 324.5, 329.867603833526573, 324.5, 98.999981219619713, 125.5, 98.999981219619713 ],
									"source" : [ "obj-113", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-93", 0 ],
									"source" : [ "obj-114", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-119", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-123", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-113", 0 ],
									"source" : [ "obj-123", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-124", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-124", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-90", 0 ],
									"source" : [ "obj-127", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 1 ],
									"midpoints" : [ 408.5, 1299.448520806953411, 623.0, 1299.448520806953411 ],
									"order" : 0,
									"source" : [ "obj-132", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 1 ],
									"midpoints" : [ 408.5, 1300.448520806953411, 232.0, 1300.448520806953411 ],
									"order" : 1,
									"source" : [ "obj-132", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 0 ],
									"source" : [ "obj-140", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 1 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-127", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-21", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 1 ],
									"midpoints" : [ 315.5, 1299.397041613906822, 623.0, 1299.397041613906822 ],
									"order" : 0,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 1 ],
									"midpoints" : [ 315.5, 1299.397041613906822, 232.0, 1299.397041613906822 ],
									"order" : 1,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 1 ],
									"midpoints" : [ 259.5, 1040.0, 607.0, 1040.0, 607.0, 880.0, 590.5, 880.0 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-41", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"midpoints" : [ 320.5, 1146.0, 398.5, 1146.0 ],
									"order" : 0,
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"order" : 1,
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-127", 0 ],
									"midpoints" : [ 320.5, 1192.389709499999981, 232.0, 1192.389709499999981 ],
									"order" : 1,
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"midpoints" : [ 320.5, 1192.389709499999981, 623.0, 1192.389709499999981 ],
									"order" : 0,
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-142", 0 ],
									"source" : [ "obj-68", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 1 ],
									"midpoints" : [ 154.0, 768.0, 576.5, 768.0, 576.5, 337.999981219619713, 237.0, 337.999981219619713 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-124", 0 ],
									"source" : [ "obj-8", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-88", 0 ],
									"source" : [ "obj-87", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-89", 1 ],
									"source" : [ "obj-88", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-89", 0 ],
									"source" : [ "obj-88", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-114", 0 ],
									"source" : [ "obj-89", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 1 ],
									"source" : [ "obj-90", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-105", 0 ],
									"source" : [ "obj-93", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 1619.953125402330443, 369.552815318107605, 295.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p player-health-overdrive-modulation"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1025.223423569591205, 197.823435068130493, 65.0, 22.0 ],
					"text" : "tempo 135"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-238",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 1474.0, -93.0, 2006.0, 1319.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-72",
									"linecount" : 8,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 369.0, 193.499974131584167, 266.0, 149.0 ],
									"text" : "Change the scale class on weapon swaps.\n\nWeapon 0 selects 7-tone scales, Weapon 1 selects 5-tone scales.\n\nThis affects voices 2 and 3, voice 1 will always be the 7-tone scale."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 167.166666666666657, 530.0, 95.5, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-48",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 90.666666666666657, 597.0, 89.0, 22.0 ],
									"text" : "s change-scale"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 192.0, 154.0, 85.0, 22.0 ],
									"text" : "o.select /scale"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 192.0, 119.359007973396274, 131.0, 22.0 ],
									"text" : "r all-voice-scale-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 90.916666666666657, 565.0, 95.25, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "FullPacket" ],
									"patching_rect" : [ 91.0, 494.0, 248.0, 22.0 ],
									"text" : "o.select /scale/class /scale/type /scale/voices"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 30.0, 186.999974131584167, 181.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-7",
									"linecount" : 6,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 91.0, 384.0, 265.0, 95.0 ],
									"text" : "if (/selected == 0,\n  /scale/class = \"heptatonic\",\n  /scale/class = \"pentatonic\"\n),\n\n/scale/voices = [2, 3]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 142.0, 52.359033841812106, 118.0, 22.0 ],
									"text" : "if $i1 == 1 then bang"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-2",
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 142.0, 84.976630587303134, 150.0, 23.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 112, 114, 101, 118, 47, 115, 101, 108, 101, 99, 116, 101, 100, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0 ],
									"saved_bundle_length" : 44,
									"text" : "/prev/selected : 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-217",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 142.0, 21.359007973396274, 69.0, 22.0 ],
									"text" : "r game-init"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-212",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 84.976630587303134, 87.0, 22.0 ],
									"text" : "r weapon-stats"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-192",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 30.0, 119.359007973396274, 131.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-191",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 30.0, 308.999974131584167, 80.0, 22.0 ],
									"text" : "o.select /prev"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-188",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 91.0, 349.888420104980469, 132.0, 22.0 ],
									"text" : "o.if /selected_delta != 0"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-187",
									"linecount" : 4,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 30.0, 223.999974131584167, 309.0, 71.0 ],
									"text" : "/prev/selected ??= 0,\n\n/selected_delta = /selected - /prev/selected,\n/prev/selected = /selected"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 1 ],
									"source" : [ "obj-14", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"source" : [ "obj-14", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-191", 0 ],
									"source" : [ "obj-187", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-188", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 1 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-188", 0 ],
									"source" : [ "obj-191", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-192", 1 ],
									"midpoints" : [ 39.5, 341.888420104980469, 359.0, 341.888420104980469, 359.0, 113.999974131584167, 151.5, 113.999974131584167 ],
									"source" : [ "obj-191", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-192", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-192", 1 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-192", 0 ],
									"source" : [ "obj-212", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-217", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 1 ],
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-187", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 32.0, 2445.507352000000083, 171.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p weapon-select-change-scale"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.098038777709007, 0.098041713237762, 0.09804005920887, 1.0 ],
					"blinkcolor" : [ 0.986251831054688, 0.007236152887344, 0.027423052117229, 1.0 ],
					"id" : "obj-18",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.999995052814484, 1.0, 1.0, 1.0 ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2396.067047501800516, 338.426449775695801, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1366.882368624210358, 1525.86162224411737, 37.11763137579419, 37.11763137579419 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-138",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2570.086365001200193, 367.864144921302795, 68.0, 22.0 ],
					"text" : "s seq-reset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-263",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3174.287396525342047, 271.382310628890991, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-261",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3174.287396525342047, 306.382310628890991, 120.389687076210976, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-256",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 3174.287396525342047, 343.54412579536438, 79.389687076210976, 22.0 ],
					"text" : "t b i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-255",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "FullPacket" ],
					"patching_rect" : [ 2673.124999999998636, 195.317415714263916, 922.828125402331352, 22.0 ],
					"text" : "o.route /melody/curr /melody/idx_delta /melody/prev"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-254",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3414.286458735663473, 292.685125946998596, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-249",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3414.286458735663473, 266.014688014984131, 58.0, 22.0 ],
					"text" : "r max-init"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-222",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2692.093750268218628, 127.252454042434692, 75.0, 22.0 ],
					"text" : "r pattr-select"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-221",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 2819.796875312928933, 1815.0, 145.0, 22.0 ],
					"text" : "o.route /pattern/sequence"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-220",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 2022.148437656464466, 1815.0, 145.0, 22.0 ],
					"text" : "o.route /pattern/sequence"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-218",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 1224.500000000000227, 1815.0, 145.0, 22.0 ],
					"text" : "o.route /pattern/sequence"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-214",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1224.500000000000227, 1925.0, 113.0, 22.0 ],
					"text" : "s all-voice-dumpout"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-215",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 1224.500000000000227, 1887.0, 51.0, 22.0 ],
					"text" : "o.flatten"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-213",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 1224.500000000000227, 1848.0, 3209.593750625856956, 22.0 ],
					"text" : "o.pack /1 /2 /3 /4 /5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-170",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 106.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-140",
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 50.000000000000227, 130.36762261390686, 291.0, 32.0 ],
									"text" : "/total_beats = ((/bars - 1) * 4) + /beats"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.000000000000227, 100.0, 304.881365001201402, 22.0 ],
									"text" : "o.pack /bars /beats /units /ppq /tempo/bpm /time_sig"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-162",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 50.000000000000227, 56.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-163",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 107.176273000240741, 56.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-164",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 164.352546000481027, 56.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-165",
									"index" : 4,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 221.528819000721285, 56.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-166",
									"index" : 5,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 278.705092000961372, 56.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-167",
									"index" : 6,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 335.88136500120163, 56.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-168",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.000000000000227, 176.367615000000001, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-168", 0 ],
									"source" : [ "obj-140", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-162", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 1 ],
									"source" : [ "obj-163", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 2 ],
									"source" : [ "obj-164", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 3 ],
									"source" : [ "obj-165", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 4 ],
									"source" : [ "obj-166", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 5 ],
									"source" : [ "obj-167", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-140", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 647.303423569591132, 278.573435068130493, 137.100000000000136, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p pack-tempo-variables"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-135",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 1891.0, -204.0, 1212.0, 1319.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-16",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 27.0, 113.742648482322693, 215.0, 24.0 ],
									"text" : "Enable when Game starts"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-15",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 280.0, 825.0, 278.0, 24.0 ],
									"text" : "Reset metro if melody group changes"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-14",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 401.0, 95.742648482322693, 253.0, 42.0 ],
									"text" : "Recieves new melody pattern list when melody group changes"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-52",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 588.0, 452.867648482322693, 215.0, 78.0 ],
									"text" : "Logic for playing gameplay music. Gets the current and previous pattr value to send to the pattr storage control. "
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 26.666666666666671, 847.0, 180.0, 22.0 ],
									"text" : "o.if /melody/curr != /melody/prev"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 117.333333333333329, 706.0, 108.000000000000014, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-67",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 348.0, 801.0, 124.0, 22.0 ],
									"text" : "s on-beat-metro-reset"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 348.0, 760.0, 121.0, 22.0 ],
									"text" : "o.select /reset_metro"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-6",
									"linecount" : 2,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 348.0, 702.0, 220.0, 47.0 ],
									"text" : "/prev/melody/idx = /melody/idx,\n/reset_metro = 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 348.0, 664.867648482322693, 142.0, 22.0 ],
									"text" : "o.if /melody/idx_delta!= 0"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-3",
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 449.5, 173.242648482322693, 156.0, 31.0 ],
									"text" : "/melody/curr_pos = 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "int" ],
									"patching_rect" : [ 449.5, 214.875, 84.0, 22.0 ],
									"text" : "t 1 l 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 362.0, 275.0, 139.0, 22.0 ],
									"text" : "switch 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 449.5, 139.742648482322693, 118.0, 22.0 ],
									"text" : "r patternbank-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 27.0, 633.0, 340.0, 22.0 ],
									"text" : "t l l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 27.333333333333329, 742.0, 109.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 27.0, 179.867648482322693, 170.0, 22.0 ],
									"text" : "t i b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-116",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 27.0, 141.735296964645386, 65.0, 22.0 ],
									"text" : "r game-init"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-114",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 27.0, 247.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 12.0,
									"id" : "obj-105",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 27.0, 280.5, 62.0, 22.0 ],
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-93",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 178.0, 212.875, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-89",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 26.666666666666671, 888.0, 77.0, 22.0 ],
									"text" : "s pattr-select"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-88",
									"linecount" : 3,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 178.0, 248.0, 166.0, 49.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 112, 114, 101, 118, 95, 98, 101, 97, 116, 115, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 28, 47, 109, 101, 108, 111, 100, 121, 47, 99, 117, 114, 114, 95, 112, 111, 115, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 112, 114, 101, 118, 47, 109, 101, 108, 111, 100, 121, 47, 105, 100, 120, 0, 0, 0, 0, 44, 105, 0, 0, -1, -1, -1, -1 ],
									"saved_bundle_length" : 104,
									"text" : "/prev_beats : 1,\n/melody/curr_pos : 0,\n/prev/melody/idx : -1"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-86",
									"linecount" : 3,
									"maxclass" : "o.display",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 26.666666666666671, 777.0, 179.0, 59.0 ],
									"text" : "/melody/curr : 19,\n/melody/prev : 21,\n/melody/idx_delta : 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-84",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "FullPacket" ],
									"patching_rect" : [ 27.0, 668.867648482322693, 288.0, 22.0 ],
									"text" : "o.select /melody/curr /melody/prev /melody/idx_delta"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-83",
									"linecount" : 9,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 27.0, 489.367648482322693, 435.0, 134.0 ],
									"text" : "/prev_beats = /total_beats,\n\nif (bound(/melody/curr),\n  /melody/prev = /melody/curr,\n\t  /melody/prev = 0\n),\n/melody/curr = /melody/pattern[[ /melody/curr_pos ]],\n/melody/curr_pos = (/melody/curr_pos + 1) % /melody/pattern_len,\n/melody/idx_delta = /prev/melody/idx - /melody/idx"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-70",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 70.0, 248.0, 89.0, 22.0 ],
									"text" : "r transport-vals"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 27.0, 313.867648482322693, 354.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-56",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 27.0, 452.867648482322693, 308.0, 22.0 ],
									"text" : "o.if /beats_delta >= /melody/beat_len || /prev_beats == 1"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-55",
									"linecount" : 6,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 27.0, 347.867648482322693, 379.0, 95.0 ],
									"text" : "/prev_beats ??= 1,\n/beat_len ??= 16,\n/melody/curr ??= 0,\n/prev/melody/idx ??= -1,\n\n/beats_delta = /total_beats - /prev_beats"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-89", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 0 ],
									"source" : [ "obj-105", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 1 ],
									"midpoints" : [ 459.5, 795.0, 580.5, 795.0, 580.5, 264.0, 431.5, 264.0 ],
									"source" : [ "obj-11", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-67", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-105", 0 ],
									"source" : [ "obj-114", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-116", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 1 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"midpoints" : [ 524.0, 257.5, 371.5, 257.5 ],
									"source" : [ "obj-13", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 2 ],
									"source" : [ "obj-13", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"midpoints" : [ 459.0, 257.5, 371.5, 257.5 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-86", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-20", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 1 ],
									"midpoints" : [ 480.5, 695.0, 580.25, 695.0, 580.25, 264.867648482322693, 431.5, 264.867648482322693 ],
									"source" : [ "obj-4", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-83", 0 ],
									"source" : [ "obj-56", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 0 ],
									"source" : [ "obj-68", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-105", 1 ],
									"source" : [ "obj-70", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-114", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-93", 0 ],
									"source" : [ "obj-8", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-83", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-84", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 1 ],
									"source" : [ "obj-84", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-84", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-86", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 1 ],
									"midpoints" : [ 187.5, 304.933824241161346, 371.5, 304.933824241161346 ],
									"source" : [ "obj-88", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 1 ],
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-88", 0 ],
									"source" : [ "obj-93", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 430.0, 2027.125, 136.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p game-music-melodies"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-131",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2396.047730002400385, 195.317415714263916, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-129",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2396.105682500599414, 230.382310628890991, 296.019317499399222, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-118",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 4034.0, -11.0, 1852.0, 959.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-52",
									"linecount" : 6,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1451.0, 548.0, 215.0, 114.0 ],
									"text" : "Logic for playing main menu music. Loops through the /melody/pattern pattr values. These pattr values are sent to the pattrstorage control group."
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 20.0,
									"id" : "obj-51",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 647.5, 96.5, 474.0, 29.0 ],
									"text" : "Handles switching between Main Menu melodies."
								}

							}
, 							{
								"box" : 								{
									"border" : 5.0,
									"id" : "obj-48",
									"justification" : 1,
									"maxclass" : "live.line",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1376.0, 949.25, 64.5, 56.0 ]
								}

							}
, 							{
								"box" : 								{
									"border" : 5.0,
									"id" : "obj-49",
									"justification" : 1,
									"maxclass" : "live.line",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1378.0, 236.867648482322693, 64.5, 56.0 ]
								}

							}
, 							{
								"box" : 								{
									"border" : 5.0,
									"id" : "obj-50",
									"justification" : 1,
									"maxclass" : "live.line",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1436.0, 261.867648482322693, 13.0, 716.796015381813049 ]
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-47",
									"linecount" : 11,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 18.0, 256.5, 210.0, 203.0 ],
									"text" : "Start application with all Voice values set to 0, which is pattr value 99. This is to \"reset\" the Main Menu music on load.\n\nThis value is only recalled from pattrstorage once, and then it switches to the right side objects to handle playing menu music"
								}

							}
, 							{
								"box" : 								{
									"border" : 5.0,
									"id" : "obj-45",
									"justification" : 1,
									"maxclass" : "live.line",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 237.0, 586.0, 64.5, 56.0 ]
								}

							}
, 							{
								"box" : 								{
									"border" : 5.0,
									"id" : "obj-44",
									"justification" : 1,
									"maxclass" : "live.line",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 237.0, 75.0, 64.5, 56.0 ]
								}

							}
, 							{
								"box" : 								{
									"border" : 5.0,
									"id" : "obj-43",
									"justification" : 1,
									"maxclass" : "live.line",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 229.0, 100.0, 19.0, 516.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 729.75, 811.0, 161.5, 22.0 ],
									"text" : "t l l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 730.0, 773.132351517677307, 180.0, 22.0 ],
									"text" : "o.if /melody/curr != /melody/prev"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 293.0, 541.531312346458435, 77.0, 22.0 ],
									"text" : "s pattr-select"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 293.0, 510.0, 95.0, 22.0 ],
									"text" : "o.select /melody"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 293.0, 456.742648482322693, 119.5, 22.0 ],
									"text" : "t l b"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-25",
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 393.5, 510.0, 108.0, 23.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 111, 110, 95, 115, 116, 97, 114, 116, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0 ],
									"saved_bundle_length" : 40,
									"text" : "/on_start : 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 293.0, 332.867648482322693, 282.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-23",
									"linecount" : 2,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 556.0, 247.867648482322693, 150.0, 36.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 112, 114, 101, 118, 95, 98, 101, 97, 116, 115, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 20, 47, 111, 110, 95, 115, 116, 97, 114, 116, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1 ],
									"saved_bundle_length" : 64,
									"text" : "/prev_beats : 1,\n/on_start : 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 293.0, 211.0, 282.0, 22.0 ],
									"text" : "t 1 b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 293.0, 179.0, 118.0, 22.0 ],
									"text" : "if $i1 == 1 then bang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 428.0, 456.742648482322693, 29.5, 22.0 ],
									"text" : "2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 293.0, 147.0, 58.0, 22.0 ],
									"text" : "r max-init"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1020.0, 394.742648482322693, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1020.0, 363.117648482322693, 117.0, 22.0 ],
									"text" : "r melody-banks-load"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 730.0, 540.132351517677307, 309.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-6",
									"linecount" : 2,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1020.0, 426.867648482322693, 409.0, 36.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80, 47, 109, 101, 108, 111, 100, 121, 47, 112, 97, 116, 116, 101, 114, 110, 0, 44, 105, 105, 105, 105, 105, 105, 105, 105, 105, 105, 105, 105, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 2, 0, 0, 0, 3, 0, 0, 0, 3, 0, 0, 0, 4, 0, 0, 0, 4, 0, 0, 0, 4, 0, 0, 0, 4, 0, 0, 0, 3, 0, 0, 0, 3, 0, 0, 0, 20, 47, 98, 101, 97, 116, 95, 108, 101, 110, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 16 ],
									"saved_bundle_length" : 124,
									"text" : "/melody/pattern : [1, 1, 2, 2, 3, 3, 4, 4, 4, 4, 3, 3],\n/beat_len : 16"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "FullPacket", "FullPacket", "FullPacket" ],
									"patching_rect" : [ 293.0, 425.117648482322693, 218.0, 22.0 ],
									"text" : "o.cond /on_start == 1\\, /total_beats >= 1"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-2",
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 293.0, 375.117648482322693, 132.0, 31.0 ],
									"text" : "/melody/curr = 99"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 293.0, 294.0, 456.0, 22.0 ],
									"text" : "gate 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 627.5, 363.117648482322693, 231.5, 22.0 ],
									"text" : "t i b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-116",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 627.5, 332.985296964645386, 65.499999999999773, 22.0 ],
									"text" : "r menu-init"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-114",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 627.5, 890.25, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 12.0,
									"id" : "obj-105",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 627.5, 924.75, 121.25, 22.0 ],
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-93",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 840.0, 394.742648482322693, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-89",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 627.5, 956.663663864135742, 77.0, 22.0 ],
									"text" : "s pattr-select"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-88",
									"linecount" : 4,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 840.0, 426.867648482322693, 165.0, 62.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 112, 114, 101, 118, 95, 98, 101, 97, 116, 115, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 28, 47, 109, 101, 108, 111, 100, 121, 47, 99, 117, 114, 114, 95, 112, 111, 115, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 109, 101, 108, 111, 100, 121, 47, 112, 114, 101, 118, 0, 0, 0, 0, 44, 105, 0, 0, -1, -1, -1, -1, 0, 0, 0, 24, 47, 109, 101, 108, 111, 100, 121, 47, 99, 117, 114, 114, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0 ],
									"saved_bundle_length" : 128,
									"text" : "/prev_beats : 1,\n/melody/curr_pos : 0,\n/melody/prev : -1,\n/melody/curr : 0"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-86",
									"maxclass" : "o.display",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 729.75, 882.25, 134.0, 33.0 ],
									"text" : "/melody/curr : 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-84",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 729.75, 847.25, 119.0, 22.0 ],
									"text" : "o.select /melody/curr"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-83",
									"linecount" : 4,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 730.0, 687.5, 462.25, 70.0 ],
									"text" : "/prev_beats = /total_beats,\n/melody/prev = /melody/curr,\n/melody/curr = /melody/pattern[[ /melody/curr_pos ]],\n/melody/curr_pos = (/melody/curr_pos + 1) % length(/melody/pattern)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-70",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 730.0, 261.867648482322693, 89.0, 22.0 ],
									"text" : "r transport-vals"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 730.0, 510.0, 129.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-56",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 730.0, 652.0, 266.0, 22.0 ],
									"text" : "o.if /beats_delta >= /beat_len || /prev_beats == 1"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-55",
									"linecount" : 4,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 730.0, 569.0, 309.0, 72.0 ],
									"text" : "/prev_beats ??= 1,\n/melody/curr_pos  ??= 0,\n\n/beats_delta = /total_beats - /prev_beats"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 0 ],
									"source" : [ "obj-1", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-114", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-93", 0 ],
									"source" : [ "obj-10", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-89", 0 ],
									"source" : [ "obj-105", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-105", 0 ],
									"source" : [ "obj-114", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-116", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"midpoints" : [ 437.5, 494.742648482322693, 280.25, 494.742648482322693, 280.25, 283.0, 302.5, 283.0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-21", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 1 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 1 ],
									"midpoints" : [ 403.0, 545.867648482322693, 587.75, 545.867648482322693, 587.75, 321.867648482322693, 565.5, 321.867648482322693 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-26", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-3", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 1 ],
									"midpoints" : [ 900.5, 805.132351517677307, 1200.0, 805.132351517677307, 1200.0, 505.0, 849.5, 505.0 ],
									"source" : [ "obj-38", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 1 ],
									"midpoints" : [ 881.75, 849.0, 1200.5, 849.0, 1200.5, 505.0, 849.5, 505.0 ],
									"source" : [ "obj-41", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 0 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-83", 0 ],
									"source" : [ "obj-56", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 1 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-68", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 1 ],
									"source" : [ "obj-70", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-83", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-86", 0 ],
									"source" : [ "obj-84", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-105", 1 ],
									"source" : [ "obj-86", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 1 ],
									"source" : [ "obj-88", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-88", 0 ],
									"source" : [ "obj-93", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 430.0, 1964.125, 136.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p menu-music-melodies"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "bang", "bang", "int", "int" ],
					"patching_rect" : [ 2396.105682500599414, 262.54412579536438, 541.0, 22.0 ],
					"text" : "t b b i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 2050.0, 75.0, 932.0, 721.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-2",
									"linecount" : 6,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 310.0, 169.882351517677307, 233.0, 114.0 ],
									"text" : "This value is 1 when the game enters the Main Menu, and is 0 when the game first starts or enters the Gameplay loop. This value is used to trigger the Main Menu music."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-360",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.199999999999989, 100.0, 81.0, 22.0 ],
									"text" : "r control-stats"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-358",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 133.0, 373.5, 67.0, 22.0 ],
									"text" : "s menu-init"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-357",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 133.0, 337.25, 105.0, 22.0 ],
									"text" : "o.route /menu_init"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-356",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.199999999999989, 133.882351517677307, 107.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-355",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 50.0, 261.5, 102.0, 22.0 ],
									"text" : "o.select /prev_init"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-354",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 133.0, 306.5, 71.0, 22.0 ],
									"text" : "o.if /diff != 0"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-353",
									"linecount" : 5,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 50.199999999999989, 164.882351517677307, 234.0, 88.0 ],
									"text" : "/menu_init ??= 0,\n/prev_init ??= 0,\n\n/diff = /prev_init - /menu_init,\n/prev_init = /menu_init"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-355", 0 ],
									"source" : [ "obj-353", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-357", 0 ],
									"source" : [ "obj-354", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-354", 0 ],
									"source" : [ "obj-355", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-356", 1 ],
									"midpoints" : [ 59.5, 293.5, 300.599999999999966, 293.5, 300.599999999999966, 122.882351517677307, 147.699999999999989, 122.882351517677307 ],
									"source" : [ "obj-355", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-353", 0 ],
									"source" : [ "obj-356", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-358", 0 ],
									"source" : [ "obj-357", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-356", 0 ],
									"source" : [ "obj-360", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 250.0, 1945.125, 98.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p send-menu-init"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-82",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 2136.0, -35.0, 1478.0, 914.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-10",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 408.0, 310.0, 319.0, 60.0 ],
									"text" : "Variables needed on-load to initialize each voice. These variables are sent when the application loads and on game resets."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 266.0, 146.0, 118.0, 22.0 ],
									"text" : "if $i1 == 1 then bang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 266.0, 116.0, 58.0, 22.0 ],
									"text" : "r max-init"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 142.0, 277.0, 48.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 142.0, 181.0, 48.0, 22.0 ],
									"text" : "t l b"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-6",
									"linecount" : 8,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 142.0, 310.0, 246.0, 122.0 ],
									"text" : "/1/tempo/beat_div = 8,\n/1/pattern/key = /starting_key,\n/2/tempo/beat_div = 16,\n/2/pattern/key = /starting_key,\n/3/tempo/beat_div = 16,\n/3/pattern/key = /starting_key,\n/4/tempo/beat_div = 16,\n/5/tempo/beat_div = 16"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 171.0, 242.0, 115.0, 22.0 ],
									"text" : "o.pack /starting_key"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 171.0, 213.0, 66.0, 22.0 ],
									"text" : "random 12"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-406",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 398.0, 146.0, 118.0, 22.0 ],
									"text" : "if $i1 == 1 then bang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-405",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 398.0, 119.0, 78.0, 22.0 ],
									"text" : "r music-reset"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 638.0, 480.0, 97.0, 22.0 ],
									"text" : "s voice5-on-load"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 514.0, 480.0, 97.0, 22.0 ],
									"text" : "s voice4-on-load"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-114",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 142.0, 146.0, 111.0, 22.0 ],
									"text" : "r default-voice-load"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-73",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 390.0, 480.0, 97.0, 22.0 ],
									"text" : "s voice3-on-load"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-70",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 266.0, 480.0, 97.0, 22.0 ],
									"text" : "s voice2-on-load"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 142.0, 480.0, 97.0, 22.0 ],
									"text" : "s voice1-on-load"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 6,
									"outlettype" : [ "", "", "", "", "", "FullPacket" ],
									"patching_rect" : [ 142.0, 445.0, 639.0, 22.0 ],
									"text" : "o.route /1 /2 /3 /4 /5"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-114", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"midpoints" : [ 275.5, 174.0, 151.5, 174.0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-31", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-31", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-70", 0 ],
									"source" : [ "obj-31", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-73", 0 ],
									"source" : [ "obj-31", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 1 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-406", 0 ],
									"source" : [ "obj-405", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"midpoints" : [ 407.5, 174.0, 151.5, 174.0 ],
									"source" : [ "obj-406", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-7", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 32.0, 1933.0, 132.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p init-all-voices-on-load"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 2081.0, -93.0, 1647.0, 1086.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-50",
									"linecount" : 6,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 609.0, 454.0, 565.0, 114.0 ],
									"text" : "These objects handle routing variables to specific voices. Pattern modifiers, scale changes, filter changes, and effects can all be controled on a per-voice level to allow the modulation sources to target specific voices.\n\nAll addresses are prepended with the voice name, so /1/delay gets routed to the first voice's delayZ~ object."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 617.0, 1013.0, 129.0, 22.0 ],
									"text" : "s voice5-reverb-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 466.0, 1013.0, 129.0, 22.0 ],
									"text" : "s voice4-reverb-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-43",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 315.0, 1013.0, 129.0, 22.0 ],
									"text" : "s voice3-reverb-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-44",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 164.0, 1013.0, 129.0, 22.0 ],
									"text" : "s voice2-reverb-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-45",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 13.0, 942.0, 137.0, 22.0 ],
									"text" : "r all-voice-reverb-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-46",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 6,
									"outlettype" : [ "", "", "", "", "", "FullPacket" ],
									"patching_rect" : [ 13.0, 979.0, 774.0, 22.0 ],
									"text" : "o.route /1 /2 /3 /4 /5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 13.0, 1013.0, 129.0, 22.0 ],
									"text" : "s voice1-reverb-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 617.0, 869.0, 131.0, 22.0 ],
									"text" : "s voice5-chorus-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 466.0, 869.0, 131.0, 22.0 ],
									"text" : "s voice4-chorus-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 315.0, 869.0, 131.0, 22.0 ],
									"text" : "s voice3-chorus-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 164.0, 869.0, 131.0, 22.0 ],
									"text" : "s voice2-chorus-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 13.0, 798.0, 139.0, 22.0 ],
									"text" : "r all-voice-chorus-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 6,
									"outlettype" : [ "", "", "", "", "", "FullPacket" ],
									"patching_rect" : [ 13.0, 835.0, 774.0, 22.0 ],
									"text" : "o.route /1 /2 /3 /4 /5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 13.0, 869.0, 131.0, 22.0 ],
									"text" : "s voice1-chorus-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 617.0, 708.0, 124.0, 22.0 ],
									"text" : "s voice5-delay-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 466.0, 708.0, 124.0, 22.0 ],
									"text" : "s voice4-delay-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 315.0, 708.0, 124.0, 22.0 ],
									"text" : "s voice3-delay-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 164.0, 708.0, 124.0, 22.0 ],
									"text" : "s voice2-delay-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 13.0, 637.0, 131.0, 22.0 ],
									"text" : "r all-voice-delay-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 6,
									"outlettype" : [ "", "", "", "", "", "FullPacket" ],
									"patching_rect" : [ 13.0, 674.0, 774.0, 22.0 ],
									"text" : "o.route /1 /2 /3 /4 /5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 13.0, 708.0, 124.0, 22.0 ],
									"text" : "s voice1-delay-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 13.0, 463.0, 126.0, 22.0 ],
									"text" : "r all-voice-mod-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "FullPacket" ],
									"patching_rect" : [ 13.0, 500.0, 472.0, 22.0 ],
									"text" : "o.route /1 /2 /3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 315.0, 534.0, 119.0, 22.0 ],
									"text" : "s voice3-mod-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 164.0, 534.0, 119.0, 22.0 ],
									"text" : "s voice2-mod-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 13.0, 534.0, 119.0, 22.0 ],
									"text" : "s voice1-mod-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 609.0, 271.0, 131.0, 22.0 ],
									"text" : "r all-voice-scale-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "FullPacket" ],
									"patching_rect" : [ 609.0, 308.0, 472.0, 22.0 ],
									"text" : "o.route /1 /2 /3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 911.0, 342.0, 123.0, 22.0 ],
									"text" : "s voice3-scale-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 760.0, 342.0, 123.0, 22.0 ],
									"text" : "s voice2-scale-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 609.0, 342.0, 123.0, 22.0 ],
									"text" : "s voice1-scale-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 13.0, 271.0, 125.0, 22.0 ],
									"text" : "r all-voice-filter-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "FullPacket" ],
									"patching_rect" : [ 13.0, 308.0, 472.0, 22.0 ],
									"text" : "o.route /1 /2 /3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 315.0, 342.0, 118.0, 22.0 ],
									"text" : "s voice3-filter-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 164.0, 342.0, 118.0, 22.0 ],
									"text" : "s voice2-filter-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 13.0, 342.0, 118.0, 22.0 ],
									"text" : "s voice1-filter-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 609.0, 18.0, 140.0, 22.0 ],
									"text" : "r all-voice-pattern-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-87",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "FullPacket" ],
									"patching_rect" : [ 609.0, 55.0, 472.0, 22.0 ],
									"text" : "o.route /1 /2 /3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-635",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 911.0, 89.0, 133.0, 22.0 ],
									"text" : "s voice3-pattern-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-634",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 760.0, 89.0, 133.0, 22.0 ],
									"text" : "s voice2-pattern-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-633",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 609.0, 89.0, 133.0, 22.0 ],
									"text" : "s voice1-pattern-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 13.0, 125.0, 113.0, 22.0 ],
									"text" : "s all-voice-dumpout"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-94",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 13.0, 93.0, 51.0, 22.0 ],
									"text" : "o.flatten"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 13.0, 56.0, 326.0, 22.0 ],
									"text" : "o.pack /1 /2 /3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 320.0, 18.0, 143.0, 22.0 ],
									"text" : "r voice3-pattern-dumpout"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 166.5, 18.0, 143.0, 22.0 ],
									"text" : "r voice2-pattern-dumpout"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 13.0, 18.0, 143.0, 22.0 ],
									"text" : "r voice1-pattern-dumpout"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-87", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-13", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-13", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-18", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-18", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-18", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-18", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-94", 0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 2 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-3", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-3", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 1 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"source" : [ "obj-36", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-36", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-36", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"source" : [ "obj-36", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-46", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-46", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-46", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"source" : [ "obj-46", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-8", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-8", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-633", 0 ],
									"source" : [ "obj-87", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-634", 0 ],
									"source" : [ "obj-87", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-635", 0 ],
									"source" : [ "obj-87", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"source" : [ "obj-94", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 430.0, 1933.0, 103.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p all-voice-routing"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-649",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 1474.0, -211.0, 2492.0, 1319.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-3",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 320.0, 722.0, 313.0, 78.0 ],
									"text" : "The pattern's sustain values need to be updated as well. More details on how this is done can be seen in the valuemodifier.js file."
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-110",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 258.0, 26.0, 308.0, 60.0 ],
									"text" : "If the Player is hit by a rest note, then update a value in one of the patterns to be a Rest note."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-96",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 107.66666666666697, 919.0, 142.0, 22.0 ],
									"text" : "s all-voice-pattern-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-95",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 449.000000000000455, 193.0, 111.0, 22.0 ],
									"text" : "r all-voice-dumpout"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-89",
									"linecount" : 3,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 107.66666666666697, 840.63237738609314, 385.0, 57.0 ],
									"text" : "assign(\"/\" + /voice_num + \"/pattern/values\", /values),\nassign(\"/\" + /voice_num + \"/pattern/sustain\", /sustain),\ndelete(/values, /sustain)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-86",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 107.66666666666697, 804.0, 198.333333333334735, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-60",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 139.0, 193.0, 121.0, 22.0 ],
									"text" : "o.select /hit_distance"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-59",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 139.0, 160.0, 81.0, 22.0 ],
									"text" : "r enemy-stats"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 403.000000000000455, 297.0, 118.0, 22.0 ],
									"text" : "if $i1 == 1 then bang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 403.000000000000455, 262.0, 65.0, 22.0 ],
									"text" : "r game-init"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-11",
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 403.000000000000455, 330.0, 123.0, 23.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 112, 114, 101, 118, 95, 99, 111, 117, 110, 116, 0, 44, 105, 0, 0, 0, 0, 0, 0 ],
									"saved_bundle_length" : 40,
									"text" : "/prev_count : 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 11.0, 79.0, 129.249999999999545, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 121.249999999999545, 45.0, 121.0, 22.0 ],
									"text" : "o.select /num_voices"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 121.249999999999545, 12.0, 81.0, 22.0 ],
									"text" : "r control-stats"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-2",
									"linecount" : 2,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 11.0, 108.0, 377.0, 44.0 ],
									"text" : "# skip bass voice (voice 1)\n/voice_num = (/curr_health % (/num_voices - 1)) + 2"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-638",
									"linecount" : 9,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 108.000000000000455, 545.0, 715.0, 134.0 ],
									"text" : "/min_hd = /hit_distance[[ 0 ]],\n/last_hd = /hit_distance[[ 2 ]],\n/max_hd = /hit_distance[[ 3 ]],\n\n/update_idx = scale(/last_hd, /min_hd, /max_hd, 0, value(\"/\" + /voice_num + \"/length\") - 1),\n/update_idx = int32(round(/update_idx)),\n\n/values = value(\"/\" + /voice_num + \"/values\"),\n/sustain = value(\"/\" + /voice_num + \"/sustain\")"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-630",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 107.66666666666697, 766.13237738609314, 138.666666666667652, 22.0 ],
									"text" : "o.pack /values /sustain"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-629",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 107.66666666666697, 728.75, 138.666666666667652, 22.0 ],
									"saved_object_attributes" : 									{
										"filename" : "valuemodifier.js",
										"parameter_enable" : 0
									}
,
									"text" : "js valuemodifier.js"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-628",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "FullPacket" ],
									"patching_rect" : [ 108.000000000000455, 692.13237738609314, 198.000000000001251, 22.0 ],
									"text" : "o.route /values /sustain /update_idx"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-627",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 108.000000000000455, 514.61762261390686, 117.0, 22.0 ],
									"text" : "o.if /count_delta != 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-626",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 11.000000000000455, 470.0, 116.0, 22.0 ],
									"text" : "o.select /prev_count"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-625",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 11.000000000000455, 378.25, 411.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-624",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 267.000000000000455, 228.0, 201.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-623",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 267.000000000000455, 193.0, 109.0, 22.0 ],
									"text" : "o.select /rest/count"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-577",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 267.000000000000455, 156.0, 151.0, 22.0 ],
									"text" : "r player-projectile-hit-count"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-622",
									"linecount" : 2,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 11.000000000000455, 413.0, 298.499999999998181, 44.0 ],
									"text" : "/count_delta = /rest/count - /prev_count,\n/prev_count = /rest/count"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-619",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 11.000000000000455, 262.0, 275.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-612",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 11.0, 228.0, 147.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-611",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 11.0, 160.0, 115.0, 22.0 ],
									"text" : "o.select /voice_num"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-610",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 11.0, 45.0, 78.0, 22.0 ],
									"text" : "r player-stats"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-625", 1 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-611", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-623", 0 ],
									"source" : [ "obj-577", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-60", 0 ],
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-612", 1 ],
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-610", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-612", 0 ],
									"source" : [ "obj-611", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-619", 0 ],
									"source" : [ "obj-612", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-625", 0 ],
									"source" : [ "obj-619", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-626", 0 ],
									"source" : [ "obj-622", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-624", 0 ],
									"source" : [ "obj-623", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-619", 1 ],
									"source" : [ "obj-624", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-622", 0 ],
									"source" : [ "obj-625", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-625", 1 ],
									"midpoints" : [ 20.500000000000455, 502.0, 449.500000000000455, 502.0, 449.500000000000455, 362.25, 412.500000000000455, 362.25 ],
									"source" : [ "obj-626", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-627", 0 ],
									"source" : [ "obj-626", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-638", 0 ],
									"source" : [ "obj-627", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-629", 2 ],
									"source" : [ "obj-628", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-629", 1 ],
									"source" : [ "obj-628", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-629", 0 ],
									"source" : [ "obj-628", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-86", 1 ],
									"source" : [ "obj-628", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-630", 1 ],
									"source" : [ "obj-629", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-630", 0 ],
									"source" : [ "obj-629", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-86", 0 ],
									"source" : [ "obj-630", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-628", 0 ],
									"source" : [ "obj-638", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 1 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-89", 0 ],
									"source" : [ "obj-86", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-96", 0 ],
									"source" : [ "obj-89", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-624", 1 ],
									"source" : [ "obj-95", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 357.0, 2198.779438000000027, 139.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p player-hit-rest-modifier"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-578",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 2323.0, -33.0, 1171.0, 959.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-2",
									"linecount" : 9,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 233.0, 418.588184833526611, 262.0, 167.0 ],
									"text" : "Creates new addresses that map the projectile name to the number of times the player has collided with these projectiles.\n\nThese addresses are used to handle creating rests on collisions and for Key changes on Melody changes"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-577",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 503.088184833526611, 153.0, 22.0 ],
									"text" : "s player-projectile-hit-count"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-576",
									"linecount" : 4,
									"maxclass" : "o.display",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 418.588184833526611, 130.0, 72.0 ],
									"text" : "/rest/count : 0,\n/sharp/count : 0,\n/flat/count : 0,\n/natural/count : 0"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-574",
									"linecount" : 15,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 50.0, 200.470562219619751, 456.0, 211.0 ],
									"text" : "/len = length(/projectile_hit_count),\n/variant_names = /projectile_hit_count[[ aseq(0, /len -1, 2) ]],\n/variant_count = /projectile_hit_count[[ aseq(1, /len -1, 2) ]],\n\nmap(\n  lambda(\n    [name, count],\n    assign(\"/\" + name + \"/count\", count)\n  ),\n  /variant_names,\n  /variant_count\n),\n\ndelete(/variant_names, /variant_count, /len, /projectile_hit_count)\n  "
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-572",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 50.0, 166.0, 176.0, 22.0 ],
									"text" : "o.if bound(/projectile_hit_count)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-571",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 50.0, 133.558875560760498, 160.0, 22.0 ],
									"text" : "o.select /projectile_hit_count"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-570",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 100.0, 78.0, 22.0 ],
									"text" : "r player-stats"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-571", 0 ],
									"source" : [ "obj-570", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-572", 0 ],
									"source" : [ "obj-571", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-574", 0 ],
									"source" : [ "obj-572", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-576", 0 ],
									"source" : [ "obj-574", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-577", 0 ],
									"source" : [ "obj-576", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 32.0, 2198.617647999999917, 153.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p player-hit-projectile-count"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-566",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "int", "int" ],
					"patching_rect" : [ 1135.125, 185.670437932014465, 234.0, 22.0 ],
					"text" : "t i i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-561",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 647.303423569591132, 115.506019353866577, 100.0, 22.0 ],
					"text" : "r transport-toggle"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-475",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 1474.0, -211.0, 2492.0, 1319.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-6",
									"linecount" : 9,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 571.25, 868.852918613906695, 308.0, 167.0 ],
									"text" : "The voice is chosen based on the Player's current angle.\n\nThe value position is based on the Player's current horizontal position.\n\nThe step direction is based on whether the most recent hit distance is greater or less than the average hit distance."
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-5",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 468.25, 686.470541227813555, 308.0, 78.0 ],
									"text" : "Values are updated if:\n1) the number of dodges has changed\n2) A random that is generated is greater than the average Player hit distance"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-110",
									"linecount" : 13,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 394.25, 16.617647999999917, 363.0, 239.0 ],
									"text" : "Dodging projectiles causes the current pattern to have a value updated (increased or decreased in value).\n\nValue updates on dodges is meant to add variation to a pattern in a more subtle way, compared to the patternmodifier and patterninverter functions.\n\ne.g., for a pattern [1, 1, 4, 0, 4], dodging a projectile could cause any value in the pattern to increase or decrease by the number of dodges since the last time this function was called."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 133.25, 1148.0, 87.5, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-7",
									"linecount" : 2,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 133.25, 1189.102918613906695, 374.0, 43.0 ],
									"text" : "assign(\"/\" + /voice_num + \"/pattern/values\", /values),\ndelete(/values)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "FullPacket" ],
									"patching_rect" : [ 133.25, 1105.0, 156.0, 22.0 ],
									"text" : "o.select /values /voice_num"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-96",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 133.25, 1248.352918613906695, 142.0, 22.0 ],
									"text" : "s all-voice-pattern-values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-95",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 256.750000000007276, 249.735295999999835, 111.0, 22.0 ],
									"text" : "r all-voice-dumpout"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 133.25, 635.0, 82.5, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 196.75, 598.0, 75.0, 22.0 ],
									"text" : "o.pack /rand"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 133.25, 530.514733780380084, 82.5, 22.0 ],
									"text" : "t l b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 196.75, 565.0, 79.0, 22.0 ],
									"text" : "random 1000"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 133.25, 782.970541227813555, 112.0, 22.0 ],
									"text" : "o.if /rand > /avg_hd"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-8",
									"linecount" : 6,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 133.25, 673.470541227813555, 330.500000000007276, 96.0 ],
									"text" : "/min_hd = /hit_distance[[ 0 ]],\n/avg_hd = /hit_distance[[ 1 ]],\n/last_hd = /hit_distance[[ 2 ]],\n/max_hd = /hit_distance[[ 3 ]],\n\n/rand = scale(/rand, 0, 1000, /min_hd, /max_hd)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 226.25, 211.735295999999835, 121.0, 22.0 ],
									"text" : "o.select /hit_distance"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 226.25, 169.617647999999917, 81.0, 22.0 ],
									"text" : "r enemy-stats"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 26.25, 249.735295999999835, 219.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-470",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 26.25, 211.735295999999835, 114.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-468",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 121.25, 169.617647999999917, 81.0, 22.0 ],
									"text" : "r control-stats"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-467",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 79.916666666666657, 127.5, 72.666666666666657, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-447",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 26.25, 169.617647999999917, 72.666666666666629, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-443",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 133.25, 494.235295999999835, 121.0, 22.0 ],
									"text" : "o.if /dodge_delta != 0"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-442",
									"linecount" : 20,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 133.25, 814.852918613906695, 436.0, 275.0 ],
									"text" : "# Select the change direction\nif ( /avg_hd > /last_hd,\n  /step_direction = -1,\n  /step_direction = 1\n),\n\n# Select the voice\n/voice_num = (/angle % /num_voices) + 1,\n/values = value(\"/\" + /voice_num + \"/values\"),\n/length = value(\"/\" + /voice_num + \"/length\"),\n\n# Select the note to update\n/x = /position[[ 0 ]],\n/update_idx = scale(/x, 0, /screen_width, 0, /length),\n\n# Assign the new value\n/value_delta = /dodge_delta * /step_direction,\n/new_value = /values[[ /update_idx ]] + /value_delta,\n/new_value = ((/new_value + 1) % 16) - 1,\n/values[[ /update_idx ]] = clip(/new_value, -1, 15)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-428",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 26.25, 287.735295999999835, 249.500000000007276, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-427",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 26.25, 448.514733780380084, 126.0, 22.0 ],
									"text" : "o.select /prev_dodges"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-426",
									"linecount" : 4,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 26.25, 366.735295999999835, 276.0, 70.0 ],
									"text" : "/prev_dodges ??= 0,\n\n/dodge_delta = /dodges - /prev_dodges,\n/prev_dodges = /dodges"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-424",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 26.25, 332.352943999999752, 276.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-423",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "FullPacket" ],
									"patching_rect" : [ 26.25, 80.117647999999917, 180.0, 22.0 ],
									"text" : "o.select /dodges /angle /position"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-422",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 26.25, 43.0, 78.0, 22.0 ],
									"text" : "r player-stats"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-428", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-26", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 1 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 1 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 1 ],
									"source" : [ "obj-4", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-423", 0 ],
									"source" : [ "obj-422", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-447", 0 ],
									"source" : [ "obj-423", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-467", 1 ],
									"source" : [ "obj-423", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-467", 0 ],
									"source" : [ "obj-423", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-426", 0 ],
									"source" : [ "obj-424", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-427", 0 ],
									"source" : [ "obj-426", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-424", 1 ],
									"midpoints" : [ 35.75, 482.514733780380084, 315.25, 482.514733780380084, 315.25, 319.735295999999835, 292.75, 319.735295999999835 ],
									"source" : [ "obj-427", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-443", 0 ],
									"source" : [ "obj-427", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-424", 0 ],
									"source" : [ "obj-428", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-442", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-443", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-470", 0 ],
									"source" : [ "obj-447", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-447", 1 ],
									"source" : [ "obj-467", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-470", 1 ],
									"source" : [ "obj-468", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-470", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-96", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-442", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-428", 1 ],
									"source" : [ "obj-95", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 357.0, 2163.426524482322748, 131.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p dodge-value-modifier"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-420",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 1474.0, -93.0, 1777.0, 1319.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-2",
									"linecount" : 13,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 948.0, 245.5, 508.0, 239.0 ],
									"text" : "Handle changing the Filter's parameters for each Voice. \n\nFilter cutoff Frequency is based on the player's screen position, with top left being the lowest Hz (a more closed filter) and bottom right being the highest Hz (a more open filter). The Filter for each voice has a range of Min and Max Frequencies that the cutoff can move between, so the /filter/cutoff value is between 0.-1., which moves the cutoff point between the Filter min/max cutoff range.,\n\nFilter gain is based off the player's vertical position on the screen.\n\nFilter resonance is based off of the player's rotation: rotating CCW will decrease the resonance, rotating CW will increase the resonance."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-63",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 335.75, 667.75, 75.0, 22.0 ],
									"text" : "o.route /gain"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-62",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 110.0, 514.0, 244.75, 22.0 ],
									"text" : "t l l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-60",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 335.75, 702.75, 45.0, 22.0 ],
									"text" : "$1 500"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-61",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 335.75, 736.75, 57.0, 22.0 ],
									"text" : "line 1. 10"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 566.0, 49.0, 118.0, 22.0 ],
									"text" : "if $i1 == 1 then bang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-57",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 566.0, 17.0, 65.0, 22.0 ],
									"text" : "r game-init"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-55",
									"linecount" : 2,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 566.0, 80.0, 164.0, 36.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 112, 114, 101, 118, 95, 114, 101, 115, 111, 110, 97, 110, 99, 101, 0, 44, 100, 0, 0, 64, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 112, 114, 101, 118, 95, 97, 110, 103, 108, 101, 0, 44, 105, 0, 0, 0, 0, 0, 90 ],
									"saved_bundle_length" : 72,
									"text" : "/prev_resonance : 3.,\n/prev_angle : 90"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-49",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 566.0, 152.0, 85.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "FullPacket" ],
									"patching_rect" : [ 449.0, 514.0, 209.0, 22.0 ],
									"text" : "o.select /prev_angle /prev_resonance"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 639.0, 772.25, 29.5, 22.0 ],
									"text" : "t b l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 23.0, 152.0, 445.0, 22.0 ],
									"text" : "t l l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 110.0, 817.0, 558.5, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 639.0, 736.75, 133.0, 22.0 ],
									"text" : "o.pack /filter/resonance"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 639.0, 631.0, 109.0, 22.0 ],
									"text" : "o.route /resonance"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 639.0, 667.75, 45.0, 22.0 ],
									"text" : "$1 500"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 639.0, 702.75, 57.0, 22.0 ],
									"text" : "line 1. 10"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 449.0, 201.0, 136.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 639.0, 594.0, 117.0, 22.0 ],
									"text" : "o.if /angle_delta != 0"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-29",
									"linecount" : 19,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 449.0, 234.0, 446.0, 262.0 ],
									"text" : "/prev_angle ??= 90,\n/prev_resonance ??= 1.,\n\n# Handle angle mod math\n/curr_angle = /angle,\nif( /prev_angle < /angle && /last_rotation_direction < 0,\n  /prev_angle += 360\n),\nif( /prev_angle > /angle && /last_rotation_direction > 0,\n  /curr_angle += 360\n),\n\n/angle_delta = /curr_angle - /prev_angle,\n/resonance_delta = scale(/angle_delta, -60., 60., -0.4, 0.4),\n/resonance = /prev_resonance + /resonance_delta,\n/resonance = clip(/resonance, 0.8, 6.0),\n\n/prev_angle = /angle,\n/prev_resonance = /resonance"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 23.0, 188.0, 140.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 23.0, 401.0, 106.0, 22.0 ],
									"text" : "o.select /prev_pos"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 110.0, 474.0, 275.0, 22.0 ],
									"text" : "o.if /pos_delta[[0]] != 0 || /pos_delta[[1]] != 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 23.0, 120.0, 112.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 116.0, 83.75, 81.0, 22.0 ],
									"text" : "r control-stats"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-418",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 110.0, 702.75, 45.0, 22.0 ],
									"text" : "$1 500"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-414",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 110.0, 736.75, 57.0, 22.0 ],
									"text" : "line 1. 10"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-410",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 110.0, 925.0, 93.0, 22.0 ],
									"text" : "s filter-variables"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-409",
									"linecount" : 3,
									"maxclass" : "o.display",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 110.0, 849.75, 275.0, 59.0 ],
									"text" : "/filter/cutoff : 0.626068,\n/filter/gain : 1.20833,\n/filter/resonance : 2.54667"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-406",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 110.0, 772.25, 244.75, 22.0 ],
									"text" : "o.pack /filter/cutoff /filter/gain"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-398",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 110.0, 667.75, 196.0, 22.0 ],
									"text" : "scale 0. 1170. 0. 1. 1."
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-397",
									"linecount" : 12,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 23.0, 220.0, 395.0, 172.0 ],
									"text" : "/prev_pos ??= /starting_position,\n\n# gain adjustment\n/y = /position[[ 1 ]],\n/gain = scale(/y, 0, /screen_height, 1., 1.5),\n\n# cutoff frequency adjustment\n/pos_delta = /prev_pos - /position,\n/avg_pos = avg(/position),\n/max_val = avg([/screen_width, /screen_height]),\n/mid_val = /max_val / 2,\n/prev_pos = /position"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-395",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "FullPacket" ],
									"patching_rect" : [ 110.0, 631.0, 160.600000000000023, 22.0 ],
									"text" : "o.route /avg_pos /max_val"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-394",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 23.0, 83.75, 78.0, 22.0 ],
									"text" : "r player-stats"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-24", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 1 ],
									"midpoints" : [ 32.5, 441.0, 430.0, 441.0, 430.0, 179.0, 153.5, 179.0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-397", 0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-409", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-38", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 1 ],
									"source" : [ "obj-39", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"midpoints" : [ 648.5, 805.5, 119.5, 805.5 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-394", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-398", 2 ],
									"source" : [ "obj-395", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-398", 0 ],
									"source" : [ "obj-395", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-397", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-418", 0 ],
									"source" : [ "obj-398", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-406", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-410", 0 ],
									"source" : [ "obj-409", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-406", 0 ],
									"source" : [ "obj-414", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-414", 0 ],
									"source" : [ "obj-418", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-42", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 1 ],
									"midpoints" : [ 553.5, 550.0, 909.375, 550.0, 909.375, 136.0, 641.5, 136.0 ],
									"source" : [ "obj-42", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"midpoints" : [ 458.5, 568.0, 930.0, 568.0, 930.0, 124.0, 575.5, 124.0 ],
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 1 ],
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 1 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"source" : [ "obj-57", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 0 ],
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-406", 1 ],
									"source" : [ "obj-61", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-395", 0 ],
									"source" : [ "obj-62", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 0 ],
									"source" : [ "obj-62", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-60", 0 ],
									"source" : [ "obj-63", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 32.0, 2298.779438000000027, 141.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p player-filter-modulation"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-413",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2579.268750268225631, 971.558772921562195, 91.0, 22.0 ],
					"text" : "r filter-variables"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-412",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1783.271875241398448, 971.558772921562195, 91.0, 22.0 ],
					"text" : "r filter-variables"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-411",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 983.300000000000068, 971.558772921562195, 91.0, 22.0 ],
					"text" : "r filter-variables"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-378",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 2290.0, 113.0, 844.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-2",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 305.0, 167.882351517677307, 233.0, 78.0 ],
									"text" : "This value is 1 when the game enters the Gameplay loop, and is used to trigger the Gameplay music."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-360",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.199999999999989, 100.0, 81.0, 22.0 ],
									"text" : "r control-stats"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-358",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 133.0, 368.5, 67.0, 22.0 ],
									"text" : "s game-init"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-357",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 133.0, 337.25, 105.0, 22.0 ],
									"text" : "o.route /game_init"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-356",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.199999999999989, 133.882351517677307, 107.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-355",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 50.0, 261.5, 102.0, 22.0 ],
									"text" : "o.select /prev_init"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-354",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 133.0, 306.5, 71.0, 22.0 ],
									"text" : "o.if /diff != 0"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-353",
									"linecount" : 5,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 50.199999999999989, 162.882351517677307, 231.0, 83.0 ],
									"text" : "/game_init ??= 0,\n/prev_init ??= 0,\n\n/diff = /prev_init - /game_init,\n/prev_init = /game_init"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-355", 0 ],
									"source" : [ "obj-353", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-357", 0 ],
									"source" : [ "obj-354", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-354", 0 ],
									"source" : [ "obj-355", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-356", 1 ],
									"midpoints" : [ 59.5, 293.5, 294.599999999999966, 293.5, 294.599999999999966, 122.882351517677307, 147.699999999999989, 122.882351517677307 ],
									"source" : [ "obj-355", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-353", 0 ],
									"source" : [ "obj-356", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-358", 0 ],
									"source" : [ "obj-357", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-356", 0 ],
									"source" : [ "obj-360", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 250.0, 1979.0, 98.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p send-game-init"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-362",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1135.125, 54.170437932014465, 58.0, 22.0 ],
					"text" : "r max-init"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-361",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 2402.0, 60.0, 1141.0, 683.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-2",
									"linecount" : 5,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 294.0, 164.0, 233.0, 96.0 ],
									"text" : "This value is 1 when Max recieves an OSC bundle from Python for the first time, and is 0 when the Python application is about to quit."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-360",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.199999999999989, 100.0, 81.0, 22.0 ],
									"text" : "r control-stats"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-358",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 133.0, 369.5, 60.0, 22.0 ],
									"text" : "s max-init"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-357",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 133.0, 340.25, 97.0, 22.0 ],
									"text" : "o.route /max_init"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-356",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.199999999999989, 133.882351517677307, 107.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-355",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 50.0, 261.5, 102.0, 22.0 ],
									"text" : "o.select /prev_init"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-354",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 133.0, 306.5, 71.0, 22.0 ],
									"text" : "o.if /diff != 0"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-353",
									"linecount" : 5,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 50.199999999999989, 163.882351517677307, 221.0, 83.0 ],
									"text" : "/max_init ??= 0,\n/prev_init ??= 0,\n\n/diff = /prev_init - /max_init,\n/prev_init = /max_init"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-355", 0 ],
									"source" : [ "obj-353", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-357", 0 ],
									"source" : [ "obj-354", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-354", 0 ],
									"source" : [ "obj-355", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-356", 1 ],
									"midpoints" : [ 59.5, 293.5, 280.599999999999966, 293.5, 280.599999999999966, 122.882351517677307, 147.699999999999989, 122.882351517677307 ],
									"source" : [ "obj-355", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-353", 0 ],
									"source" : [ "obj-356", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-358", 0 ],
									"source" : [ "obj-357", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-356", 0 ],
									"source" : [ "obj-360", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 250.0, 1913.0, 91.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p send-max-init"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-359",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 203.714285714285722, 704.567441582679749, 83.0, 22.0 ],
					"text" : "s control-stats"
				}

			}
, 			{
				"box" : 				{
					"background_color" : [ 0.199999153614044, 0.200005099177361, 0.20000171661377, 1.0 ],
					"flash_color" : [ 0.986251831054688, 0.007236152887344, 0.027423052117229, 1.0 ],
					"fontface" : 0,
					"id" : "obj-347",
					"linecount" : 11,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 203.714285714285722, 541.567441582679749, 318.39999999999992, 161.0 ],
					"presentation" : 1,
					"presentation_linecount" : 11,
					"presentation_rect" : [ 257.999999999999318, 2036.702894151210785, 405.000000000000227, 161.0 ],
					"text" : "/max_init : 0,\n/game_init : 0,\n/menu_init : 0,\n/max_quit : 0,\n/output_device : \"Scarlett 2i2 USB\",\n/fps : 60,\n/num_voices : 3,\n/screen_width : 1440,\n/screen_height : 900,\n/record_music : 0,\n/reset_music : 0",
					"textcolor" : [ 0.999995052814484, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-326",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 155.285714285714278, 827.064894914627075, 89.0, 22.0 ],
					"text" : "s weapon-stats"
				}

			}
, 			{
				"box" : 				{
					"background_color" : [ 0.199999153614044, 0.200005099177361, 0.20000171661377, 1.0 ],
					"flash_color" : [ 0.986251831054688, 0.007236152887344, 0.027423052117229, 1.0 ],
					"fontface" : 0,
					"id" : "obj-325",
					"linecount" : 6,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 155.285714285714278, 732.064894914627075, 366.828571428571365, 97.0 ],
					"presentation" : 1,
					"presentation_linecount" : 6,
					"presentation_rect" : [ 1128.999999999999545, 2100.702894151210785, 405.000000000000227, 97.0 ],
					"text" : "/selected : 0,\n/total_shots_fired : 606,\n/shots_per_weapon : [548, 58],\n/hits_per_weapon : [196, 32],\n/frames/per_weapon : [2035, 1062],\n/percent/one_over_two : 90.429",
					"textcolor" : [ 0.999995052814484, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-115",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1619.953125402330443, 54.170437932014465, 35.0, 22.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-109",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1895.953125402330443, 261.920437932014465, 94.0, 22.0 ],
					"text" : "receive~ mixer3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-106",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1757.953125402330443, 261.920437932014465, 94.0, 22.0 ],
					"text" : "receive~ mixer2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-104",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1631.453125402330443, 261.420463800430298, 94.0, 22.0 ],
					"text" : "receive~ mixer1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-103",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2214.468750268219992, 2685.411789298057556, 81.0, 22.0 ],
					"text" : "send~ mixer3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-102",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1417.984375134109996, 2685.411789298057556, 81.0, 22.0 ],
					"text" : "send~ mixer2"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.098038777709007, 0.098041713237762, 0.09804005920887, 1.0 ],
					"color" : [ 0.986251831054688, 0.007236152887344, 0.027423052117229, 1.0 ],
					"columns" : 5,
					"dialmode" : 2,
					"elementcolor" : [ 0.199999153614044, 0.200005099177361, 0.20000171661377, 1.0 ],
					"id" : "obj-101",
					"maxclass" : "matrixctrl",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "list", "list" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1619.953125402330443, 88.170437932014465, 338.0, 148.88237738609314 ],
					"presentation" : 1,
					"presentation_rect" : [ 1288.000000000004547, 898.617751121520996, 519.0, 207.397027015686035 ],
					"rows" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-76",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 3,
					"outlettype" : [ "signal", "signal", "" ],
					"patching_rect" : [ 1619.953125402330443, 298.420437932014465, 571.0, 22.0 ],
					"text" : "matrix~ 5 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-69",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 106.857142857142861, 1013.747268080711365, 83.0, 22.0 ],
					"text" : "s enemy-stats"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 3486.381327252585379, 534.743970632553101, 56.0, 22.0 ],
					"restore" : 					{
						"live.gain~" : [ -5.0 ]
					}
,
					"text" : "autopattr",
					"varname" : "u802001736"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-125",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 621.499999999999773, 2685.411789298057556, 81.0, 22.0 ],
					"text" : "send~ mixer1"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-122",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "HL-voice.maxpat",
					"numinlets" : 6,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "FullPacket" ],
					"patching_rect" : [ 621.499999999999773, 1003.382351517677307, 622.000000000000682, 798.617648482322693 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 69.0, 621.5, 798.617648000000031 ],
					"varname" : "HL-voice[2]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 707.803423569591132, 198.073435068130493, 113.0, 22.0 ],
					"text" : "metro 4n @active 1"
				}

			}
, 			{
				"box" : 				{
					"background_color" : [ 0.199999153614044, 0.200005099177361, 0.20000171661377, 1.0 ],
					"fontface" : 0,
					"id" : "obj-20",
					"linecount" : 7,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 647.303423569591132, 307.302748560905457, 257.0, 110.0 ],
					"presentation" : 1,
					"presentation_linecount" : 7,
					"presentation_rect" : [ 1568.077826877434745, 1895.702894151210785, 409.0, 110.0 ],
					"text" : "/bars : 29,\n/beats : 1,\n/units : 55.5521,\n/ppq : 480.,\n/tempo/bpm : 120.419,\n/time_sig : [4, 4],\n/total_beats : 113"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "bang", "bang" ],
					"patching_rect" : [ 647.303423569591132, 151.382310628890991, 396.920000000000073, 22.0 ],
					"text" : "t i b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 836.263423569591168, 198.073435068130493, 29.5, 22.0 ],
					"text" : "0."
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-264",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "HL-voice.maxpat",
					"numinlets" : 6,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "FullPacket" ],
					"patching_rect" : [ 1417.984375134109996, 1003.382351517677307, 627.812500178813934, 798.617648482322693 ],
					"presentation" : 1,
					"presentation_rect" : [ 620.0, 69.382351517677307, 620.5, 798.617648482322693 ],
					"varname" : "HL-voice[1]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-250",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "HL-voice.maxpat",
					"numinlets" : 6,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "FullPacket" ],
					"patching_rect" : [ 2214.468750268219992, 1003.382351517677307, 627.00000000000955, 798.617648482322693 ],
					"presentation" : 1,
					"presentation_rect" : [ 1239.5, 69.382351517677307, 622.00000000000955, 798.617648482322693 ],
					"varname" : "HL-voice",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-241",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2673.124999999998636, 489.620231032371521, 78.0, 22.0 ],
					"text" : "s global-pattr"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-240",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3399.286458735663473, 501.685163497924805, 78.0, 22.0 ],
					"text" : "s global-pattr"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-239",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3399.286458735663473, 534.743970632553101, 76.0, 22.0 ],
					"text" : "r global-pattr"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.098038777709007, 0.098041713237762, 0.09804005920887, 1.0 ],
					"checkedcolor" : [ 0.986251831054688, 0.007236152887344, 0.027423052117229, 1.0 ],
					"id" : "obj-230",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1135.125, 86.0, 86.75, 86.75 ],
					"presentation" : 1,
					"presentation_rect" : [ 1653.000000000004547, 1160.420437932014465, 103.0, 103.0 ],
					"uncheckedcolor" : [ 0.501962602138519, 0.0, 0.008127624168992, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-227",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 2396.067047501800516, 450.332170486450195, 541.057952498198574, 22.0 ],
					"text" : "i"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.098038777709007, 0.098041713237762, 0.09804005920887, 1.0 ],
					"id" : "obj-228",
					"maxclass" : "number",
					"minimum" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2918.124999999999091, 338.426449775695801, 48.823529362678528, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1308.882368624210358, 1533.420437932014465, 48.823529362678528, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-219",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3457.286458735663473, 450.096941113471985, 63.0, 22.0 ],
					"text" : "writeagain"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-200",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 647.303423569591132, 459.182543396949768, 91.0, 22.0 ],
					"text" : "s transport-vals"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.098038777709007, 0.098041713237762, 0.09804005920887, 1.0 ],
					"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.098038777709007, 0.098041713237762, 0.09804005920887, 1.0 ],
					"bgfillcolor_color1" : [ 0.098038777709007, 0.098041713237762, 0.09804005920887, 1.0 ],
					"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
					"bgfillcolor_proportion" : 0.5,
					"bgfillcolor_type" : "gradient",
					"gradient" : 1,
					"id" : "obj-169",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3399.286458735663473, 329.435125946998596, 93.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1426.882368624210358, 1573.420437932014465, 93.0, 22.0 ],
					"text" : "read music.json"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-154",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3448.786458735663473, 420.920476317405701, 34.0, 22.0 ],
					"text" : "write"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.098038777709007, 0.098041713237762, 0.09804005920887, 1.0 ],
					"blinkcolor" : [ 0.986251831054688, 0.007236152887344, 0.027423052117229, 1.0 ],
					"id" : "obj-152",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.986251831054688, 0.007236152887344, 0.027423052117229, 1.0 ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3174.287396525342047, 378.426449775695801, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1484.882368624210358, 1525.920437932014465, 37.11763137579419, 37.11763137579419 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-150",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 3174.287396525342047, 416.07351016998291, 79.389687076210976, 22.0 ],
					"text" : "i"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.098038777709007, 0.098041713237762, 0.09804005920887, 1.0 ],
					"id" : "obj-149",
					"maxclass" : "number",
					"minimum" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3234.677083601553022, 378.426449775695801, 48.823529362678528, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1426.882368624210358, 1533.47925361991156, 48.823529362678528, 22.0 ],
					"textcolor" : [ 0.986251831054688, 0.007236152887344, 0.027423052117229, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-147",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3174.287396525342047, 450.332170486450195, 52.0, 22.0 ],
					"text" : "store $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-99",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 1719.358933091163635, 77.0, 22.0 ],
					"text" : "s game-stats"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-97",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 58.428571428571445, 1554.738727927207947, 80.0, 22.0 ],
					"text" : "s player-stats"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-92",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 902.744106070191947, 197.823435068130493, 90.0, 22.0 ],
					"text" : "r transport-msg"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.098038777709007, 0.098041713237762, 0.09804005920887, 1.0 ],
					"checkedcolor" : [ 0.986251831054688, 0.007236152887344, 0.027423052117229, 1.0 ],
					"id" : "obj-81",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 647.303423569591132, 188.573435068130493, 41.0, 41.0 ],
					"uncheckedcolor" : [ 0.501962602138519, 0.0, 0.008127624168992, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-77",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 9,
					"outlettype" : [ "int", "int", "float", "float", "float", "", "int", "float", "" ],
					"patching_rect" : [ 647.303423569591132, 248.823435068130493, 207.960000000000036, 22.0 ],
					"text" : "transport"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-71",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"orientation" : 1,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1619.953125402330443, 441.53811180042976, 295.0, 47.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1262.000000000007276, 1284.932429909706116, 576.0, 47.0 ],
					"saved_attribute_attributes" : 					{
						"slidercolor" : 						{
							"expression" : ""
						}
,
						"textcolor" : 						{
							"expression" : ""
						}
,
						"tricolor" : 						{
							"expression" : ""
						}
,
						"valueof" : 						{
							"parameter_longname" : "live.gain~",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"slidercolor" : [ 0.701957821846008, 0.701978802680969, 0.701966881752014, 1.0 ],
					"textcolor" : [ 0.999995052814484, 1.0, 1.0, 1.0 ],
					"tricolor" : [ 0.999995052814484, 1.0, 1.0, 1.0 ],
					"varname" : "live.gain~"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.098038777709007, 0.098041713237762, 0.09804005920887, 1.0 ],
					"color" : [ 0.986251831054688, 0.007236152887344, 0.027423052117229, 1.0 ],
					"elementcolor" : [ 0.501958668231964, 0.501973569393158, 0.5019651055336, 1.0 ],
					"id" : "obj-72",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 1620.453125402330443, 616.138437628746033, 87.5, 87.5 ],
					"presentation" : 1,
					"presentation_rect" : [ 1346.500000000009322, 1160.420437932014465, 103.0, 103.0 ]
				}

			}
, 			{
				"box" : 				{
					"background_color" : [ 0.199999153614044, 0.200005099177361, 0.20000171661377, 1.0 ],
					"flash_color" : [ 0.986251831054688, 0.007236152887344, 0.027423052117229, 1.0 ],
					"fontface" : 0,
					"id" : "obj-43",
					"linecount" : 10,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 106.857142857142861, 859.747268080711365, 415.257142857142753, 149.0 ],
					"presentation" : 1,
					"presentation_linecount" : 10,
					"presentation_rect" : [ 1128.999999999999545, 1884.702894151210785, 405.000000000000227, 149.0 ],
					"text" : "/total : 18,\n/standard_count : 18,\n/special_count : 0,\n/num_on_screen : [0, 3.36971, 2, 7, 3097],\n/hit : 228,\n/killed : 17,\n/hit_distance : [45.607, 374.46, 147.513, 1068., 228],\n/alive_projectiles : 4,\n/score : 215,\n/time/lifespan : [3233, 10407.8, 18446, 18722, 17]",
					"textcolor" : [ 0.999995052814484, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3414.286458735663473, 360.185125946998596, 77.0, 22.0 ],
					"text" : "clientwindow"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.098038777709007, 0.098041713237762, 0.09804005920887, 1.0 ],
					"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.098038777709007, 0.098041713237762, 0.09804005920887, 1.0 ],
					"bgfillcolor_color1" : [ 0.098038777709007, 0.098041713237762, 0.09804005920887, 1.0 ],
					"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
					"bgfillcolor_proportion" : 0.5,
					"bgfillcolor_type" : "gradient",
					"gradient" : 1,
					"id" : "obj-32",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3431.286458735663473, 389.935125946998596, 89.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1308.882368624210358, 1573.420437932014465, 89.0, 22.0 ],
					"text" : "storagewindow"
				}

			}
, 			{
				"box" : 				{
					"active" : 					{
						"live.gain~" : 0
					}
,
					"autorestore" : "music.json",
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3399.286458735663473, 565.567503333091736, 107.0, 22.0 ],
					"saved_object_attributes" : 					{
						"client_rect" : [ 2240, 169, 3841, 1020 ],
						"parameter_enable" : 0,
						"parameter_mappable" : 0,
						"storage_rect" : [ 2217, 71, 3743, 801 ]
					}
,
					"text" : "pattrstorage music",
					"varname" : "music"
				}

			}
, 			{
				"box" : 				{
					"background_color" : [ 0.199999153614044, 0.200005099177361, 0.20000171661377, 1.0 ],
					"flash_color" : [ 0.986251831054688, 0.007236152887344, 0.027423052117229, 1.0 ],
					"fontface" : 0,
					"id" : "obj-16",
					"linecount" : 7,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 10.0, 1594.358933091163635, 304.0, 110.0 ],
					"presentation" : 1,
					"presentation_linecount" : 7,
					"presentation_rect" : [ 257.999999999999318, 1703.702894151210785, 405.000000000000227, 110.0 ],
					"text" : "/play_count : 3,\n/time/total_played : [0, 2, 54, 342],\n/score : 426,\n/total_frames : 3097,\n/time/current_playthrough : [0, 0, 51, 348],\n/num_events : 1,\n/percent/note_over_enemy_score : 49.5305",
					"textcolor" : [ 0.999995052814484, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"background_color" : [ 0.199999153614044, 0.200005099177361, 0.20000171661377, 1.0 ],
					"flash_color" : [ 0.986251831054688, 0.007236152887344, 0.027423052117229, 1.0 ],
					"fontface" : 0,
					"id" : "obj-15",
					"linecount" : 37,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 58.428571428571431, 1047.738727927207947, 463.999999999999886, 494.0 ],
					"presentation" : 1,
					"presentation_linecount" : 37,
					"presentation_rect" : [ 691.264705538751969, 1703.702894151210785, 408.0, 494.0 ],
					"text" : "/starting_position : [720, 800],\n/starting_angle : 90,\n/position : [1090, 375],\n/vertical_half : \"top\",\n/horizontal_half : \"right\",\n/frames/moving_and_rotating : 418,\n/frames/moving : 1518,\n/frames/still : 1008,\n/frames/rotating : 153,\n/frames/firing : 2892,\n/frames/per_screen_quadrant : [1190, 669, 776, 462],\n/frames/per_angle_quadrant : [997, 1007, 322, 771],\n/percent/firing_weapon : 93.3807,\n/percent/moving_over_rotating : 90.8438,\n/percent/moving_and_rotating : 20.0096,\n/percent/health_lost_over_gained : 0.,\n/percent/dodges_over_enemy_collision : 75.,\n/percent/hit_rests_over_accidentals : 50.,\n/percent/missed_notes_over_dodges : 73.913,\n/curr_velocity : [0, 0],\n/curr_speed : 0.,\n/angle : 148,\n/last_rotation_direction : 2,\n/percent/accuracy : 37.6238,\n/time/between_kills : [0, 2500., 2191, 7812, 17],\n/time/between_getting_hit : [inf, 0, 0, -inf, 0],\n/max_health : 10,\n/curr_health : 10,\n/health_lost : 0,\n/health_gained : 2,\n/projectile_hit_count : [\"rest\", 0, \"sharp\", 0, \"flat\", 0, \"natural\", 0],\n/hit_distance : [inf, 0, 0, -inf, 0],\n/enemies_collided : 2,\n/dodges : 6,\n/missed_nearby_notes : 17,\n/alive_projectiles : 0",
					"textcolor" : [ 0.999995052814484, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 8,
					"outlettype" : [ "", "", "", "", "", "", "", "FullPacket" ],
					"patching_rect" : [ 10.0, 180.846961975097656, 358.0, 22.0 ],
					"text" : "o.route /game /player /enemies /weapon /control /upgrades /notes"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 10.0, 150.729313492774963, 141.0, 22.0 ],
					"text" : "o.union"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 10.0, 118.905734896659851, 69.0, 22.0 ],
					"text" : "qmetro 250"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.098038777709007, 0.098041713237762, 0.09804005920887, 1.0 ],
					"checkedcolor" : [ 0.986251831054688, 0.007236152887344, 0.027423052117229, 1.0 ],
					"id" : "obj-7",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 10.0, 85.170437932014465, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1496.000000000004547, 1160.420437932014465, 103.0, 103.0 ],
					"uncheckedcolor" : [ 0.501962602138519, 0.0, 0.008127624168992, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 132.0, 118.905734896659851, 130.0, 22.0 ],
					"text" : "udpreceive 8001 OSC"
				}

			}
, 			{
				"box" : 				{
					"allowdrag" : 0,
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.098038777709007, 0.098041713237762, 0.09804005920887, 1.0 ],
					"bgfillcolor_color1" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgfillcolor_color2" : [ 0.098038777709007, 0.098041713237762, 0.09804005920887, 1.0 ],
					"bgfillcolor_proportion" : 0.5,
					"bgfillcolor_type" : "gradient",
					"id" : "obj-308",
					"items" : [ "None", ",", "RZ39-0276", ",", "ASUS VG278HV", ",", "Scarlett 2i2 USB", ",", "MacBook Pro Speakers" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 57.0, 2649.779411911964417, 161.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1594.077826877439293, 1525.920437932014465, 161.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.4, 0.4, 0.4, 1.0 ],
					"border" : 2,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-402",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3289.984375134109541, 2821.69487738609314, 180.0, 165.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 36.52941107749939, 1663.702894151210785, 2177.470588922505158, 560.5 ],
					"proportion" : 0.5,
					"rounded" : 12
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.199999153614044, 0.200005099177361, 0.20000171661377, 1.0 ],
					"border" : 2,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-455",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3613.949999999999818, 2821.69487738609314, 120.0, 165.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1860.468750268224767, 587.420437932014465, 398.000000000000227, 515.09421169757843 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.199999153614044, 0.200005099177361, 0.20000171661377, 1.0 ],
					"border" : 2,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-454",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3481.949999999999818, 2821.69487738609314, 120.0, 165.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1859.50000000000955, 1099.523436302421487, 398.000000000000455, 526.09421169757843 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.4, 0.4, 0.4, 1.0 ],
					"border" : 2,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-511",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2884.484375134109996, 4871.11762261390686, 180.0, 165.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1254.205889850854874, 878.367647999999917, 596.470588922505158, 735.00302184176644 ],
					"proportion" : 0.5,
					"rounded" : 12
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.199999153614044, 0.200005099177361, 0.20000171661377, 1.0 ],
					"border" : 2,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-510",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3891.5, 2821.69487738609314, 115.300000000000182, 165.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1238.500000000004547, 863.617648000000031, 623.000000000005002, 762.999999999999886 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.199999153614044, 0.200005099177361, 0.20000171661377, 1.0 ],
					"border" : 2,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-456",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3748.299999999999727, 2821.69487738609314, 120.0, 165.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1860.468750268224767, 69.326226234436035, 398.000000000000227, 522.09421169757843 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.199999153614044, 0.200005099177361, 0.20000171661377, 1.0 ],
					"border" : 2,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-400",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2976.949999999999818, 2821.69487738609314, 301.0, 165.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 1621.90578800000003, 2257.500000000010004, 622.09421199999997 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.098038777709007, 0.098041713237762, 0.09804005920887, 1.0 ],
					"border" : 2,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-513",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4029.5, 2821.69487738609314, 115.300000000000182, 165.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 0.11762261390686, 2258.468750268224994, 73.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"border" : 4,
					"bordercolor" : [ 0.501962602138519, 0.0, 0.008127624168992, 1.0 ],
					"id" : "obj-546",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2319.0, 0.0, 1507.437500536440893, 720.0 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"border" : 4,
					"bordercolor" : [ 0.501962602138519, 0.0, 0.008127624168992, 1.0 ],
					"id" : "obj-548",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1110.156249731779553, 0.0, 418.303750268220256, 720.0 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"border" : 4,
					"bordercolor" : [ 0.501962602138519, 0.0, 0.008127624168992, 1.0 ],
					"id" : "obj-547",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1523.566666666673882, 0.0, 799.218750268220447, 720.0 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"border" : 4,
					"bordercolor" : [ 0.501962602138519, 0.0, 0.008127624168992, 1.0 ],
					"id" : "obj-553",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 598.156249731779553, 0.0, 516.847917471335222, 720.0 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"border" : 4,
					"bordercolor" : [ 0.501962602138519, 0.0, 0.008127624168992, 1.0 ],
					"id" : "obj-555",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ -1.722917471335222, 0.0, 602.847917471335222, 1833.0 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.501966655254364, 0.001555860042572, 0.9985111951828, 0.25 ],
					"border" : 4,
					"bordercolor" : [ 0.501962602138519, 0.0, 0.008127624168992, 1.0 ],
					"id" : "obj-558",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ -1.722917471335222, 1873.125, 215.847917471335222, 236.875 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.501966655254364, 0.001555860042572, 0.9985111951828, 0.249560223509934 ],
					"border" : 4,
					"bordercolor" : [ 0.501962602138519, 0.0, 0.008127624168992, 1.0 ],
					"id" : "obj-563",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 386.152082528664778, 1873.125, 214.972917471335222, 236.875 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.000066079199314, 0.001801013946533, 0.998228549957275, 0.254578849337748 ],
					"border" : 4,
					"bordercolor" : [ 0.501962602138519, 0.0, 0.008127624168992, 1.0 ],
					"id" : "obj-562",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 209.277082528664778, 1873.125, 181.847917471335222, 236.875 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.986251831054688, 0.007236152887344, 0.027423052117229, 0.250973328849338 ],
					"border" : 4,
					"bordercolor" : [ 0.501962602138519, 0.0, 0.008127624168992, 1.0 ],
					"id" : "obj-567",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ -1.722917471335222, 2105.125, 602.847917471335222, 256.875 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.000066079199314, 0.001801013946533, 0.998228549957275, 0.247807584850993 ],
					"border" : 4,
					"bordercolor" : [ 0.501962602138519, 0.0, 0.008127624168992, 1.0 ],
					"id" : "obj-568",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ -1.722917471335222, 2357.125, 300.847917471335222, 201.875 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.501966655254364, 0.001555860042572, 0.9985111951828, 0.248085678807947 ],
					"border" : 4,
					"bordercolor" : [ 0.501962602138519, 0.0, 0.008127624168992, 1.0 ],
					"id" : "obj-569",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 296.277082528664778, 2357.125, 304.847917471335222, 201.875 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.986251831054688, 0.007236152887344, 0.027423052117229, 0.253445454780629 ],
					"border" : 4,
					"bordercolor" : [ 0.501962602138519, 0.0, 0.008127624168992, 1.0 ],
					"id" : "obj-570",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ -1.722917471335222, 2554.125, 602.847917471335222, 165.875 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"border" : 4,
					"bordercolor" : [ 0.501962602138519, 0.0, 0.008127624168992, 1.0 ],
					"id" : "obj-557",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ -1.722917471335222, 1830.0, 602.847917471335222, 890.0 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"border" : 4,
					"bordercolor" : [ 0.501962602138519, 0.0, 0.008127624168992, 1.0 ],
					"id" : "obj-579",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 597.303423569591132, 716.0, 3971.847917471334767, 1255.0 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"border" : 4,
					"bordercolor" : [ 0.501962602138519, 0.0, 0.008127624168992, 1.0 ],
					"id" : "obj-583",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 597.303423569591132, 1969.3125, 3971.847917471334767, 751.6875 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"border" : 4,
					"bordercolor" : [ 0.501962602138519, 0.0, 0.008127624168992, 1.0 ],
					"id" : "obj-585",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2381.277082528664778, 2716.0, 2187.847917471335222, 287.0 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"border" : 4,
					"bordercolor" : [ 0.501962602138519, 0.0, 0.008127624168992, 1.0 ],
					"id" : "obj-584",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ -1.722917471335222, 2716.0, 2387.847917471335222, 287.0 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"border" : 4,
					"bordercolor" : [ 0.501962602138519, 0.0, 0.008127624168992, 1.0 ],
					"id" : "obj-612",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3820.312500536441803, 538.0, 748.838840504484324, 182.0 ],
					"proportion" : 0.5
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 1 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 0 ],
					"source" : [ "obj-101", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 0 ],
					"source" : [ "obj-104", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-87", 0 ],
					"source" : [ "obj-105", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 1 ],
					"source" : [ "obj-106", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 2 ],
					"source" : [ "obj-109", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 1 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-101", 0 ],
					"source" : [ "obj-115", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-113", 0 ],
					"source" : [ "obj-116", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-114", 0 ],
					"source" : [ "obj-117", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-218", 0 ],
					"source" : [ "obj-122", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-446", 2 ],
					"midpoints" : [ 630.999999999999773, 2074.0, 985.999999999999773, 2074.0 ],
					"order" : 0,
					"source" : [ "obj-122", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-446", 0 ],
					"order" : 1,
					"source" : [ "obj-122", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-126", 0 ],
					"source" : [ "obj-127", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-129", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-13", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"source" : [ "obj-13", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-81", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-128", 0 ],
					"source" : [ "obj-130", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 0 ],
					"source" : [ "obj-131", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 0 ],
					"source" : [ "obj-136", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-140", 0 ],
					"source" : [ "obj-14", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-14", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-226", 0 ],
					"source" : [ "obj-14", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-325", 0 ],
					"source" : [ "obj-14", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-347", 0 ],
					"source" : [ "obj-14", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"source" : [ "obj-14", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-139", 0 ],
					"source" : [ "obj-140", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 1 ],
					"source" : [ "obj-143", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"source" : [ "obj-143", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-241", 0 ],
					"midpoints" : [ 3183.787396525342047, 481.258615255355835, 2682.624999999998636, 481.258615255355835 ],
					"source" : [ "obj-147", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-150", 1 ],
					"source" : [ "obj-149", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-147", 0 ],
					"source" : [ "obj-150", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-150", 0 ],
					"source" : [ "obj-152", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-240", 0 ],
					"source" : [ "obj-154", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-177", 0 ],
					"source" : [ "obj-156", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 0 ],
					"source" : [ "obj-156", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-158", 0 ],
					"source" : [ "obj-157", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-349", 0 ],
					"source" : [ "obj-158", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"midpoints" : [ 439.999999999999773, 113.038086414337158, 298.033333333333303, 113.038086414337158 ],
					"source" : [ "obj-160", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-143", 1 ],
					"source" : [ "obj-161", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-143", 0 ],
					"source" : [ "obj-161", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-160", 0 ],
					"source" : [ "obj-162", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-163", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-132", 0 ],
					"source" : [ "obj-164", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-164", 0 ],
					"source" : [ "obj-165", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-305", 0 ],
					"order" : 0,
					"source" : [ "obj-166", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-85", 0 ],
					"order" : 1,
					"source" : [ "obj-166", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-240", 0 ],
					"source" : [ "obj-169", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-170", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-213", 3 ],
					"source" : [ "obj-177", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-213", 4 ],
					"source" : [ "obj-178", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-180", 0 ],
					"source" : [ "obj-179", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-227", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-350", 0 ],
					"source" : [ "obj-180", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-308", 0 ],
					"source" : [ "obj-182", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-178", 0 ],
					"source" : [ "obj-186", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 0 ],
					"source" : [ "obj-186", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 3 ],
					"source" : [ "obj-190", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 4 ],
					"source" : [ "obj-191", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-101", 0 ],
					"midpoints" : [ 1678.453125402330443, 81.670437932014465, 1629.453125402330443, 81.670437932014465 ],
					"source" : [ "obj-199", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-542", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-215", 0 ],
					"source" : [ "obj-213", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-214", 0 ],
					"source" : [ "obj-215", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-213", 0 ],
					"source" : [ "obj-218", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-240", 0 ],
					"source" : [ "obj-219", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-213", 1 ],
					"source" : [ "obj-220", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-213", 2 ],
					"source" : [ "obj-221", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-312", 0 ],
					"source" : [ "obj-222", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-229", 0 ],
					"source" : [ "obj-226", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-241", 0 ],
					"midpoints" : [ 2405.567047501800516, 480.629285097122192, 2682.624999999998636, 480.629285097122192 ],
					"source" : [ "obj-227", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-227", 1 ],
					"source" : [ "obj-228", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-566", 0 ],
					"source" : [ "obj-230", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"midpoints" : [ 3408.786458735663473, 559.155736982822418, 3408.786458735663473, 559.155736982822418 ],
					"source" : [ "obj-239", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-245", 0 ],
					"source" : [ "obj-242", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-264", 0 ],
					"source" : [ "obj-246", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-346", 0 ],
					"source" : [ "obj-247", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-254", 0 ],
					"source" : [ "obj-249", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-221", 0 ],
					"source" : [ "obj-250", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-373", 2 ],
					"midpoints" : [ 2223.968750268219992, 2069.0, 2578.968750268219992, 2069.0 ],
					"order" : 0,
					"source" : [ "obj-250", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-373", 0 ],
					"order" : 1,
					"source" : [ "obj-250", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-169", 0 ],
					"source" : [ "obj-254", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 1 ],
					"source" : [ "obj-255", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-261", 1 ],
					"source" : [ "obj-255", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-309", 0 ],
					"source" : [ "obj-255", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-149", 0 ],
					"source" : [ "obj-256", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-152", 0 ],
					"source" : [ "obj-256", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-256", 0 ],
					"source" : [ "obj-261", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-122", 0 ],
					"source" : [ "obj-262", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-261", 0 ],
					"source" : [ "obj-263", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-220", 0 ],
					"source" : [ "obj-264", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-443", 2 ],
					"midpoints" : [ 1427.484375134109996, 2073.0, 1782.484375134109996, 2073.0 ],
					"order" : 0,
					"source" : [ "obj-264", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-443", 0 ],
					"order" : 1,
					"source" : [ "obj-264", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-337", 0 ],
					"source" : [ "obj-266", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-250", 0 ],
					"source" : [ "obj-291", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-293", 0 ],
					"source" : [ "obj-292", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-348", 0 ],
					"source" : [ "obj-294", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-182", 0 ],
					"midpoints" : [ 66.5, 2681.779411911964417, 48.5, 2681.779411911964417, 48.5, 2606.779411911964417, 66.5, 2606.779411911964417 ],
					"source" : [ "obj-308", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-484", 0 ],
					"midpoints" : [ 2983.901041800775602, 324.541051864624023, 2451.086365001200193, 324.541051864624023 ],
					"source" : [ "obj-309", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-122", 1 ],
					"source" : [ "obj-311", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-255", 0 ],
					"source" : [ "obj-312", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-312", 0 ],
					"source" : [ "obj-313", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-264", 1 ],
					"source" : [ "obj-315", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-250", 1 ],
					"source" : [ "obj-316", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-240", 0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-326", 0 ],
					"source" : [ "obj-325", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-122", 0 ],
					"source" : [ "obj-337", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-438", 2 ],
					"midpoints" : [ 3375.453125402330443, 2478.867683947086334, 3375.453125402330443, 2478.867683947086334 ],
					"source" : [ "obj-340", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-438", 0 ],
					"source" : [ "obj-340", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-440", 2 ],
					"source" : [ "obj-344", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-440", 0 ],
					"source" : [ "obj-344", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-264", 0 ],
					"source" : [ "obj-346", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-359", 0 ],
					"source" : [ "obj-347", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-250", 0 ],
					"source" : [ "obj-348", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-156", 0 ],
					"source" : [ "obj-349", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"midpoints" : [ 766.763423569591396, 143.944164991378784, 656.803423569591132, 143.944164991378784 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-186", 0 ],
					"source" : [ "obj-350", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-122", 2 ],
					"source" : [ "obj-351", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-264", 2 ],
					"source" : [ "obj-352", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-250", 2 ],
					"source" : [ "obj-353", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-264", 4 ],
					"source" : [ "obj-354", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-264", 5 ],
					"source" : [ "obj-355", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-122", 5 ],
					"source" : [ "obj-356", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-250", 5 ],
					"source" : [ "obj-357", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-156", 3 ],
					"source" : [ "obj-358", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-186", 3 ],
					"source" : [ "obj-360", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-230", 0 ],
					"source" : [ "obj-362", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-340", 1 ],
					"source" : [ "obj-368", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 1 ],
					"source" : [ "obj-372", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 2 ],
					"source" : [ "obj-373", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-373", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-373", 1 ],
					"source" : [ "obj-374", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-228", 0 ],
					"source" : [ "obj-38", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-472", 0 ],
					"source" : [ "obj-38", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-484", 1 ],
					"source" : [ "obj-38", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-122", 4 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-240", 0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-406", 0 ],
					"source" : [ "obj-405", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-169", 0 ],
					"midpoints" : [ 3489.498958628375021, 323.560125946998596, 3408.786458735663473, 323.560125946998596 ],
					"source" : [ "obj-406", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-122", 3 ],
					"source" : [ "obj-411", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-264", 3 ],
					"source" : [ "obj-412", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-250", 3 ],
					"source" : [ "obj-413", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"midpoints" : [ 1034.723423569591205, 239.823435068130493, 656.803423569591132, 239.823435068130493 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-103", 0 ],
					"midpoints" : [ 2578.968750268219992, 2672.753694951534271, 2223.968750268219992, 2672.753694951534271 ],
					"source" : [ "obj-432", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-103", 0 ],
					"midpoints" : [ 2223.968750268219992, 2678.547800302505493, 2223.968750268219992, 2678.547800302505493 ],
					"source" : [ "obj-432", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-432", 1 ],
					"source" : [ "obj-433", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-435", 1 ],
					"source" : [ "obj-434", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-102", 0 ],
					"midpoints" : [ 1782.484375134109996, 2669.547800302505493, 1427.484375134109996, 2669.547800302505493 ],
					"source" : [ "obj-435", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-102", 0 ],
					"source" : [ "obj-435", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-437", 1 ],
					"source" : [ "obj-436", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-435", 2 ],
					"source" : [ "obj-437", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-435", 0 ],
					"source" : [ "obj-437", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 0 ],
					"midpoints" : [ 3375.453125402330443, 2678.547800302505493, 3020.453125402330443, 2678.547800302505493 ],
					"source" : [ "obj-438", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 0 ],
					"source" : [ "obj-438", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-438", 1 ],
					"source" : [ "obj-439", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-250", 4 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-189", 0 ],
					"midpoints" : [ 4171.937500536440893, 2677.547800302505493, 3816.937500536440893, 2677.547800302505493 ],
					"source" : [ "obj-440", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-189", 0 ],
					"source" : [ "obj-440", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-440", 1 ],
					"source" : [ "obj-441", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-437", 2 ],
					"source" : [ "obj-443", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-437", 0 ],
					"source" : [ "obj-443", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-443", 1 ],
					"source" : [ "obj-444", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-446", 1 ],
					"source" : [ "obj-445", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-450", 2 ],
					"source" : [ "obj-446", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-450", 0 ],
					"source" : [ "obj-446", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-448", 1 ],
					"source" : [ "obj-447", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-125", 0 ],
					"midpoints" : [ 985.999999999999773, 2665.077186653476929, 630.999999999999773, 2665.077186653476929 ],
					"source" : [ "obj-448", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-125", 0 ],
					"source" : [ "obj-448", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-450", 1 ],
					"source" : [ "obj-449", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-448", 2 ],
					"source" : [ "obj-450", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-448", 0 ],
					"source" : [ "obj-450", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-156", 2 ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-535", 0 ],
					"source" : [ "obj-472", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-138", 0 ],
					"source" : [ "obj-484", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-518", 0 ],
					"source" : [ "obj-484", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-484", 0 ],
					"source" : [ "obj-490", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-491", 0 ],
					"source" : [ "obj-492", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-492", 0 ],
					"source" : [ "obj-493", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-432", 2 ],
					"source" : [ "obj-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-432", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-503", 0 ],
					"source" : [ "obj-500", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-483", 0 ],
					"source" : [ "obj-518", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-484", 0 ],
					"midpoints" : [ 2451.086365001200193, 399.864144921302795, 2434.586365001199738, 399.864144921302795, 2434.586365001199738, 324.067415714263916, 2451.086365001200193, 324.067415714263916 ],
					"source" : [ "obj-518", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-538", 0 ],
					"source" : [ "obj-518", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-186", 2 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-375", 0 ],
					"source" : [ "obj-535", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-471", 0 ],
					"source" : [ "obj-535", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-200", 0 ],
					"source" : [ "obj-542", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.986251831054688, 0.007236152887344, 0.027423052117229, 1.0 ],
					"destination" : [ "obj-543", 0 ],
					"midpoints" : [ 760.136756902924617, 493.5, 630.999999999999773, 493.5 ],
					"source" : [ "obj-542", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.098038777709007, 0.098041713237762, 0.09804005920887, 1.0 ],
					"destination" : [ "obj-337", 0 ],
					"midpoints" : [ 2400.965278075800597, 861.588313341140747, 630.999999999999773, 861.588313341140747 ],
					"source" : [ "obj-543", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.986251831054688, 0.007236152887344, 0.027423052117229, 1.0 ],
					"destination" : [ "obj-337", 0 ],
					"source" : [ "obj-543", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.098038777709007, 0.098041713237762, 0.09804005920887, 1.0 ],
					"destination" : [ "obj-346", 0 ],
					"midpoints" : [ 2754.958333690959989, 861.588313341140747, 1427.484375134109996, 861.588313341140747 ],
					"source" : [ "obj-543", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.986251831054688, 0.007236152887344, 0.027423052117229, 1.0 ],
					"destination" : [ "obj-346", 0 ],
					"midpoints" : [ 984.993055615159847, 848.588313341140747, 1427.484375134109996, 848.588313341140747 ],
					"source" : [ "obj-543", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.098038777709007, 0.098041713237762, 0.09804005920887, 1.0 ],
					"destination" : [ "obj-348", 0 ],
					"midpoints" : [ 3108.951389306120291, 861.588313341140747, 2223.968750268219992, 861.588313341140747 ],
					"source" : [ "obj-543", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.986251831054688, 0.007236152887344, 0.027423052117229, 1.0 ],
					"destination" : [ "obj-348", 0 ],
					"midpoints" : [ 1338.986111230319921, 848.588313341140747, 2223.968750268219992, 848.588313341140747 ],
					"source" : [ "obj-543", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.098038777709007, 0.098041713237762, 0.09804005920887, 1.0 ],
					"destination" : [ "obj-349", 0 ],
					"midpoints" : [ 3462.944444921280592, 862.279386460781097, 3020.453125402330443, 862.279386460781097 ],
					"source" : [ "obj-543", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.986251831054688, 0.007236152887344, 0.027423052117229, 1.0 ],
					"destination" : [ "obj-349", 0 ],
					"midpoints" : [ 1692.979166845479995, 848.279386460781097, 3020.453125402330443, 848.279386460781097 ],
					"source" : [ "obj-543", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.098038777709007, 0.098041713237762, 0.09804005920887, 1.0 ],
					"destination" : [ "obj-350", 0 ],
					"source" : [ "obj-543", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.986251831054688, 0.007236152887344, 0.027423052117229, 1.0 ],
					"destination" : [ "obj-350", 0 ],
					"midpoints" : [ 2046.972222460640069, 847.235281109809875, 3816.937500536440893, 847.235281109809875 ],
					"source" : [ "obj-543", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-561", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-123", 0 ],
					"source" : [ "obj-566", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-252", 0 ],
					"source" : [ "obj-566", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-534", 0 ],
					"source" : [ "obj-566", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 1 ],
					"source" : [ "obj-582", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 1 ],
					"source" : [ "obj-582", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-603", 0 ],
					"midpoints" : [ 4201.231920788683055, 677.655754923820496, 4087.231920788683055, 677.655754923820496 ],
					"source" : [ "obj-609", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-603", 1 ],
					"source" : [ "obj-610", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-603", 0 ],
					"source" : [ "obj-611", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-603", 0 ],
					"midpoints" : [ 4040.5, 678.655754923820496, 4087.231920788683055, 678.655754923820496 ],
					"source" : [ "obj-619", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-105", 0 ],
					"source" : [ "obj-64", 11 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-116", 0 ],
					"source" : [ "obj-64", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-117", 0 ],
					"source" : [ "obj-64", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-127", 0 ],
					"source" : [ "obj-64", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-130", 0 ],
					"source" : [ "obj-64", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-165", 0 ],
					"source" : [ "obj-64", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-166", 0 ],
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-167", 0 ],
					"source" : [ "obj-64", 13 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-292", 0 ],
					"source" : [ "obj-64", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"source" : [ "obj-64", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"source" : [ "obj-64", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-493", 0 ],
					"source" : [ "obj-64", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-84", 0 ],
					"source" : [ "obj-64", 12 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 0 ],
					"source" : [ "obj-64", 10 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-607", 0 ],
					"midpoints" : [ 1629.453125402330443, 496.846933362125128, 1549.246875169872737, 496.846933362125128 ],
					"order" : 1,
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-608", 0 ],
					"midpoints" : [ 1698.453125402330443, 496.846933362125128, 1713.246875169872737, 496.846933362125128 ],
					"order" : 0,
					"source" : [ "obj-71", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 1 ],
					"order" : 1,
					"source" : [ "obj-71", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"order" : 0,
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-161", 1 ],
					"source" : [ "obj-76", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-161", 0 ],
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-170", 5 ],
					"source" : [ "obj-77", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-170", 4 ],
					"source" : [ "obj-77", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-170", 3 ],
					"source" : [ "obj-77", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-170", 2 ],
					"source" : [ "obj-77", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-170", 1 ],
					"source" : [ "obj-77", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-170", 0 ],
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-340", 2 ],
					"midpoints" : [ 3020.453125402330443, 2303.661789298057556, 3375.453125402330443, 2303.661789298057556 ],
					"order" : 0,
					"source" : [ "obj-79", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-340", 0 ],
					"order" : 1,
					"source" : [ "obj-79", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-344", 2 ],
					"midpoints" : [ 3816.937500536440893, 2304.661789298057556, 4171.937500536440893, 2304.661789298057556 ],
					"order" : 0,
					"source" : [ "obj-80", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-344", 0 ],
					"order" : 1,
					"source" : [ "obj-80", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"source" : [ "obj-81", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-163", 0 ],
					"source" : [ "obj-84", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"source" : [ "obj-86", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-169", 0 ],
					"source" : [ "obj-89", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-131", 0 ],
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-263", 0 ],
					"source" : [ "obj-91", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"midpoints" : [ 912.244106070191947, 239.823435068130493, 656.803423569591132, 239.823435068130493 ],
					"source" : [ "obj-92", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-136", 0 ],
					"source" : [ "obj-93", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-71" : [ "live.gain~", "live.gain~", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "HL-drum.maxpat",
				"bootpath" : "~/workspace/projects/hyperlydian/maxmsp",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "HL-envelope.maxpat",
				"bootpath" : "~/workspace/projects/hyperlydian/maxmsp",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "HL-sequence.maxpat",
				"bootpath" : "~/workspace/projects/hyperlydian/maxmsp",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "HL-voice.maxpat",
				"bootpath" : "~/workspace/projects/hyperlydian/maxmsp",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ampmod~.maxpat",
				"bootpath" : "~/workspace/projects/hyperlydian/maxmsp",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "chorus~.maxpat",
				"bootpath" : "~/workspace/projects/hyperlydian/maxmsp",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "debug-selector.maxpat",
				"bootpath" : "~/workspace/projects/hyperlydian/maxmsp",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "delayZ~.maxpat",
				"bootpath" : "~/workspace/projects/hyperlydian/maxmsp",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "filterselect~.maxpat",
				"bootpath" : "~/workspace/projects/hyperlydian/maxmsp",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "freqmod~.maxpat",
				"bootpath" : "~/workspace/projects/hyperlydian/maxmsp",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "music.json",
				"bootpath" : "~/workspace/projects/hyperlydian/maxmsp",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "noiseselect~.maxpat",
				"bootpath" : "~/workspace/projects/hyperlydian/maxmsp",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.collect.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.compose.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.cond.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.display.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.expr.codebox.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.flatten.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.if.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.pack.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.print.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.route.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.select.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.union.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.var.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "patterninverter.js",
				"bootpath" : "~/workspace/projects/hyperlydian/maxmsp",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "patternmodifier.js",
				"bootpath" : "~/workspace/projects/hyperlydian/maxmsp",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "reverb~.maxpat",
				"bootpath" : "~/workspace/projects/hyperlydian/maxmsp",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "shuffle.js",
				"bootpath" : "~/workspace/projects/hyperlydian/maxmsp",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "valuemodifier.js",
				"bootpath" : "~/workspace/projects/hyperlydian/maxmsp",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "voice-modifier-selection.maxpat",
				"bootpath" : "~/workspace/projects/hyperlydian/maxmsp",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "waveselect~.maxpat",
				"bootpath" : "~/workspace/projects/hyperlydian/maxmsp",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "weightedchoice.js",
				"bootpath" : "~/workspace/projects/hyperlydian/maxmsp",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
