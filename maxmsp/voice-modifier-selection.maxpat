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
		"showontab" : 0,
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"fontsize" : 16.0,
					"id" : "obj-16",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 439.0, 14.621845483779907, 393.0, 78.0 ],
					"text" : "Useful abstraction for turning off modifiers for specific voices. Can be used for debugging purposes or to avoid certain modifiers from affecting specific voices (such as rest modification on a Bass voice)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "bang", "bang", "bang", "bang" ],
					"patching_rect" : [ 18.116504907608032, 42.621845483779907, 392.785701513290405, 22.0 ],
					"text" : "t b b b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 18.116504907608032, 10.689074277877808, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 391.902206420898438, 170.352930307388306, 50.5, 22.0 ],
					"text" : "t b l"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 267.306972583135007, 170.352930307388306, 40.0, 22.0 ],
					"text" : "t b l"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 142.71173874537152, 170.352930307388306, 29.5, 22.0 ],
					"text" : "t b l"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 16.0,
					"id" : "obj-22",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 161.330096781253815, 313.980577945709229, 130.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 5.0, 5.0, 120.0, 24.0 ],
					"text" : "Voice Modifier",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-20",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 360.990291714668274, 407.281548500061035, 52.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 193.846823275089264, 32.007521450519562, 49.0, 20.0 ],
					"text" : "Sustain",
					"textcolor" : [ 0.098038777709007, 0.098041713237762, 0.09804005920887, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-19",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 360.990291714668274, 385.281548500061035, 52.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 138.820605059464754, 32.007521450519562, 47.0, 20.0 ],
					"text" : "Pattern",
					"textcolor" : [ 0.098038777709007, 0.098041713237762, 0.09804005920887, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-18",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 360.990291714668274, 363.281548500061035, 52.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 94.712444722652435, 32.007521450519562, 34.0, 20.0 ],
					"text" : "Rest",
					"textcolor" : [ 0.098038777709007, 0.098041713237762, 0.09804005920887, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-17",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 360.990291714668274, 339.980577945709229, 54.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 47.147649560558321, 32.007521450519562, 34.0, 20.0 ],
					"text" : "Note",
					"textcolor" : [ 0.098038777709007, 0.098041713237762, 0.09804005920887, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 18.116504907608032, 277.970869660377502, 51.0, 22.0 ],
					"text" : "o.flatten"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 18.116504907608032, 243.019413828849792, 99.0, 22.0 ],
					"text" : "o.pack /modifiers"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Modifier Voice Values (OSC)",
					"comment" : "Modifier Voice Values (OSC)",
					"hint" : "Modifier Voice Values (OSC)",
					"id" : "obj-12",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.116504907608032, 310.980577945709229, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 18.116504907608032, 208.038831770420074, 424.285701513290462, 22.0 ],
					"text" : "o.pack /note /rest /pattern /sustain"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 303.155338048934937, 445.980577945709229, 56.0, 22.0 ],
					"restore" : 					{
						"note" : [ 1, 1, 1 ],
						"pattern" : [ 1, 1, 1 ],
						"rest" : [ 1, 1, 1 ],
						"sustain" : [ 1, 1, 1 ]
					}
,
					"text" : "autopattr",
					"varname" : "u682009087"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 296.912622690200806, 380.448785781860352, 50.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 5.0, 95.475729286670685, 50.0, 20.0 ],
					"text" : "Voice 3",
					"textcolor" : [ 0.098038777709007, 0.098041713237762, 0.09804005920887, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 296.912622690200806, 359.980577945709229, 50.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 5.0, 75.007521450519562, 50.0, 20.0 ],
					"text" : "Voice 2",
					"textcolor" : [ 0.098038777709007, 0.098041713237762, 0.09804005920887, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 296.912622690200806, 339.980577945709229, 50.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 5.0, 54.007521450519562, 50.0, 20.0 ],
					"text" : "Voice 1",
					"textcolor" : [ 0.098038777709007, 0.098041713237762, 0.09804005920887, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"activecolor" : [ 0.986251831054688, 0.007236152887344, 0.027423052117229, 1.0 ],
					"bgcolor" : [ 0.098038777709007, 0.098041713237762, 0.09804005920887, 1.0 ],
					"disabled" : [ 0, 0, 0 ],
					"elementcolor" : [ 0.501962602138519, 0.0, 0.008127624168992, 1.0 ],
					"id" : "obj-3",
					"itemtype" : 1,
					"maxclass" : "radiogroup",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : 20,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 391.902206420898438, 92.080282747745514, 18.0, 62.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 207.723227679729462, 55.007521450519562, 18.0, 62.0 ],
					"shape" : 1,
					"size" : 3,
					"values" : [ 1, 1, 1 ],
					"varname" : "sustain"
				}

			}
, 			{
				"box" : 				{
					"activecolor" : [ 0.986251831054688, 0.007236152887344, 0.027423052117229, 1.0 ],
					"bgcolor" : [ 0.098038777709007, 0.098041713237762, 0.09804005920887, 1.0 ],
					"disabled" : [ 0, 0, 0 ],
					"elementcolor" : [ 0.501962602138519, 0.0, 0.008127624168992, 1.0 ],
					"id" : "obj-2",
					"itemtype" : 1,
					"maxclass" : "radiogroup",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : 20,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 267.306972583135007, 92.080282747745514, 18.0, 62.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 154.573413868745149, 55.007521450519562, 18.0, 62.0 ],
					"shape" : 1,
					"size" : 3,
					"values" : [ 1, 1, 1 ],
					"varname" : "pattern"
				}

			}
, 			{
				"box" : 				{
					"activecolor" : [ 0.986251831054688, 0.007236152887344, 0.027423052117229, 1.0 ],
					"bgcolor" : [ 0.098038777709007, 0.098041713237762, 0.09804005920887, 1.0 ],
					"disabled" : [ 0, 0, 0 ],
					"elementcolor" : [ 0.501962602138519, 0.0, 0.008127624168992, 1.0 ],
					"id" : "obj-1",
					"itemtype" : 1,
					"maxclass" : "radiogroup",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : 20,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 142.71173874537152, 92.080282747745514, 18.0, 62.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 103.723679959774017, 55.007521450519562, 18.0, 62.0 ],
					"shape" : 1,
					"size" : 3,
					"values" : [ 1, 1, 1 ],
					"varname" : "rest"
				}

			}
, 			{
				"box" : 				{
					"activecolor" : [ 0.986251831054688, 0.007236152887344, 0.027423052117229, 1.0 ],
					"bgcolor" : [ 0.098038777709007, 0.098041713237762, 0.09804005920887, 1.0 ],
					"disabled" : [ 0, 0, 0 ],
					"elementcolor" : [ 0.501962602138519, 0.0, 0.008127624168992, 1.0 ],
					"id" : "obj-234",
					"itemtype" : 1,
					"maxclass" : "radiogroup",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : 20,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 18.116504907608032, 92.920618832111359, 18.0, 62.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 55.597087000000002, 55.007521450519562, 18.0, 62.0 ],
					"shape" : 1,
					"size" : 3,
					"values" : [ 1, 1, 1 ],
					"varname" : "note"
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.799996614456177, 0.800020575523376, 0.800006866455078, 1.0 ],
					"border" : 2,
					"bordercolor" : [ 0.999995052814484, 1.0, 1.0, 1.0 ],
					"id" : "obj-35",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 161.330096781253815, 339.980577945709229, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 0.0, 248.303359389305115, 125.415965412937169 ],
					"proportion" : 0.5,
					"rounded" : 12
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-234", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 1 ],
					"source" : [ "obj-27", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-234", 0 ],
					"midpoints" : [ 152.21173874537152, 202.352930307388306, 133.909917791684393, 202.352930307388306, 133.909917791684393, 81.920618832111359, 27.616504907608032, 81.920618832111359 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 2 ],
					"source" : [ "obj-28", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-234", 0 ],
					"midpoints" : [ 276.806972583135007, 202.352930307388306, 257.142404953638675, 202.352930307388306, 257.142404953638675, 81.920618832111359, 27.616504907608032, 81.920618832111359 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 3 ],
					"source" : [ "obj-29", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-234", 0 ],
					"midpoints" : [ 401.402206420898438, 202.352930307388306, 383.416908621788025, 202.352930307388306, 383.416908621788025, 81.920618832111359, 27.616504907608032, 81.920618832111359 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-33", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-33", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-234", 0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-33", 3 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "o.flatten.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.pack.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}
