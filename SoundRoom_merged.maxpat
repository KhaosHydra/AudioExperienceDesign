{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 2,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 34.0, 77.0, 807.0, 753.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 376.51511830091476, 470.51220631599426, 343.93936359882355, 20.0 ],
                    "text": "maps blinds 0–1 to filter freq: closed=250Hz, open=20kHz"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 120.73171019554138, 584.8484332561493, 45.0, 22.0 ],
                    "text": "$1 200"
                }
            },
            {
                "box": {
                    "id": "udp",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 200.0, 30.0, 120.0, 22.0 ],
                    "text": "udpreceive 7374"
                }
            },
            {
                "box": {
                    "id": "dbgprint",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 340.0, 30.0, 90.0, 22.0 ],
                    "text": "print osc_in"
                }
            },
            {
                "box": {
                    "id": "rt",
                    "linecount": 2,
                    "maxclass": "newobj",
                    "numinlets": 23,
                    "numoutlets": 23,
                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
                    "patching_rect": [ 66.5, 67.0, 1870.0, 36.0 ],
                    "text": "route /soundroom/lamp /soundroom/blinds /soundroom/weather /soundroom/time /soundroom/layer/melody /soundroom/layer/melody2 /soundroom/layer/harmony /soundroom/layer/bass /soundroom/layer/rhythm /soundroom/layer/pad /soundroom/layer/texture /soundroom/layer/arp /soundroom/layer/sparkle /soundroom/speed /soundroom/rain /soundroom/coffee /soundroom/vinyl /soundroom/laptop /soundroom/amb/rain /soundroom/amb/storm /soundroom/amb/ocean /soundroom/amb/fire"
                }
            },
            {
                "box": {
                    "id": "slamp",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 60.0, 161.44578909873962, 90.0, 22.0 ],
                    "text": "s lamp_val"
                }
            },
            {
                "box": {
                    "id": "sblinds",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 150.63636363636363, 195.74467945098877, 90.0, 22.0 ],
                    "text": "s blinds"
                }
            },
            {
                "box": {
                    "id": "sweather",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 224.0, 161.44578909873962, 90.0, 22.0 ],
                    "text": "s weather"
                }
            },
            {
                "box": {
                    "id": "stime",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 295.0, 195.74467945098877, 90.0, 22.0 ],
                    "text": "s time_val"
                }
            },
            {
                "box": {
                    "id": "sspeed",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1739.0, 189.0, 74.0, 22.0 ],
                    "text": "s speed_val"
                }
            },
            {
                "box": {
                    "id": "u_melody",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "float", "float", "int" ],
                    "patching_rect": [ 393.6170184612274, 195.74467945098877, 103.0, 22.0 ],
                    "text": "unpack 0. 0. 0"
                }
            },
            {
                "box": {
                    "id": "smelody_pan",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 393.6170184612274, 225.53191328048706, 90.0, 22.0 ],
                    "text": "s melody_pan"
                }
            },
            {
                "box": {
                    "id": "smelody_vol",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 397.8723375797272, 255.31914710998535, 90.0, 22.0 ],
                    "text": "s melody_vol"
                }
            },
            {
                "box": {
                    "id": "smelody_active",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 402.12765669822693, 285.10638093948364, 95.0, 22.0 ],
                    "text": "s melody_active"
                }
            },
            {
                "box": {
                    "id": "u_melody2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "float", "float", "int" ],
                    "patching_rect": [ 542.5531876087189, 195.74467945098877, 103.0, 22.0 ],
                    "text": "unpack 0. 0. 0"
                }
            },
            {
                "box": {
                    "id": "smelody2_pan",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 542.5531876087189, 225.53191328048706, 90.0, 22.0 ],
                    "text": "s melody2_pan"
                }
            },
            {
                "box": {
                    "id": "smelody2_vol",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 546.8085067272186, 255.31914710998535, 90.0, 22.0 ],
                    "text": "s melody2_vol"
                }
            },
            {
                "box": {
                    "id": "smelody2_active",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 553.1914854049683, 285.10638093948364, 101.0, 22.0 ],
                    "text": "s melody2_active"
                }
            },
            {
                "box": {
                    "id": "u_harmony",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "float", "float", "int" ],
                    "patching_rect": [ 693.6170163154602, 195.74467945098877, 103.0, 22.0 ],
                    "text": "unpack 0. 0. 0"
                }
            },
            {
                "box": {
                    "id": "sharmony_pan",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 693.6170163154602, 225.53191328048706, 91.0, 22.0 ],
                    "text": "s harmony_pan"
                }
            },
            {
                "box": {
                    "id": "sharmony_vol",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 697.87233543396, 255.31914710998535, 90.0, 22.0 ],
                    "text": "s harmony_vol"
                }
            },
            {
                "box": {
                    "id": "sharmony_active",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 702.1276545524597, 285.10638093948364, 103.0, 22.0 ],
                    "text": "s harmony_active"
                }
            },
            {
                "box": {
                    "id": "u_bass",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "float", "float", "int" ],
                    "patching_rect": [ 842.5531854629517, 195.74467945098877, 103.0, 22.0 ],
                    "text": "unpack 0. 0. 0"
                }
            },
            {
                "box": {
                    "id": "sbass_pan",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 842.5531854629517, 225.53191328048706, 90.0, 22.0 ],
                    "text": "s bass_pan"
                }
            },
            {
                "box": {
                    "id": "sbass_vol",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 846.8085045814514, 255.31914710998535, 90.0, 22.0 ],
                    "text": "s bass_vol"
                }
            },
            {
                "box": {
                    "id": "sbass_active",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 853.191483259201, 285.10638093948364, 90.0, 22.0 ],
                    "text": "s bass_active"
                }
            },
            {
                "box": {
                    "id": "u_rhythm",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "float", "float", "int" ],
                    "patching_rect": [ 993.617014169693, 195.74467945098877, 103.0, 22.0 ],
                    "text": "unpack 0. 0. 0"
                }
            },
            {
                "box": {
                    "id": "srhythm_pan",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 993.617014169693, 225.53191328048706, 90.0, 22.0 ],
                    "text": "s rhythm_pan"
                }
            },
            {
                "box": {
                    "id": "srhythm_vol",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 997.8723332881927, 255.31914710998535, 90.0, 22.0 ],
                    "text": "s rhythm_vol"
                }
            },
            {
                "box": {
                    "id": "srhythm_active",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1002.1276524066925, 285.10638093948364, 93.0, 22.0 ],
                    "text": "s rhythm_active"
                }
            },
            {
                "box": {
                    "id": "u_pad",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "float", "float", "int" ],
                    "patching_rect": [ 1142.5531833171844, 195.74467945098877, 103.0, 22.0 ],
                    "text": "unpack 0. 0. 0"
                }
            },
            {
                "box": {
                    "id": "spad_pan",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1142.5531833171844, 225.53191328048706, 90.0, 22.0 ],
                    "text": "s pad_pan"
                }
            },
            {
                "box": {
                    "id": "spad_vol",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1146.8085024356842, 255.31914710998535, 90.0, 22.0 ],
                    "text": "s pad_vol"
                }
            },
            {
                "box": {
                    "id": "spad_active",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1153.1914811134338, 285.10638093948364, 90.0, 22.0 ],
                    "text": "s pad_active"
                }
            },
            {
                "box": {
                    "id": "u_texture",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "float", "float", "int" ],
                    "patching_rect": [ 1293.6170120239258, 195.74467945098877, 103.0, 22.0 ],
                    "text": "unpack 0. 0. 0"
                }
            },
            {
                "box": {
                    "id": "stexture_pan",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1293.6170120239258, 225.53191328048706, 90.0, 22.0 ],
                    "text": "s texture_pan"
                }
            },
            {
                "box": {
                    "id": "stexture_vol",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1297.8723311424255, 255.31914710998535, 90.0, 22.0 ],
                    "text": "s texture_vol"
                }
            },
            {
                "box": {
                    "id": "stexture_active",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1302.1276502609253, 285.10638093948364, 93.0, 22.0 ],
                    "text": "s texture_active"
                }
            },
            {
                "box": {
                    "id": "u_arp",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "float", "float", "int" ],
                    "patching_rect": [ 1442.5531811714172, 195.74467945098877, 103.0, 22.0 ],
                    "text": "unpack 0. 0. 0"
                }
            },
            {
                "box": {
                    "id": "sarp_pan",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1442.5531811714172, 225.53191328048706, 90.0, 22.0 ],
                    "text": "s arp_pan"
                }
            },
            {
                "box": {
                    "id": "sarp_vol",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1446.808500289917, 255.31914710998535, 90.0, 22.0 ],
                    "text": "s arp_vol"
                }
            },
            {
                "box": {
                    "id": "sarp_active",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1453.1914789676666, 285.10638093948364, 90.0, 22.0 ],
                    "text": "s arp_active"
                }
            },
            {
                "box": {
                    "id": "u_sparkle",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "float", "float", "int" ],
                    "patching_rect": [ 1593.6170098781586, 195.74467945098877, 103.0, 22.0 ],
                    "text": "unpack 0. 0. 0"
                }
            },
            {
                "box": {
                    "id": "ssparkle_pan",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1593.6170098781586, 225.53191328048706, 90.0, 22.0 ],
                    "text": "s sparkle_pan"
                }
            },
            {
                "box": {
                    "id": "ssparkle_vol",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1593.6170098781586, 255.31914710998535, 90.0, 22.0 ],
                    "text": "s sparkle_vol"
                }
            },
            {
                "box": {
                    "id": "ssparkle_active",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1595.7446694374084, 285.10638093948364, 95.0, 22.0 ],
                    "text": "s sparkle_active"
                }
            },
            {
                "box": {
                    "id": "p_melody",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 34.0, 77.0, 1468.0, 753.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "s1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 100.0, 50.0, 76.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "s2",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 100.0, 80.0, 200.0, 22.0 ],
                                    "text": "read \"1 Piano Main.aiff\""
                                }
                            },
                            {
                                "box": {
                                    "id": "s3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "bang" ],
                                    "patching_rect": [ 100.0, 110.0, 160.0, 22.0 ],
                                    "text": "buffer~ day_melody"
                                }
                            },
                            {
                                "box": {
                                    "id": "s4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 350.0, 50.0, 76.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "s5",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 350.0, 80.0, 200.0, 22.0 ],
                                    "text": "read \"5 Melody 1.aiff\""
                                }
                            },
                            {
                                "box": {
                                    "id": "s6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "bang" ],
                                    "patching_rect": [ 350.0, 110.0, 170.0, 22.0 ],
                                    "text": "buffer~ night_melody"
                                }
                            },
                            {
                                "box": {
                                    "id": "s7",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 100.0, 160.0, 76.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "s8",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 100.0, 190.0, 30.0, 22.0 ],
                                    "text": "1"
                                }
                            },
                            {
                                "box": {
                                    "id": "s9",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 100.0, 220.0, 48.0, 22.0 ],
                                    "text": "sig~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s10",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 376.9231128692627, 360.0000343322754, 210.0, 22.0 ],
                                    "text": "groove~ day_melody @loop 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "s11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 350.0, 160.0, 76.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "s12",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 350.0, 190.0, 30.0, 22.0 ],
                                    "text": "1"
                                }
                            },
                            {
                                "box": {
                                    "id": "s13",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 350.0, 220.0, 48.0, 22.0 ],
                                    "text": "sig~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s14",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 629.2308292388916, 360.0000343322754, 224.0, 22.0 ],
                                    "text": "groove~ night_melody @loop 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "s15",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 38.4615421295166, 424.6154251098633, 110.0, 22.0 ],
                                    "text": "r melody_vol"
                                }
                            },
                            {
                                "box": {
                                    "id": "s16",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 158.4615535736084, 424.6154251098633, 130.0, 22.0 ],
                                    "text": "r melody_active"
                                }
                            },
                            {
                                "box": {
                                    "id": "s17",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 296.92310523986816, 424.6154251098633, 90.0, 22.0 ],
                                    "text": "r time_val"
                                }
                            },
                            {
                                "box": {
                                    "id": "s18",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 38.4615421295166, 464.61542892456055, 209.0, 22.0 ],
                                    "text": "expr $f1 * $f2 * ($f3 < 50.)"
                                }
                            },
                            {
                                "box": {
                                    "id": "s19",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 38.4615421295166, 504.6154327392578, 104.0, 22.0 ],
                                    "text": "pack 0. 5000"
                                }
                            },
                            {
                                "box": {
                                    "id": "s20",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 38.4615421295166, 533.8462047576904, 97.0, 22.0 ],
                                    "text": "line~ 0. 50"
                                }
                            },
                            {
                                "box": {
                                    "id": "s21",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 376.9231128692627, 560.0000534057617, 34.0, 22.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s22",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 678.4616031646729, 409.23080825805664, 110.0, 22.0 ],
                                    "text": "r melody_vol"
                                }
                            },
                            {
                                "box": {
                                    "id": "s23",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 798.4616146087646, 409.23080825805664, 130.0, 22.0 ],
                                    "text": "r melody_active"
                                }
                            },
                            {
                                "box": {
                                    "id": "s24",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 938.4616279602051, 409.23080825805664, 90.0, 22.0 ],
                                    "text": "r time_val"
                                }
                            },
                            {
                                "box": {
                                    "id": "s25",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 678.4616031646729, 449.2308120727539, 272.0, 22.0 ],
                                    "text": "expr $f1 * $f2 * ($f3 > 50.) * 0.58"
                                }
                            },
                            {
                                "box": {
                                    "id": "s26",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 678.4616031646729, 489.2308158874512, 104.0, 22.0 ],
                                    "text": "pack 0. 5000"
                                }
                            },
                            {
                                "box": {
                                    "id": "s27",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 678.4616031646729, 520.0000495910645, 97.0, 22.0 ],
                                    "text": "line~ 0. 50"
                                }
                            },
                            {
                                "box": {
                                    "id": "s28",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 629.2308292388916, 560.0000534057617, 34.0, 22.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s29",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 478.4615840911865, 609.230827331543, 34.0, 22.0 ],
                                    "text": "+~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s30",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 678.4616031646729, 609.230827331543, 110.0, 22.0 ],
                                    "text": "r melody_pan"
                                }
                            },
                            {
                                "box": {
                                    "id": "s31",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 678.4616031646729, 640.0000610351562, 48.0, 22.0 ],
                                    "text": "sig~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s32",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 478.4615840911865, 669.2308330535889, 55.0, 22.0 ],
                                    "text": "pan2S"
                                }
                            },
                            {
                                "box": {
                                    "id": "s33",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 429.2308101654053, 709.2308368682861, 118.0, 22.0 ],
                                    "text": "send~ master_L"
                                }
                            },
                            {
                                "box": {
                                    "id": "s34",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 578.4615936279297, 709.2308368682861, 118.0, 22.0 ],
                                    "text": "send~ master_R"
                                }
                            },
                            {
                                "box": {
                                    "id": "sync_r",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 424.6154251098633, 270.7692565917969, 80.0, 22.0 ],
                                    "text": "r sync_all"
                                }
                            },
                            {
                                "box": {
                                    "id": "sync_m",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 424.6154251098633, 300.0000286102295, 28.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "vr_recv",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 650.7692928314209, 270.7692565917969, 210.0, 22.0 ],
                                    "text": "r~ vinyl_rate"
                                }
                            },
                            {
                                "box": {
                                    "id": "flt_main",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 478.4615840911865, 640.0000610351562, 140.0, 22.0 ],
                                    "text": "lores~ 5500 0.2"
                                }
                            },
                            {
                                "box": {
                                    "id": "speed_recv_p_melody",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 538.4615898132324, 270.7692565917969, 80.0, 22.0 ],
                                    "text": "r speed_val"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "s32", 0 ],
                                    "source": [ "flt_main", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s2", 0 ],
                                    "source": [ "s1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s21", 1 ],
                                    "source": [ "s10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s12", 0 ],
                                    "source": [ "s11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s13", 0 ],
                                    "source": [ "s12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s28", 0 ],
                                    "source": [ "s14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s18", 0 ],
                                    "source": [ "s15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s18", 1 ],
                                    "source": [ "s16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s18", 2 ],
                                    "source": [ "s17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s19", 0 ],
                                    "source": [ "s18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s20", 0 ],
                                    "source": [ "s19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s3", 0 ],
                                    "source": [ "s2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s21", 0 ],
                                    "source": [ "s20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s29", 0 ],
                                    "source": [ "s21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s25", 0 ],
                                    "source": [ "s22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s25", 1 ],
                                    "source": [ "s23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s25", 2 ],
                                    "source": [ "s24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s26", 0 ],
                                    "source": [ "s25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s27", 0 ],
                                    "source": [ "s26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s28", 1 ],
                                    "source": [ "s27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s29", 1 ],
                                    "source": [ "s28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "flt_main", 0 ],
                                    "source": [ "s29", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s31", 0 ],
                                    "source": [ "s30", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s32", 1 ],
                                    "source": [ "s31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s33", 0 ],
                                    "source": [ "s32", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s34", 0 ],
                                    "source": [ "s32", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s5", 0 ],
                                    "source": [ "s4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s6", 0 ],
                                    "source": [ "s5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s8", 0 ],
                                    "source": [ "s7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s9", 0 ],
                                    "source": [ "s8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s10", 1 ],
                                    "order": 1,
                                    "source": [ "speed_recv_p_melody", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s14", 1 ],
                                    "order": 0,
                                    "source": [ "speed_recv_p_melody", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s10", 0 ],
                                    "order": 1,
                                    "source": [ "sync_m", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s14", 0 ],
                                    "order": 0,
                                    "source": [ "sync_m", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "sync_m", 0 ],
                                    "source": [ "sync_r", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s10", 0 ],
                                    "order": 1,
                                    "source": [ "vr_recv", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s14", 0 ],
                                    "order": 0,
                                    "source": [ "vr_recv", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 42.42423868179321, 331.81815254688263, 120.0, 22.0 ],
                    "text": "p layer_melody"
                }
            },
            {
                "box": {
                    "id": "p_melody2",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 34.0, 77.0, 1468.0, 753.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "s1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 100.0, 50.0, 76.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "s2",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 100.0, 80.0, 200.0, 22.0 ],
                                    "text": "read \"3 Melody.aiff\""
                                }
                            },
                            {
                                "box": {
                                    "id": "s3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "bang" ],
                                    "patching_rect": [ 100.0, 110.0, 160.0, 22.0 ],
                                    "text": "buffer~ day_melody2"
                                }
                            },
                            {
                                "box": {
                                    "id": "s4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 350.0, 50.0, 76.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "s5",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 350.0, 80.0, 200.0, 22.0 ],
                                    "text": "read \"2 Synth Appregio High.aiff\""
                                }
                            },
                            {
                                "box": {
                                    "id": "s6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "bang" ],
                                    "patching_rect": [ 350.0, 110.0, 170.0, 22.0 ],
                                    "text": "buffer~ night_melody2"
                                }
                            },
                            {
                                "box": {
                                    "id": "s7",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 100.0, 157.0, 76.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "s8",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 100.0, 187.0, 30.0, 22.0 ],
                                    "text": "1"
                                }
                            },
                            {
                                "box": {
                                    "id": "s9",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 100.0, 217.0, 48.0, 22.0 ],
                                    "text": "sig~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s10",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 460.4166491031647, 389.58331847190857, 210.0, 22.0 ],
                                    "text": "groove~ day_melody2 @loop 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "s11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 355.0, 157.0, 76.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "s12",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 355.0, 187.0, 30.0, 22.0 ],
                                    "text": "1"
                                }
                            },
                            {
                                "box": {
                                    "id": "s13",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 355.0, 217.0, 48.0, 22.0 ],
                                    "text": "sig~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s14",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 710.4166395664215, 389.58331847190857, 224.0, 22.0 ],
                                    "text": "groove~ night_melody2 @loop 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "s15",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 106.24999594688416, 452.0833160877228, 110.0, 22.0 ],
                                    "text": "r melody2_vol"
                                }
                            },
                            {
                                "box": {
                                    "id": "s16",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 224.99999141693115, 452.0833160877228, 130.0, 22.0 ],
                                    "text": "r melody2_active"
                                }
                            },
                            {
                                "box": {
                                    "id": "s17",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 362.4999861717224, 452.0833160877228, 90.0, 22.0 ],
                                    "text": "r time_val"
                                }
                            },
                            {
                                "box": {
                                    "id": "s18",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 106.24999594688416, 491.6666479110718, 209.0, 22.0 ],
                                    "text": "expr $f1 * $f2 * ($f3 < 50.)"
                                }
                            },
                            {
                                "box": {
                                    "id": "s19",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 106.24999594688416, 531.2499797344208, 104.0, 22.0 ],
                                    "text": "pack 0. 5000"
                                }
                            },
                            {
                                "box": {
                                    "id": "s20",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 106.24999594688416, 562.4999785423279, 97.0, 22.0 ],
                                    "text": "line~ 0. 50"
                                }
                            },
                            {
                                "box": {
                                    "id": "s21",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 460.4166491031647, 589.583310842514, 34.0, 22.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s22",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 760.4166376590729, 439.58331656455994, 110.0, 22.0 ],
                                    "text": "r melody2_vol"
                                }
                            },
                            {
                                "box": {
                                    "id": "s23",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 879.1666331291199, 439.58331656455994, 130.0, 22.0 ],
                                    "text": "r melody2_active"
                                }
                            },
                            {
                                "box": {
                                    "id": "s24",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1018.7499611377716, 439.58331656455994, 90.0, 22.0 ],
                                    "text": "r time_val"
                                }
                            },
                            {
                                "box": {
                                    "id": "s25",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 760.4166376590729, 479.16664838790894, 272.0, 22.0 ],
                                    "text": "expr $f1 * $f2 * ($f3 > 50.) * 0.58"
                                }
                            },
                            {
                                "box": {
                                    "id": "s26",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 760.4166376590729, 520.8333134651184, 104.0, 22.0 ],
                                    "text": "pack 0. 5000"
                                }
                            },
                            {
                                "box": {
                                    "id": "s27",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 760.4166376590729, 549.999979019165, 97.0, 22.0 ],
                                    "text": "line~ 0. 50"
                                }
                            },
                            {
                                "box": {
                                    "id": "s28",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 710.4166395664215, 589.583310842514, 34.0, 22.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s29",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 560.4166452884674, 639.5833089351654, 34.0, 22.0 ],
                                    "text": "+~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s30",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 760.4166376590729, 675.0, 110.0, 22.0 ],
                                    "text": "r melody2_pan"
                                }
                            },
                            {
                                "box": {
                                    "id": "s31",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 760.4166376590729, 706.25, 48.0, 22.0 ],
                                    "text": "sig~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s32",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 560.4166452884674, 735.9375, 55.0, 22.0 ],
                                    "text": "pan2S"
                                }
                            },
                            {
                                "box": {
                                    "id": "s33",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 510.4166452884674, 775.0, 118.0, 22.0 ],
                                    "text": "send~ master_L"
                                }
                            },
                            {
                                "box": {
                                    "id": "s34",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 660.4166376590729, 775.0, 118.0, 22.0 ],
                                    "text": "send~ master_R"
                                }
                            },
                            {
                                "box": {
                                    "id": "sync_r",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 524.9999799728394, 308.3333215713501, 80.0, 22.0 ],
                                    "text": "r sync_all"
                                }
                            },
                            {
                                "box": {
                                    "id": "sync_m",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 524.9999799728394, 335.41665387153625, 28.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "vr_recv",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 635.4166424274445, 308.3333215713501, 210.0, 22.0 ],
                                    "text": "r~ vinyl_rate"
                                }
                            },
                            {
                                "box": {
                                    "id": "flt_main",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 560.4166452884674, 670.8333077430725, 140.0, 22.0 ],
                                    "text": "lores~ 4500 0.3"
                                }
                            },
                            {
                                "box": {
                                    "id": "speed_recv_p_melody2",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 866.666633605957, 308.3333215713501, 80.0, 22.0 ],
                                    "text": "r speed_val"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "s32", 0 ],
                                    "source": [ "flt_main", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s2", 0 ],
                                    "source": [ "s1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s21", 1 ],
                                    "source": [ "s10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s12", 0 ],
                                    "source": [ "s11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s13", 0 ],
                                    "source": [ "s12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s28", 0 ],
                                    "source": [ "s14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s18", 0 ],
                                    "source": [ "s15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s18", 1 ],
                                    "source": [ "s16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s18", 2 ],
                                    "source": [ "s17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s19", 0 ],
                                    "source": [ "s18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s20", 0 ],
                                    "source": [ "s19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s3", 0 ],
                                    "source": [ "s2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s21", 0 ],
                                    "source": [ "s20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s29", 0 ],
                                    "source": [ "s21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s25", 0 ],
                                    "source": [ "s22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s25", 1 ],
                                    "source": [ "s23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s25", 2 ],
                                    "source": [ "s24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s26", 0 ],
                                    "source": [ "s25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s27", 0 ],
                                    "source": [ "s26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s28", 1 ],
                                    "source": [ "s27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s29", 1 ],
                                    "source": [ "s28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "flt_main", 0 ],
                                    "source": [ "s29", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s31", 0 ],
                                    "source": [ "s30", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s32", 1 ],
                                    "source": [ "s31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s33", 0 ],
                                    "source": [ "s32", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s34", 0 ],
                                    "source": [ "s32", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s5", 0 ],
                                    "source": [ "s4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s6", 0 ],
                                    "source": [ "s5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s8", 0 ],
                                    "source": [ "s7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s9", 0 ],
                                    "source": [ "s8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s10", 1 ],
                                    "order": 1,
                                    "source": [ "speed_recv_p_melody2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s14", 1 ],
                                    "order": 0,
                                    "source": [ "speed_recv_p_melody2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s10", 0 ],
                                    "order": 1,
                                    "source": [ "sync_m", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s14", 0 ],
                                    "order": 0,
                                    "source": [ "sync_m", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "sync_m", 0 ],
                                    "source": [ "sync_r", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s10", 0 ],
                                    "order": 1,
                                    "source": [ "vr_recv", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s14", 0 ],
                                    "order": 0,
                                    "source": [ "vr_recv", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 192.42422544956207, 331.81815254688263, 120.0, 22.0 ],
                    "text": "p layer_melody2"
                }
            },
            {
                "box": {
                    "id": "p_harmony",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 34.0, 77.0, 1468.0, 753.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "s1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 100.0, 50.0, 76.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "s2",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 100.0, 80.0, 200.0, 22.0 ],
                                    "text": "read \"7 Drone.aiff\""
                                }
                            },
                            {
                                "box": {
                                    "id": "s3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "bang" ],
                                    "patching_rect": [ 100.0, 110.0, 160.0, 22.0 ],
                                    "text": "buffer~ day_harmony"
                                }
                            },
                            {
                                "box": {
                                    "id": "s4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 350.0, 50.0, 76.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "s5",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 350.0, 80.0, 200.0, 22.0 ],
                                    "text": "read \"6 Pad Low.aiff\""
                                }
                            },
                            {
                                "box": {
                                    "id": "s6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "bang" ],
                                    "patching_rect": [ 350.0, 110.0, 170.0, 22.0 ],
                                    "text": "buffer~ night_harmony"
                                }
                            },
                            {
                                "box": {
                                    "id": "s7",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 100.0, 160.0, 76.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "s8",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 100.0, 190.0, 30.0, 22.0 ],
                                    "text": "1"
                                }
                            },
                            {
                                "box": {
                                    "id": "s9",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 100.0, 220.0, 48.0, 22.0 ],
                                    "text": "sig~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s10",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 416.92311668395996, 376.9231128692627, 210.0, 22.0 ],
                                    "text": "groove~ day_harmony @loop 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "s11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 350.0, 160.0, 76.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "s12",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 350.0, 190.0, 30.0, 22.0 ],
                                    "text": "1"
                                }
                            },
                            {
                                "box": {
                                    "id": "s13",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 350.0, 220.0, 48.0, 22.0 ],
                                    "text": "sig~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s14",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 666.1539096832275, 376.9231128692627, 224.0, 22.0 ],
                                    "text": "groove~ night_harmony @loop 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "s15",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 43.076927185058594, 433.84619522094727, 110.0, 22.0 ],
                                    "text": "r harmony_vol"
                                }
                            },
                            {
                                "box": {
                                    "id": "s16",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 163.0769386291504, 433.84619522094727, 130.0, 22.0 ],
                                    "text": "r harmony_active"
                                }
                            },
                            {
                                "box": {
                                    "id": "s17",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 304.6154136657715, 433.84619522094727, 90.0, 22.0 ],
                                    "text": "r time_val"
                                }
                            },
                            {
                                "box": {
                                    "id": "s18",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 43.076927185058594, 473.84619903564453, 209.0, 22.0 ],
                                    "text": "expr $f1 * $f2 * ($f3 < 50.)"
                                }
                            },
                            {
                                "box": {
                                    "id": "s19",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 43.076927185058594, 513.8462028503418, 104.0, 22.0 ],
                                    "text": "pack 0. 5000"
                                }
                            },
                            {
                                "box": {
                                    "id": "s20",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 43.076927185058594, 544.6154365539551, 97.0, 22.0 ],
                                    "text": "line~ 0. 50"
                                }
                            },
                            {
                                "box": {
                                    "id": "s21",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 416.92311668395996, 576.923131942749, 34.0, 22.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s22",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 716.9231452941895, 426.15388679504395, 110.0, 22.0 ],
                                    "text": "r harmony_vol"
                                }
                            },
                            {
                                "box": {
                                    "id": "s23",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 836.9231567382812, 426.15388679504395, 130.0, 22.0 ],
                                    "text": "r harmony_active"
                                }
                            },
                            {
                                "box": {
                                    "id": "s24",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 975.384708404541, 426.15388679504395, 90.0, 22.0 ],
                                    "text": "r time_val"
                                }
                            },
                            {
                                "box": {
                                    "id": "s25",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 716.9231452941895, 466.1538906097412, 272.0, 22.0 ],
                                    "text": "expr $f1 * $f2 * ($f3 > 50.) * 0.58"
                                }
                            },
                            {
                                "box": {
                                    "id": "s26",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 716.9231452941895, 506.1538944244385, 104.0, 22.0 ],
                                    "text": "pack 0. 5000"
                                }
                            },
                            {
                                "box": {
                                    "id": "s27",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 716.9231452941895, 536.9231281280518, 97.0, 22.0 ],
                                    "text": "line~ 0. 50"
                                }
                            },
                            {
                                "box": {
                                    "id": "s28",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 666.1539096832275, 576.923131942749, 34.0, 22.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s29",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 516.9231262207031, 626.1539058685303, 34.0, 22.0 ],
                                    "text": "+~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s30",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 716.9231452941895, 626.1539058685303, 110.0, 22.0 ],
                                    "text": "r harmony_pan"
                                }
                            },
                            {
                                "box": {
                                    "id": "s31",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 716.9231452941895, 656.9231395721436, 48.0, 22.0 ],
                                    "text": "sig~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s32",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 516.9231262207031, 718.4616069793701, 55.0, 22.0 ],
                                    "text": "pan2S"
                                }
                            },
                            {
                                "box": {
                                    "id": "s33",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 466.1538906097412, 758.4616107940674, 118.0, 22.0 ],
                                    "text": "send~ master_L"
                                }
                            },
                            {
                                "box": {
                                    "id": "s34",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 616.9231357574463, 758.4616107940674, 118.0, 22.0 ],
                                    "text": "send~ master_R"
                                }
                            },
                            {
                                "box": {
                                    "id": "sync_r",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 449.2308120727539, 286.1538734436035, 80.0, 22.0 ],
                                    "text": "r sync_all"
                                }
                            },
                            {
                                "box": {
                                    "id": "sync_m",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 449.2308120727539, 315.38464546203613, 28.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "vr_recv",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 558.461591720581, 286.1538734436035, 210.0, 22.0 ],
                                    "text": "r~ vinyl_rate"
                                }
                            },
                            {
                                "box": {
                                    "id": "flt_main",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 516.9231262207031, 656.9231395721436, 140.0, 22.0 ],
                                    "text": "lores~ 600 0.35"
                                }
                            },
                            {
                                "box": {
                                    "id": "speed_recv_p_harmony",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 796.923152923584, 286.1538734436035, 80.0, 22.0 ],
                                    "text": "r speed_val"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "s32", 0 ],
                                    "source": [ "flt_main", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s2", 0 ],
                                    "source": [ "s1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s21", 1 ],
                                    "source": [ "s10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s12", 0 ],
                                    "source": [ "s11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s13", 0 ],
                                    "source": [ "s12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s28", 0 ],
                                    "source": [ "s14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s18", 0 ],
                                    "source": [ "s15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s18", 1 ],
                                    "source": [ "s16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s18", 2 ],
                                    "source": [ "s17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s19", 0 ],
                                    "source": [ "s18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s20", 0 ],
                                    "source": [ "s19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s3", 0 ],
                                    "source": [ "s2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s21", 0 ],
                                    "source": [ "s20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s29", 0 ],
                                    "source": [ "s21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s25", 0 ],
                                    "source": [ "s22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s25", 1 ],
                                    "source": [ "s23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s25", 2 ],
                                    "source": [ "s24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s26", 0 ],
                                    "source": [ "s25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s27", 0 ],
                                    "source": [ "s26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s28", 1 ],
                                    "source": [ "s27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s29", 1 ],
                                    "source": [ "s28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "flt_main", 0 ],
                                    "source": [ "s29", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s31", 0 ],
                                    "source": [ "s30", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s32", 1 ],
                                    "source": [ "s31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s33", 0 ],
                                    "source": [ "s32", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s34", 0 ],
                                    "source": [ "s32", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s5", 0 ],
                                    "source": [ "s4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s6", 0 ],
                                    "source": [ "s5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s8", 0 ],
                                    "source": [ "s7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s9", 0 ],
                                    "source": [ "s8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s10", 1 ],
                                    "order": 1,
                                    "source": [ "speed_recv_p_harmony", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s14", 1 ],
                                    "order": 0,
                                    "source": [ "speed_recv_p_harmony", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s10", 0 ],
                                    "order": 1,
                                    "source": [ "sync_m", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s14", 0 ],
                                    "order": 0,
                                    "source": [ "sync_m", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "sync_m", 0 ],
                                    "source": [ "sync_r", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s10", 0 ],
                                    "order": 1,
                                    "source": [ "vr_recv", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s14", 0 ],
                                    "order": 0,
                                    "source": [ "vr_recv", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 342.42421221733093, 331.81815254688263, 120.0, 22.0 ],
                    "text": "p layer_harmony"
                }
            },
            {
                "box": {
                    "id": "p_bass",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 695.0, 141.0, 750.0, 680.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "s1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 100.0, 50.0, 76.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "s2",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 100.0, 80.0, 200.0, 22.0 ],
                                    "text": "read \"2 Piano Bass.aiff\""
                                }
                            },
                            {
                                "box": {
                                    "id": "s3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "bang" ],
                                    "patching_rect": [ 100.0, 110.0, 160.0, 22.0 ],
                                    "text": "buffer~ day_bass"
                                }
                            },
                            {
                                "box": {
                                    "id": "s4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 350.0, 50.0, 76.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "s5",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 350.0, 80.0, 200.0, 22.0 ],
                                    "text": "read \"4 Bass.aiff\""
                                }
                            },
                            {
                                "box": {
                                    "id": "s6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "bang" ],
                                    "patching_rect": [ 350.0, 110.0, 170.0, 22.0 ],
                                    "text": "buffer~ night_bass"
                                }
                            },
                            {
                                "box": {
                                    "id": "s7",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 100.0, 160.0, 76.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "s8",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 100.0, 190.0, 30.0, 22.0 ],
                                    "text": "1"
                                }
                            },
                            {
                                "box": {
                                    "id": "s9",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 100.0, 220.0, 48.0, 22.0 ],
                                    "text": "sig~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s10",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 455.0, 374.0, 210.0, 22.0 ],
                                    "text": "groove~ day_bass @loop 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "s11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 350.0, 160.0, 76.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "s12",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 350.0, 190.0, 30.0, 22.0 ],
                                    "text": "1"
                                }
                            },
                            {
                                "box": {
                                    "id": "s13",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 350.0, 220.0, 48.0, 22.0 ],
                                    "text": "sig~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s14",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 705.0, 374.0, 224.0, 22.0 ],
                                    "text": "groove~ night_bass @loop 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "s15",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 88.0, 411.0, 110.0, 22.0 ],
                                    "text": "r bass_vol"
                                }
                            },
                            {
                                "box": {
                                    "id": "s16",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 208.0, 411.0, 130.0, 22.0 ],
                                    "text": "r bass_active"
                                }
                            },
                            {
                                "box": {
                                    "id": "s17",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 354.0, 411.0, 90.0, 22.0 ],
                                    "text": "r time_val"
                                }
                            },
                            {
                                "box": {
                                    "id": "s18",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 88.0, 451.0, 209.0, 22.0 ],
                                    "text": "expr $f1 * $f2 * ($f3 < 50.)"
                                }
                            },
                            {
                                "box": {
                                    "id": "s19",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 88.0, 491.0, 104.0, 22.0 ],
                                    "text": "pack 0. 5000"
                                }
                            },
                            {
                                "box": {
                                    "id": "s20",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 88.0, 521.0, 97.0, 22.0 ],
                                    "text": "line~ 0. 50"
                                }
                            },
                            {
                                "box": {
                                    "id": "s21",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 455.0, 574.0, 34.0, 22.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s22",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 755.0, 424.0, 110.0, 22.0 ],
                                    "text": "r bass_vol"
                                }
                            },
                            {
                                "box": {
                                    "id": "s23",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 875.0, 424.0, 130.0, 22.0 ],
                                    "text": "r bass_active"
                                }
                            },
                            {
                                "box": {
                                    "id": "s24",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1015.0, 424.0, 90.0, 22.0 ],
                                    "text": "r time_val"
                                }
                            },
                            {
                                "box": {
                                    "id": "s25",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 755.0, 464.0, 272.0, 22.0 ],
                                    "text": "expr $f1 * $f2 * ($f3 > 50.) * 0.58"
                                }
                            },
                            {
                                "box": {
                                    "id": "s26",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 755.0, 504.0, 104.0, 22.0 ],
                                    "text": "pack 0. 5000"
                                }
                            },
                            {
                                "box": {
                                    "id": "s27",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 755.0, 534.0, 97.0, 22.0 ],
                                    "text": "line~ 0. 50"
                                }
                            },
                            {
                                "box": {
                                    "id": "s28",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 705.0, 574.0, 34.0, 22.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s29",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 555.0, 624.0, 34.0, 22.0 ],
                                    "text": "+~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s30",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 755.0, 624.0, 110.0, 22.0 ],
                                    "text": "r bass_pan"
                                }
                            },
                            {
                                "box": {
                                    "id": "s31",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 755.0, 654.0, 48.0, 22.0 ],
                                    "text": "sig~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s32",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 555.0, 684.0, 55.0, 22.0 ],
                                    "text": "pan2S"
                                }
                            },
                            {
                                "box": {
                                    "id": "s33",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 505.0, 724.0, 118.0, 22.0 ],
                                    "text": "send~ master_L"
                                }
                            },
                            {
                                "box": {
                                    "id": "s34",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 655.0, 724.0, 118.0, 22.0 ],
                                    "text": "send~ master_R"
                                }
                            },
                            {
                                "box": {
                                    "id": "sync_r",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 607.0, 271.0, 80.0, 22.0 ],
                                    "text": "r sync_all"
                                }
                            },
                            {
                                "box": {
                                    "id": "sync_m",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 607.0, 299.0, 28.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "vr_recv",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 712.0, 271.0, 210.0, 22.0 ],
                                    "text": "r~ vinyl_rate"
                                }
                            },
                            {
                                "box": {
                                    "id": "flt_main",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 555.0, 654.0, 140.0, 22.0 ],
                                    "text": "lores~ 400 0.2"
                                }
                            },
                            {
                                "box": {
                                    "id": "speed_recv_p_bass",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 499.0, 271.0, 80.0, 22.0 ],
                                    "text": "r speed_val"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "s32", 0 ],
                                    "source": [ "flt_main", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s2", 0 ],
                                    "source": [ "s1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s21", 1 ],
                                    "source": [ "s10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s12", 0 ],
                                    "source": [ "s11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s13", 0 ],
                                    "source": [ "s12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s28", 0 ],
                                    "source": [ "s14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s18", 0 ],
                                    "source": [ "s15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s18", 1 ],
                                    "source": [ "s16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s18", 2 ],
                                    "source": [ "s17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s19", 0 ],
                                    "source": [ "s18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s20", 0 ],
                                    "source": [ "s19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s3", 0 ],
                                    "source": [ "s2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s21", 0 ],
                                    "source": [ "s20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s29", 0 ],
                                    "source": [ "s21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s25", 0 ],
                                    "source": [ "s22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s25", 1 ],
                                    "source": [ "s23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s25", 2 ],
                                    "source": [ "s24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s26", 0 ],
                                    "source": [ "s25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s27", 0 ],
                                    "source": [ "s26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s28", 1 ],
                                    "source": [ "s27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s29", 1 ],
                                    "source": [ "s28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "flt_main", 0 ],
                                    "source": [ "s29", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s31", 0 ],
                                    "source": [ "s30", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s32", 1 ],
                                    "source": [ "s31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s33", 0 ],
                                    "source": [ "s32", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s34", 0 ],
                                    "source": [ "s32", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s5", 0 ],
                                    "source": [ "s4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s6", 0 ],
                                    "source": [ "s5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s8", 0 ],
                                    "source": [ "s7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s9", 0 ],
                                    "source": [ "s8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s10", 1 ],
                                    "order": 1,
                                    "source": [ "speed_recv_p_bass", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s14", 1 ],
                                    "order": 0,
                                    "source": [ "speed_recv_p_bass", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s10", 0 ],
                                    "order": 1,
                                    "source": [ "sync_m", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s14", 0 ],
                                    "order": 0,
                                    "source": [ "sync_m", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "sync_m", 0 ],
                                    "source": [ "sync_r", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s10", 0 ],
                                    "order": 1,
                                    "source": [ "vr_recv", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s14", 0 ],
                                    "order": 0,
                                    "source": [ "vr_recv", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 492.4241989850998, 331.81815254688263, 120.0, 22.0 ],
                    "text": "p layer_bass"
                }
            },
            {
                "box": {
                    "id": "p_rhythm",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 648.0, 132.0, 750.0, 680.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "s1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 100.0, 50.0, 76.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "s2",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 100.0, 80.0, 200.0, 22.0 ],
                                    "text": "read \"9 Piano Chord 2.aiff\""
                                }
                            },
                            {
                                "box": {
                                    "id": "s3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "bang" ],
                                    "patching_rect": [ 100.0, 110.0, 160.0, 22.0 ],
                                    "text": "buffer~ day_rhythm"
                                }
                            },
                            {
                                "box": {
                                    "id": "s4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 350.0, 50.0, 76.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "s5",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 350.0, 80.0, 200.0, 22.0 ],
                                    "text": "read \"7 Clap.aiff\""
                                }
                            },
                            {
                                "box": {
                                    "id": "s6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "bang" ],
                                    "patching_rect": [ 350.0, 110.0, 170.0, 22.0 ],
                                    "text": "buffer~ night_rhythm"
                                }
                            },
                            {
                                "box": {
                                    "id": "s7",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 100.0, 160.0, 76.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "s8",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 100.0, 190.0, 30.0, 22.0 ],
                                    "text": "1"
                                }
                            },
                            {
                                "box": {
                                    "id": "s9",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 100.0, 220.0, 48.0, 22.0 ],
                                    "text": "sig~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s10",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 412.0, 381.0, 210.0, 22.0 ],
                                    "text": "groove~ day_rhythm @loop 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "s11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 350.0, 160.0, 76.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "s12",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 350.0, 190.0, 30.0, 22.0 ],
                                    "text": "1"
                                }
                            },
                            {
                                "box": {
                                    "id": "s13",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 350.0, 220.0, 48.0, 22.0 ],
                                    "text": "sig~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s14",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 662.0, 381.0, 224.0, 22.0 ],
                                    "text": "groove~ night_rhythm @loop 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "s15",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 51.0, 431.0, 110.0, 22.0 ],
                                    "text": "r rhythm_vol"
                                }
                            },
                            {
                                "box": {
                                    "id": "s16",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 171.0, 431.0, 130.0, 22.0 ],
                                    "text": "r rhythm_active"
                                }
                            },
                            {
                                "box": {
                                    "id": "s17",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 315.0, 431.0, 90.0, 22.0 ],
                                    "text": "r time_val"
                                }
                            },
                            {
                                "box": {
                                    "id": "s18",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 51.0, 471.0, 209.0, 22.0 ],
                                    "text": "expr $f1 * $f2 * ($f3 < 50.)"
                                }
                            },
                            {
                                "box": {
                                    "id": "s19",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 51.0, 511.0, 104.0, 22.0 ],
                                    "text": "pack 0. 5000"
                                }
                            },
                            {
                                "box": {
                                    "id": "s20",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 51.0, 541.0, 97.0, 22.0 ],
                                    "text": "line~ 0. 50"
                                }
                            },
                            {
                                "box": {
                                    "id": "s21",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 412.0, 581.0, 34.0, 22.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s22",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 712.0, 431.0, 110.0, 22.0 ],
                                    "text": "r rhythm_vol"
                                }
                            },
                            {
                                "box": {
                                    "id": "s23",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 832.0, 431.0, 130.0, 22.0 ],
                                    "text": "r rhythm_active"
                                }
                            },
                            {
                                "box": {
                                    "id": "s24",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 972.0, 431.0, 90.0, 22.0 ],
                                    "text": "r time_val"
                                }
                            },
                            {
                                "box": {
                                    "id": "s25",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 712.0, 471.0, 272.0, 22.0 ],
                                    "text": "expr $f1 * $f2 * ($f3 > 50.) * 0.58"
                                }
                            },
                            {
                                "box": {
                                    "id": "s26",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 712.0, 511.0, 104.0, 22.0 ],
                                    "text": "pack 0. 5000"
                                }
                            },
                            {
                                "box": {
                                    "id": "s27",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 712.0, 541.0, 97.0, 22.0 ],
                                    "text": "line~ 0. 50"
                                }
                            },
                            {
                                "box": {
                                    "id": "s28",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 662.0, 581.0, 34.0, 22.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s29",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 512.0, 631.0, 34.0, 22.0 ],
                                    "text": "+~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s30",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 712.0, 631.0, 110.0, 22.0 ],
                                    "text": "r rhythm_pan"
                                }
                            },
                            {
                                "box": {
                                    "id": "s31",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 712.0, 661.0, 48.0, 22.0 ],
                                    "text": "sig~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s32",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 512.0, 691.0, 55.0, 22.0 ],
                                    "text": "pan2S"
                                }
                            },
                            {
                                "box": {
                                    "id": "s33",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 462.0, 731.0, 118.0, 22.0 ],
                                    "text": "send~ master_L"
                                }
                            },
                            {
                                "box": {
                                    "id": "s34",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 612.0, 731.0, 118.0, 22.0 ],
                                    "text": "send~ master_R"
                                }
                            },
                            {
                                "box": {
                                    "id": "sync_r",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 576.0, 274.0, 80.0, 22.0 ],
                                    "text": "r sync_all"
                                }
                            },
                            {
                                "box": {
                                    "id": "sync_m",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 576.0, 302.0, 28.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "vr_recv",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 357.0, 274.0, 210.0, 22.0 ],
                                    "text": "r~ vinyl_rate"
                                }
                            },
                            {
                                "box": {
                                    "id": "flt_main",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 512.0, 661.0, 140.0, 22.0 ],
                                    "text": "reson~ 5000 0.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "speed_recv_p_rhythm",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 680.0, 274.0, 80.0, 22.0 ],
                                    "text": "r speed_val"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "s32", 0 ],
                                    "source": [ "flt_main", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s2", 0 ],
                                    "source": [ "s1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s21", 1 ],
                                    "source": [ "s10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s12", 0 ],
                                    "source": [ "s11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s13", 0 ],
                                    "source": [ "s12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s28", 0 ],
                                    "source": [ "s14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s18", 0 ],
                                    "source": [ "s15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s18", 1 ],
                                    "source": [ "s16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s18", 2 ],
                                    "source": [ "s17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s19", 0 ],
                                    "source": [ "s18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s20", 0 ],
                                    "source": [ "s19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s3", 0 ],
                                    "source": [ "s2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s21", 0 ],
                                    "source": [ "s20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s29", 0 ],
                                    "source": [ "s21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s25", 0 ],
                                    "source": [ "s22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s25", 1 ],
                                    "source": [ "s23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s25", 2 ],
                                    "source": [ "s24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s26", 0 ],
                                    "source": [ "s25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s27", 0 ],
                                    "source": [ "s26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s28", 1 ],
                                    "source": [ "s27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s29", 1 ],
                                    "source": [ "s28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "flt_main", 0 ],
                                    "source": [ "s29", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s31", 0 ],
                                    "source": [ "s30", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s32", 1 ],
                                    "source": [ "s31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s33", 0 ],
                                    "source": [ "s32", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s34", 0 ],
                                    "source": [ "s32", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s5", 0 ],
                                    "source": [ "s4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s6", 0 ],
                                    "source": [ "s5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s8", 0 ],
                                    "source": [ "s7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s9", 0 ],
                                    "source": [ "s8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s10", 1 ],
                                    "order": 1,
                                    "source": [ "speed_recv_p_rhythm", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s14", 1 ],
                                    "order": 0,
                                    "source": [ "speed_recv_p_rhythm", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s10", 0 ],
                                    "order": 1,
                                    "source": [ "sync_m", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s14", 0 ],
                                    "order": 0,
                                    "source": [ "sync_m", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "sync_m", 0 ],
                                    "source": [ "sync_r", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s10", 0 ],
                                    "order": 1,
                                    "source": [ "vr_recv", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s14", 0 ],
                                    "order": 0,
                                    "source": [ "vr_recv", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 642.4241857528687, 331.81815254688263, 120.0, 22.0 ],
                    "text": "p layer_rhythm"
                }
            },
            {
                "box": {
                    "id": "p_pad",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 34.0, 77.0, 1468.0, 753.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "s1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 100.0, 50.0, 76.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "s2",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 100.0, 80.0, 200.0, 22.0 ],
                                    "text": "read \"6 Violin.aiff\""
                                }
                            },
                            {
                                "box": {
                                    "id": "s3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "bang" ],
                                    "patching_rect": [ 100.0, 110.0, 160.0, 22.0 ],
                                    "text": "buffer~ day_pad"
                                }
                            },
                            {
                                "box": {
                                    "id": "s4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 350.0, 50.0, 76.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "s5",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 350.0, 80.0, 200.0, 22.0 ],
                                    "text": "read \"1 Synth Appregio Low.aiff\""
                                }
                            },
                            {
                                "box": {
                                    "id": "s6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "bang" ],
                                    "patching_rect": [ 350.0, 110.0, 170.0, 22.0 ],
                                    "text": "buffer~ night_pad"
                                }
                            },
                            {
                                "box": {
                                    "id": "s7",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 100.0, 160.0, 76.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "s8",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 100.0, 190.0, 30.0, 22.0 ],
                                    "text": "1"
                                }
                            },
                            {
                                "box": {
                                    "id": "s9",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 100.0, 220.0, 48.0, 22.0 ],
                                    "text": "sig~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s10",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 635.0, 383.0, 210.0, 22.0 ],
                                    "text": "groove~ day_pad @loop 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "s11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 350.0, 160.0, 76.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "s12",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 350.0, 190.0, 30.0, 22.0 ],
                                    "text": "1"
                                }
                            },
                            {
                                "box": {
                                    "id": "s13",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 350.0, 220.0, 48.0, 22.0 ],
                                    "text": "sig~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s14",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 888.0, 387.0, 224.0, 22.0 ],
                                    "text": "groove~ night_pad @loop 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "s15",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 281.0, 426.0, 110.0, 22.0 ],
                                    "text": "r pad_vol"
                                }
                            },
                            {
                                "box": {
                                    "id": "s16",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 401.0, 426.0, 130.0, 22.0 ],
                                    "text": "r pad_active"
                                }
                            },
                            {
                                "box": {
                                    "id": "s17",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 541.0, 426.0, 90.0, 22.0 ],
                                    "text": "r time_val"
                                }
                            },
                            {
                                "box": {
                                    "id": "s18",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 281.0, 466.0, 209.0, 22.0 ],
                                    "text": "expr $f1 * $f2 * ($f3 < 50.)"
                                }
                            },
                            {
                                "box": {
                                    "id": "s19",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 281.0, 506.0, 104.0, 22.0 ],
                                    "text": "pack 0. 5000"
                                }
                            },
                            {
                                "box": {
                                    "id": "s20",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 281.0, 536.0, 97.0, 22.0 ],
                                    "text": "line~ 0. 50"
                                }
                            },
                            {
                                "box": {
                                    "id": "s21",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 619.0, 592.0, 34.0, 22.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s22",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 919.0, 442.0, 110.0, 22.0 ],
                                    "text": "r pad_vol"
                                }
                            },
                            {
                                "box": {
                                    "id": "s23",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1039.0, 442.0, 130.0, 22.0 ],
                                    "text": "r pad_active"
                                }
                            },
                            {
                                "box": {
                                    "id": "s24",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1179.0, 442.0, 90.0, 22.0 ],
                                    "text": "r time_val"
                                }
                            },
                            {
                                "box": {
                                    "id": "s25",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 919.0, 482.0, 272.0, 22.0 ],
                                    "text": "expr $f1 * $f2 * ($f3 > 50.) * 0.58"
                                }
                            },
                            {
                                "box": {
                                    "id": "s26",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 919.0, 522.0, 104.0, 22.0 ],
                                    "text": "pack 0. 5000"
                                }
                            },
                            {
                                "box": {
                                    "id": "s27",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 919.0, 552.0, 97.0, 22.0 ],
                                    "text": "line~ 0. 50"
                                }
                            },
                            {
                                "box": {
                                    "id": "s28",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 869.0, 592.0, 34.0, 22.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s29",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 719.0, 642.0, 34.0, 22.0 ],
                                    "text": "+~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s30",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 919.0, 642.0, 110.0, 22.0 ],
                                    "text": "r pad_pan"
                                }
                            },
                            {
                                "box": {
                                    "id": "s31",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 919.0, 672.0, 48.0, 22.0 ],
                                    "text": "sig~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s32",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 719.0, 702.0, 55.0, 22.0 ],
                                    "text": "pan2S"
                                }
                            },
                            {
                                "box": {
                                    "id": "s33",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 669.0, 742.0, 118.0, 22.0 ],
                                    "text": "send~ master_L"
                                }
                            },
                            {
                                "box": {
                                    "id": "s34",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 819.0, 742.0, 118.0, 22.0 ],
                                    "text": "send~ master_R"
                                }
                            },
                            {
                                "box": {
                                    "id": "sync_r",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 694.0, 284.0, 80.0, 22.0 ],
                                    "text": "r sync_all"
                                }
                            },
                            {
                                "box": {
                                    "id": "sync_m",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 694.0, 318.0, 28.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "vr_recv",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 789.0, 284.0, 210.0, 22.0 ],
                                    "text": "r~ vinyl_rate"
                                }
                            },
                            {
                                "box": {
                                    "id": "flt_main",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 719.0, 672.0, 140.0, 22.0 ],
                                    "text": "lores~ 3500 0.3"
                                }
                            },
                            {
                                "box": {
                                    "id": "speed_recv_p_pad",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1039.0, 284.0, 80.0, 22.0 ],
                                    "text": "r speed_val"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "s32", 0 ],
                                    "source": [ "flt_main", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s2", 0 ],
                                    "source": [ "s1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s21", 1 ],
                                    "source": [ "s10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s12", 0 ],
                                    "source": [ "s11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s13", 0 ],
                                    "source": [ "s12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s28", 0 ],
                                    "source": [ "s14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s18", 0 ],
                                    "source": [ "s15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s18", 1 ],
                                    "source": [ "s16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s18", 2 ],
                                    "source": [ "s17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s19", 0 ],
                                    "source": [ "s18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s20", 0 ],
                                    "source": [ "s19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s3", 0 ],
                                    "source": [ "s2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s21", 0 ],
                                    "source": [ "s20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s29", 0 ],
                                    "source": [ "s21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s25", 0 ],
                                    "source": [ "s22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s25", 1 ],
                                    "source": [ "s23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s25", 2 ],
                                    "source": [ "s24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s26", 0 ],
                                    "source": [ "s25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s27", 0 ],
                                    "source": [ "s26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s28", 1 ],
                                    "source": [ "s27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s29", 1 ],
                                    "source": [ "s28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "flt_main", 0 ],
                                    "source": [ "s29", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s31", 0 ],
                                    "source": [ "s30", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s32", 1 ],
                                    "source": [ "s31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s33", 0 ],
                                    "source": [ "s32", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s34", 0 ],
                                    "source": [ "s32", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s5", 0 ],
                                    "source": [ "s4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s6", 0 ],
                                    "source": [ "s5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s8", 0 ],
                                    "source": [ "s7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s9", 0 ],
                                    "source": [ "s8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s10", 1 ],
                                    "order": 1,
                                    "source": [ "speed_recv_p_pad", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s14", 1 ],
                                    "order": 0,
                                    "source": [ "speed_recv_p_pad", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s10", 0 ],
                                    "order": 1,
                                    "source": [ "sync_m", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s14", 0 ],
                                    "order": 0,
                                    "source": [ "sync_m", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "sync_m", 0 ],
                                    "source": [ "sync_r", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s10", 0 ],
                                    "order": 1,
                                    "source": [ "vr_recv", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s14", 0 ],
                                    "order": 0,
                                    "source": [ "vr_recv", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 792.4241725206375, 331.81815254688263, 120.0, 22.0 ],
                    "text": "p layer_pad"
                }
            },
            {
                "box": {
                    "id": "p_texture",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 34.0, 77.0, 1468.0, 753.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "s1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 100.0, 50.0, 76.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "s2",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 100.0, 80.0, 200.0, 22.0 ],
                                    "text": "read \"4 Sparkle.aiff\""
                                }
                            },
                            {
                                "box": {
                                    "id": "s3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "bang" ],
                                    "patching_rect": [ 100.0, 110.0, 160.0, 22.0 ],
                                    "text": "buffer~ day_texture"
                                }
                            },
                            {
                                "box": {
                                    "id": "s4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 350.0, 50.0, 76.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "s5",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 350.0, 80.0, 200.0, 22.0 ],
                                    "text": "read \"9 Violin.aiff\""
                                }
                            },
                            {
                                "box": {
                                    "id": "s6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "bang" ],
                                    "patching_rect": [ 350.0, 110.0, 170.0, 22.0 ],
                                    "text": "buffer~ night_texture"
                                }
                            },
                            {
                                "box": {
                                    "id": "s7",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 100.0, 160.0, 76.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "s8",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 100.0, 190.0, 30.0, 22.0 ],
                                    "text": "1"
                                }
                            },
                            {
                                "box": {
                                    "id": "s9",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 100.0, 220.0, 48.0, 22.0 ],
                                    "text": "sig~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s10",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 567.0, 348.0, 210.0, 22.0 ],
                                    "text": "groove~ day_texture @loop 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "s11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 350.0, 160.0, 76.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "s12",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 350.0, 190.0, 30.0, 22.0 ],
                                    "text": "1"
                                }
                            },
                            {
                                "box": {
                                    "id": "s13",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 350.0, 220.0, 48.0, 22.0 ],
                                    "text": "sig~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s14",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 817.0, 348.0, 224.0, 22.0 ],
                                    "text": "groove~ night_texture @loop 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "s15",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 200.0, 391.0, 110.0, 22.0 ],
                                    "text": "r texture_vol"
                                }
                            },
                            {
                                "box": {
                                    "id": "s16",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 320.0, 391.0, 130.0, 22.0 ],
                                    "text": "r texture_active"
                                }
                            },
                            {
                                "box": {
                                    "id": "s17",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 440.0, 391.0, 90.0, 22.0 ],
                                    "text": "r time_val"
                                }
                            },
                            {
                                "box": {
                                    "id": "s18",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 200.0, 431.0, 209.0, 22.0 ],
                                    "text": "expr $f1 * $f2 * ($f3 < 50.)"
                                }
                            },
                            {
                                "box": {
                                    "id": "s19",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 200.0, 471.0, 104.0, 22.0 ],
                                    "text": "pack 0. 5000"
                                }
                            },
                            {
                                "box": {
                                    "id": "s20",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 200.0, 501.0, 97.0, 22.0 ],
                                    "text": "line~ 0. 50"
                                }
                            },
                            {
                                "box": {
                                    "id": "s21",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 567.0, 548.0, 34.0, 22.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s22",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 867.0, 398.0, 110.0, 22.0 ],
                                    "text": "r texture_vol"
                                }
                            },
                            {
                                "box": {
                                    "id": "s23",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 987.0, 398.0, 130.0, 22.0 ],
                                    "text": "r texture_active"
                                }
                            },
                            {
                                "box": {
                                    "id": "s24",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1127.0, 398.0, 90.0, 22.0 ],
                                    "text": "r time_val"
                                }
                            },
                            {
                                "box": {
                                    "id": "s25",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 867.0, 438.0, 272.0, 22.0 ],
                                    "text": "expr $f1 * $f2 * ($f3 > 50.) * 0.58"
                                }
                            },
                            {
                                "box": {
                                    "id": "s26",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 867.0, 478.0, 104.0, 22.0 ],
                                    "text": "pack 0. 5000"
                                }
                            },
                            {
                                "box": {
                                    "id": "s27",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 867.0, 508.0, 97.0, 22.0 ],
                                    "text": "line~ 0. 50"
                                }
                            },
                            {
                                "box": {
                                    "id": "s28",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 817.0, 548.0, 34.0, 22.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s29",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 667.0, 598.0, 34.0, 22.0 ],
                                    "text": "+~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s30",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 867.0, 598.0, 110.0, 22.0 ],
                                    "text": "r texture_pan"
                                }
                            },
                            {
                                "box": {
                                    "id": "s31",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 867.0, 628.0, 48.0, 22.0 ],
                                    "text": "sig~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s32",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 676.0, 699.0, 55.0, 22.0 ],
                                    "text": "pan2S"
                                }
                            },
                            {
                                "box": {
                                    "id": "s33",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 626.0, 739.0, 118.0, 22.0 ],
                                    "text": "send~ master_L"
                                }
                            },
                            {
                                "box": {
                                    "id": "s34",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 776.0, 739.0, 118.0, 22.0 ],
                                    "text": "send~ master_R"
                                }
                            },
                            {
                                "box": {
                                    "id": "sync_r",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 747.0, 254.0, 80.0, 22.0 ],
                                    "text": "r sync_all"
                                }
                            },
                            {
                                "box": {
                                    "id": "sync_m",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 747.0, 282.0, 28.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "vr_recv",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 525.0, 254.0, 210.0, 22.0 ],
                                    "text": "r~ vinyl_rate"
                                }
                            },
                            {
                                "box": {
                                    "id": "flt_main",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 667.0, 628.0, 140.0, 22.0 ],
                                    "text": "lores~ 6000 0.35"
                                }
                            },
                            {
                                "box": {
                                    "id": "speed_recv_p_texture",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 845.0, 254.0, 80.0, 22.0 ],
                                    "text": "r speed_val"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "s32", 0 ],
                                    "source": [ "flt_main", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s2", 0 ],
                                    "source": [ "s1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s21", 1 ],
                                    "source": [ "s10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s12", 0 ],
                                    "source": [ "s11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s13", 0 ],
                                    "source": [ "s12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s28", 0 ],
                                    "source": [ "s14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s18", 0 ],
                                    "source": [ "s15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s18", 1 ],
                                    "source": [ "s16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s18", 2 ],
                                    "source": [ "s17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s19", 0 ],
                                    "source": [ "s18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s20", 0 ],
                                    "source": [ "s19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s3", 0 ],
                                    "source": [ "s2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s21", 0 ],
                                    "source": [ "s20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s29", 0 ],
                                    "source": [ "s21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s25", 0 ],
                                    "source": [ "s22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s25", 1 ],
                                    "source": [ "s23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s25", 2 ],
                                    "source": [ "s24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s26", 0 ],
                                    "source": [ "s25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s27", 0 ],
                                    "source": [ "s26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s28", 1 ],
                                    "source": [ "s27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s29", 1 ],
                                    "source": [ "s28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "flt_main", 0 ],
                                    "source": [ "s29", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s31", 0 ],
                                    "source": [ "s30", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s32", 1 ],
                                    "source": [ "s31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s33", 0 ],
                                    "source": [ "s32", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s34", 0 ],
                                    "source": [ "s32", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s5", 0 ],
                                    "source": [ "s4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s6", 0 ],
                                    "source": [ "s5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s8", 0 ],
                                    "source": [ "s7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s9", 0 ],
                                    "source": [ "s8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s10", 1 ],
                                    "order": 1,
                                    "source": [ "speed_recv_p_texture", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s14", 1 ],
                                    "order": 0,
                                    "source": [ "speed_recv_p_texture", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s10", 0 ],
                                    "order": 1,
                                    "source": [ "sync_m", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s14", 0 ],
                                    "order": 0,
                                    "source": [ "sync_m", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "sync_m", 0 ],
                                    "source": [ "sync_r", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s10", 0 ],
                                    "order": 1,
                                    "source": [ "vr_recv", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s14", 0 ],
                                    "order": 0,
                                    "source": [ "vr_recv", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 942.4241592884064, 331.81815254688263, 120.0, 22.0 ],
                    "text": "p layer_texture"
                }
            },
            {
                "box": {
                    "id": "p_arp",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 34.0, 77.0, 1468.0, 753.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "s1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 100.0, 50.0, 76.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "s2",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 100.0, 80.0, 200.0, 22.0 ],
                                    "text": "read \"5 Piano Appregio.aiff\""
                                }
                            },
                            {
                                "box": {
                                    "id": "s3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "bang" ],
                                    "patching_rect": [ 100.0, 110.0, 160.0, 22.0 ],
                                    "text": "buffer~ day_arp"
                                }
                            },
                            {
                                "box": {
                                    "id": "s4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 350.0, 50.0, 76.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "s5",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 350.0, 80.0, 200.0, 22.0 ],
                                    "text": "read \"8 Synth Rhythm.aiff\""
                                }
                            },
                            {
                                "box": {
                                    "id": "s6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "bang" ],
                                    "patching_rect": [ 350.0, 110.0, 170.0, 22.0 ],
                                    "text": "buffer~ night_arp"
                                }
                            },
                            {
                                "box": {
                                    "id": "s7",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 100.0, 160.0, 76.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "s8",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 100.0, 190.0, 30.0, 22.0 ],
                                    "text": "1"
                                }
                            },
                            {
                                "box": {
                                    "id": "s9",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 100.0, 220.0, 48.0, 22.0 ],
                                    "text": "sig~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s10",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 482.0, 392.0, 210.0, 22.0 ],
                                    "text": "groove~ day_arp @loop 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "s11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 350.0, 160.0, 76.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "s12",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 350.0, 190.0, 30.0, 22.0 ],
                                    "text": "1"
                                }
                            },
                            {
                                "box": {
                                    "id": "s13",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 350.0, 220.0, 48.0, 22.0 ],
                                    "text": "sig~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s14",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 732.0, 392.0, 224.0, 22.0 ],
                                    "text": "groove~ night_arp @loop 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "s15",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 98.0, 432.0, 110.0, 22.0 ],
                                    "text": "r arp_vol"
                                }
                            },
                            {
                                "box": {
                                    "id": "s16",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 218.0, 432.0, 130.0, 22.0 ],
                                    "text": "r arp_active"
                                }
                            },
                            {
                                "box": {
                                    "id": "s17",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 356.0, 432.0, 90.0, 22.0 ],
                                    "text": "r time_val"
                                }
                            },
                            {
                                "box": {
                                    "id": "s18",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 98.0, 472.0, 209.0, 22.0 ],
                                    "text": "expr $f1 * $f2 * ($f3 < 50.)"
                                }
                            },
                            {
                                "box": {
                                    "id": "s19",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 98.0, 512.0, 104.0, 22.0 ],
                                    "text": "pack 0. 5000"
                                }
                            },
                            {
                                "box": {
                                    "id": "s20",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 98.0, 542.0, 97.0, 22.0 ],
                                    "text": "line~ 0. 50"
                                }
                            },
                            {
                                "box": {
                                    "id": "s21",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 482.0, 592.0, 34.0, 22.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s22",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 782.0, 442.0, 110.0, 22.0 ],
                                    "text": "r arp_vol"
                                }
                            },
                            {
                                "box": {
                                    "id": "s23",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 902.0, 442.0, 130.0, 22.0 ],
                                    "text": "r arp_active"
                                }
                            },
                            {
                                "box": {
                                    "id": "s24",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1042.0, 442.0, 90.0, 22.0 ],
                                    "text": "r time_val"
                                }
                            },
                            {
                                "box": {
                                    "id": "s25",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 782.0, 482.0, 272.0, 22.0 ],
                                    "text": "expr $f1 * $f2 * ($f3 > 50.) * 0.58"
                                }
                            },
                            {
                                "box": {
                                    "id": "s26",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 782.0, 522.0, 104.0, 22.0 ],
                                    "text": "pack 0. 5000"
                                }
                            },
                            {
                                "box": {
                                    "id": "s27",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 782.0, 552.0, 97.0, 22.0 ],
                                    "text": "line~ 0. 50"
                                }
                            },
                            {
                                "box": {
                                    "id": "s28",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 732.0, 592.0, 34.0, 22.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s29",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 582.0, 642.0, 34.0, 22.0 ],
                                    "text": "+~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s30",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 782.0, 642.0, 110.0, 22.0 ],
                                    "text": "r arp_pan"
                                }
                            },
                            {
                                "box": {
                                    "id": "s31",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 782.0, 672.0, 48.0, 22.0 ],
                                    "text": "sig~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s32",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 582.0, 702.0, 55.0, 22.0 ],
                                    "text": "pan2S"
                                }
                            },
                            {
                                "box": {
                                    "id": "s33",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 532.0, 742.0, 118.0, 22.0 ],
                                    "text": "send~ master_L"
                                }
                            },
                            {
                                "box": {
                                    "id": "s34",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 682.0, 742.0, 118.0, 22.0 ],
                                    "text": "send~ master_R"
                                }
                            },
                            {
                                "box": {
                                    "id": "sync_r",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 647.0, 299.0, 80.0, 22.0 ],
                                    "text": "r sync_all"
                                }
                            },
                            {
                                "box": {
                                    "id": "sync_m",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 647.0, 327.0, 28.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "vr_recv",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 410.0, 299.0, 210.0, 22.0 ],
                                    "text": "r~ vinyl_rate"
                                }
                            },
                            {
                                "box": {
                                    "id": "flt_main",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 582.0, 672.0, 140.0, 22.0 ],
                                    "text": "lores~ 3500 0.25"
                                }
                            },
                            {
                                "box": {
                                    "id": "speed_recv_p_arp",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 750.0, 299.0, 80.0, 22.0 ],
                                    "text": "r speed_val"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "s32", 0 ],
                                    "source": [ "flt_main", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s2", 0 ],
                                    "source": [ "s1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s21", 1 ],
                                    "source": [ "s10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s12", 0 ],
                                    "source": [ "s11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s13", 0 ],
                                    "source": [ "s12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s28", 0 ],
                                    "source": [ "s14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s18", 0 ],
                                    "source": [ "s15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s18", 1 ],
                                    "source": [ "s16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s18", 2 ],
                                    "source": [ "s17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s19", 0 ],
                                    "source": [ "s18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s20", 0 ],
                                    "source": [ "s19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s3", 0 ],
                                    "source": [ "s2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s21", 0 ],
                                    "source": [ "s20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s29", 0 ],
                                    "source": [ "s21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s25", 0 ],
                                    "source": [ "s22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s25", 1 ],
                                    "source": [ "s23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s25", 2 ],
                                    "source": [ "s24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s26", 0 ],
                                    "source": [ "s25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s27", 0 ],
                                    "source": [ "s26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s28", 1 ],
                                    "source": [ "s27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s29", 1 ],
                                    "source": [ "s28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "flt_main", 0 ],
                                    "source": [ "s29", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s31", 0 ],
                                    "source": [ "s30", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s32", 1 ],
                                    "source": [ "s31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s33", 0 ],
                                    "source": [ "s32", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s34", 0 ],
                                    "source": [ "s32", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s5", 0 ],
                                    "source": [ "s4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s6", 0 ],
                                    "source": [ "s5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s8", 0 ],
                                    "source": [ "s7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s9", 0 ],
                                    "source": [ "s8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s10", 1 ],
                                    "order": 1,
                                    "source": [ "speed_recv_p_arp", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s14", 1 ],
                                    "order": 0,
                                    "source": [ "speed_recv_p_arp", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s10", 0 ],
                                    "order": 1,
                                    "source": [ "sync_m", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s14", 0 ],
                                    "order": 0,
                                    "source": [ "sync_m", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "sync_m", 0 ],
                                    "source": [ "sync_r", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s10", 0 ],
                                    "order": 1,
                                    "source": [ "vr_recv", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s14", 0 ],
                                    "order": 0,
                                    "source": [ "vr_recv", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 1092.4241460561752, 331.81815254688263, 120.0, 22.0 ],
                    "text": "p layer_arp"
                }
            },
            {
                "box": {
                    "id": "p_sparkle",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 34.0, 77.0, 1468.0, 753.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "s1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 100.0, 50.0, 76.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "s2",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 100.0, 80.0, 200.0, 22.0 ],
                                    "text": "read \"4 Sparkle.aiff\""
                                }
                            },
                            {
                                "box": {
                                    "id": "s3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "bang" ],
                                    "patching_rect": [ 100.0, 110.0, 160.0, 22.0 ],
                                    "text": "buffer~ day_sparkle"
                                }
                            },
                            {
                                "box": {
                                    "id": "s4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 350.0, 50.0, 76.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "s5",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 350.0, 80.0, 200.0, 22.0 ],
                                    "text": "read \"3 Synth Sparkle.aiff\""
                                }
                            },
                            {
                                "box": {
                                    "id": "s6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "bang" ],
                                    "patching_rect": [ 350.0, 110.0, 170.0, 22.0 ],
                                    "text": "buffer~ night_sparkle"
                                }
                            },
                            {
                                "box": {
                                    "id": "s7",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 100.0, 160.0, 76.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "s8",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 100.0, 190.0, 30.0, 22.0 ],
                                    "text": "1"
                                }
                            },
                            {
                                "box": {
                                    "id": "s9",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 100.0, 220.0, 48.0, 22.0 ],
                                    "text": "sig~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s10",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 572.0, 354.0, 210.0, 22.0 ],
                                    "text": "groove~ day_sparkle @loop 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "s11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 350.0, 160.0, 76.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "s12",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 350.0, 190.0, 30.0, 22.0 ],
                                    "text": "1"
                                }
                            },
                            {
                                "box": {
                                    "id": "s13",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 350.0, 220.0, 48.0, 22.0 ],
                                    "text": "sig~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s14",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 822.0, 354.0, 224.0, 22.0 ],
                                    "text": "groove~ night_sparkle @loop 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "s15",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 171.0, 418.0, 110.0, 22.0 ],
                                    "text": "r sparkle_vol"
                                }
                            },
                            {
                                "box": {
                                    "id": "s16",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 291.0, 418.0, 130.0, 22.0 ],
                                    "text": "r sparkle_active"
                                }
                            },
                            {
                                "box": {
                                    "id": "s17",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 438.0, 418.0, 90.0, 22.0 ],
                                    "text": "r time_val"
                                }
                            },
                            {
                                "box": {
                                    "id": "s18",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 171.0, 458.0, 209.0, 22.0 ],
                                    "text": "expr $f1 * $f2 * ($f3 < 50.)"
                                }
                            },
                            {
                                "box": {
                                    "id": "s19",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 171.0, 498.0, 104.0, 22.0 ],
                                    "text": "pack 0. 5000"
                                }
                            },
                            {
                                "box": {
                                    "id": "s20",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 171.0, 528.0, 97.0, 22.0 ],
                                    "text": "line~ 0. 50"
                                }
                            },
                            {
                                "box": {
                                    "id": "s21",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 572.0, 554.0, 34.0, 22.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s22",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 872.0, 404.0, 110.0, 22.0 ],
                                    "text": "r sparkle_vol"
                                }
                            },
                            {
                                "box": {
                                    "id": "s23",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 992.0, 404.0, 130.0, 22.0 ],
                                    "text": "r sparkle_active"
                                }
                            },
                            {
                                "box": {
                                    "id": "s24",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1132.0, 404.0, 90.0, 22.0 ],
                                    "text": "r time_val"
                                }
                            },
                            {
                                "box": {
                                    "id": "s25",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 872.0, 444.0, 272.0, 22.0 ],
                                    "text": "expr $f1 * $f2 * ($f3 > 50.) * 0.58"
                                }
                            },
                            {
                                "box": {
                                    "id": "s26",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 872.0, 484.0, 104.0, 22.0 ],
                                    "text": "pack 0. 5000"
                                }
                            },
                            {
                                "box": {
                                    "id": "s27",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 872.0, 514.0, 97.0, 22.0 ],
                                    "text": "line~ 0. 50"
                                }
                            },
                            {
                                "box": {
                                    "id": "s28",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 822.0, 554.0, 34.0, 22.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s29",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 672.0, 604.0, 34.0, 22.0 ],
                                    "text": "+~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s30",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 872.0, 604.0, 110.0, 22.0 ],
                                    "text": "r sparkle_pan"
                                }
                            },
                            {
                                "box": {
                                    "id": "s31",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 872.0, 634.0, 48.0, 22.0 ],
                                    "text": "sig~"
                                }
                            },
                            {
                                "box": {
                                    "id": "s32",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 672.0, 664.0, 55.0, 22.0 ],
                                    "text": "pan2S"
                                }
                            },
                            {
                                "box": {
                                    "id": "s33",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 622.0, 704.0, 118.0, 22.0 ],
                                    "text": "send~ master_L"
                                }
                            },
                            {
                                "box": {
                                    "id": "s34",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 772.0, 704.0, 118.0, 22.0 ],
                                    "text": "send~ master_R"
                                }
                            },
                            {
                                "box": {
                                    "id": "sync_r",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 619.0, 245.0, 80.0, 22.0 ],
                                    "text": "r sync_all"
                                }
                            },
                            {
                                "box": {
                                    "id": "sync_m",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 619.0, 273.0, 28.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "vr_recv",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 719.0, 245.0, 210.0, 22.0 ],
                                    "text": "r~ vinyl_rate"
                                }
                            },
                            {
                                "box": {
                                    "id": "flt_main",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 672.0, 634.0, 140.0, 22.0 ],
                                    "text": "reson~ 7000 0.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "speed_recv_p_sparkle",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 946.0, 245.0, 80.0, 22.0 ],
                                    "text": "r speed_val"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "s32", 0 ],
                                    "source": [ "flt_main", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s2", 0 ],
                                    "source": [ "s1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s21", 1 ],
                                    "source": [ "s10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s12", 0 ],
                                    "source": [ "s11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s13", 0 ],
                                    "source": [ "s12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s28", 0 ],
                                    "source": [ "s14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s18", 0 ],
                                    "source": [ "s15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s18", 1 ],
                                    "source": [ "s16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s18", 2 ],
                                    "source": [ "s17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s19", 0 ],
                                    "source": [ "s18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s20", 0 ],
                                    "source": [ "s19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s3", 0 ],
                                    "source": [ "s2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s21", 0 ],
                                    "source": [ "s20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s29", 0 ],
                                    "source": [ "s21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s25", 0 ],
                                    "source": [ "s22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s25", 1 ],
                                    "source": [ "s23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s25", 2 ],
                                    "source": [ "s24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s26", 0 ],
                                    "source": [ "s25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s27", 0 ],
                                    "source": [ "s26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s28", 1 ],
                                    "source": [ "s27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s29", 1 ],
                                    "source": [ "s28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "flt_main", 0 ],
                                    "source": [ "s29", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s31", 0 ],
                                    "source": [ "s30", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s32", 1 ],
                                    "source": [ "s31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s33", 0 ],
                                    "source": [ "s32", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s34", 0 ],
                                    "source": [ "s32", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s5", 0 ],
                                    "source": [ "s4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s6", 0 ],
                                    "source": [ "s5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s8", 0 ],
                                    "source": [ "s7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s9", 0 ],
                                    "source": [ "s8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s10", 1 ],
                                    "order": 1,
                                    "source": [ "speed_recv_p_sparkle", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s14", 1 ],
                                    "order": 0,
                                    "source": [ "speed_recv_p_sparkle", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s10", 0 ],
                                    "order": 1,
                                    "source": [ "sync_m", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s14", 0 ],
                                    "order": 0,
                                    "source": [ "sync_m", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "sync_m", 0 ],
                                    "source": [ "sync_r", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s10", 0 ],
                                    "order": 1,
                                    "source": [ "vr_recv", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s14", 0 ],
                                    "order": 0,
                                    "source": [ "vr_recv", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 1242.424132823944, 331.81815254688263, 120.0, 22.0 ],
                    "text": "p layer_sparkle"
                }
            },
            {
                "box": {
                    "id": "rcvL",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 51.18139863014221, 469.51220631599426, 140.0, 22.0 ],
                    "text": "receive~ master_L"
                }
            },
            {
                "box": {
                    "id": "rcvR",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 222.0, 605.8181304931641, 140.0, 22.0 ],
                    "text": "receive~ master_R"
                }
            },
            {
                "box": {
                    "id": "rbl",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 210.9375, 410.97561955451965, 64.0, 22.0 ],
                    "text": "r blinds"
                }
            },
            {
                "box": {
                    "id": "sbl",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 210.9375, 469.51220631599426, 123.0, 22.0 ],
                    "text": "scale 0. 1. 250 20000"
                }
            },
            {
                "box": {
                    "id": "pbl",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 101.18139982223511, 524.3902564048767, 50.0, 22.0 ],
                    "text": "$1 150"
                }
            },
            {
                "box": {
                    "id": "lineblL",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 101.4375, 764.6341645717621, 50.0, 22.0 ],
                    "text": "line"
                }
            },
            {
                "box": {
                    "id": "lineblR",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 368.1817857027054, 581.8181304931641, 50.0, 22.0 ],
                    "text": "line"
                }
            },
            {
                "box": {
                    "id": "blL",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 50.9375, 812.1951413154602, 120.0, 22.0 ],
                    "text": "lores~ 20000 0."
                }
            },
            {
                "box": {
                    "id": "blR",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 275.0, 730.3029658794403, 120.0, 22.0 ],
                    "text": "lores~ 20000 0."
                }
            },
            {
                "box": {
                    "id": "rwe",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 410.8723375797272, 707.4074639081955, 80.0, 22.0 ],
                    "text": "r weather"
                }
            },
            {
                "box": {
                    "id": "selwe",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "bang", "" ],
                    "patching_rect": [ 410.8723375797272, 758.0247519016266, 64.0, 22.0 ],
                    "text": "sel 1 0"
                }
            },
            {
                "box": {
                    "id": "mw550",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 278.125, 803.125, 40.0, 22.0 ],
                    "text": "2500"
                }
            },
            {
                "box": {
                    "id": "mw20k",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 323.4375, 803.125, 60.0, 22.0 ],
                    "text": "20000"
                }
            },
            {
                "box": {
                    "id": "pweL",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 93.75, 864.0625, 100.0, 22.0 ],
                    "text": "pack 0. 3000"
                }
            },
            {
                "box": {
                    "id": "pweR",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 323.4375, 864.0625, 100.0, 22.0 ],
                    "text": "pack 0. 3000"
                }
            },
            {
                "box": {
                    "id": "lweL",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 93.75, 901.5625, 50.0, 22.0 ],
                    "text": "line"
                }
            },
            {
                "box": {
                    "id": "lweR",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 323.4375, 910.9375, 50.0, 22.0 ],
                    "text": "line"
                }
            },
            {
                "box": {
                    "id": "weL",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 45.3125, 950.0, 120.0, 22.0 ],
                    "text": "lores~ 20000 0."
                }
            },
            {
                "box": {
                    "id": "weR",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 275.0, 967.1875, 120.0, 22.0 ],
                    "text": "lores~ 20000 0."
                }
            },
            {
                "box": {
                    "id": "rlp",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 723.4375, 950.0, 80.0, 22.0 ],
                    "text": "r lamp_val"
                }
            },
            {
                "box": {
                    "id": "slp",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 509.375, 1001.5625, 137.0, 22.0 ],
                    "text": "scale 0 100 20000 1200"
                }
            },
            {
                "box": {
                    "id": "plpL",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 96.875, 1046.875, 90.0, 22.0 ],
                    "text": "pack 0. 600"
                }
            },
            {
                "box": {
                    "id": "plpR",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 328.125, 1046.875, 90.0, 22.0 ],
                    "text": "pack 0. 600"
                }
            },
            {
                "box": {
                    "id": "llpL",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 96.875, 1081.25, 50.0, 22.0 ],
                    "text": "line"
                }
            },
            {
                "box": {
                    "id": "llpR",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 328.125, 1081.25, 50.0, 22.0 ],
                    "text": "line"
                }
            },
            {
                "box": {
                    "id": "wrmL",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 46.875, 1118.75, 120.0, 22.0 ],
                    "text": "lores~ 20000 0."
                }
            },
            {
                "box": {
                    "id": "wrmR",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 275.0, 1118.75, 120.0, 22.0 ],
                    "text": "lores~ 20000 0."
                }
            },
            {
                "box": {
                    "id": "rbl2",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 723.4375, 1307.8125, 64.0, 22.0 ],
                    "text": "r blinds"
                }
            },
            {
                "box": {
                    "id": "sbl2",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 723.4375, 1340.625, 142.0, 22.0 ],
                    "text": "scale 0. 1. 0.07 0.38"
                }
            },
            {
                "box": {
                    "id": "pblv",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 723.4375, 1370.3125, 60.0, 22.0 ],
                    "text": "$1 120"
                }
            },
            {
                "box": {
                    "id": "linevolL",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 70.73170900344849, 1543.9024758338928, 97.0, 22.0 ],
                    "text": "line~ 1. 50"
                }
            },
            {
                "box": {
                    "id": "linevolR",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 301.21951937675476, 1536.5854024887085, 97.0, 22.0 ],
                    "text": "line~ 1. 50"
                }
            },
            {
                "box": {
                    "id": "volL",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 54.878050088882446, 1585.365891456604, 34.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "volR",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 284.14634823799133, 1585.365891456604, 34.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "clipL",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 54.878050088882446, 1614.6341848373413, 120.0, 22.0 ],
                    "text": "clip~ -0.95 0.95"
                }
            },
            {
                "box": {
                    "id": "clipR",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 284.14634823799133, 1614.6341848373413, 120.0, 22.0 ],
                    "text": "clip~ -0.95 0.95"
                }
            },
            {
                "box": {
                    "id": "dac",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 154.87805247306824, 1660.975649356842, 59.99999999999999, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "stv",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1704.8936047554016, 706.3829736709595, 80.0, 22.0 ],
                    "text": "r time_val"
                }
            },
            {
                "box": {
                    "id": "schg",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "int", "int" ],
                    "patching_rect": [ 1704.8936047554016, 740.4255266189575, 60.0, 22.0 ],
                    "text": "change"
                }
            },
            {
                "box": {
                    "id": "szero",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1704.8936047554016, 772.3404200077057, 30.0, 22.0 ],
                    "text": "0."
                }
            },
            {
                "box": {
                    "id": "ssync",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1704.8936047554016, 802.127653837204, 80.0, 22.0 ],
                    "text": "s sync_all"
                }
            },
            {
                "box": {
                    "id": "lb_env",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 737.7048969268799, 1740.9835567474365, 76.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "mbl0",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 580.3278522491455, 1781.9671621322632, 29.5, 22.0 ],
                    "text": "0.9"
                }
            },
            {
                "box": {
                    "id": "sbl0",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 580.3278522491455, 1813.1147022247314, 80.0, 22.0 ],
                    "text": "s blinds"
                }
            },
            {
                "box": {
                    "id": "mwe0",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 690.163914680481, 1781.9671621322632, 20.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "swe0",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 690.163914680481, 1813.1147022247314, 80.0, 22.0 ],
                    "text": "s weather"
                }
            },
            {
                "box": {
                    "id": "mlp0",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 798.3606328964233, 1781.9671621322632, 20.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "slp0",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 798.3606328964233, 1813.1147022247314, 80.0, 22.0 ],
                    "text": "s lamp_val"
                }
            },
            {
                "box": {
                    "id": "mtv0",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 906.5573511123657, 1781.9671621322632, 20.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "stv0",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 906.5573511123657, 1813.1147022247314, 80.0, 22.0 ],
                    "text": "s time_val"
                }
            },
            {
                "box": {
                    "id": "lb_melody_vol",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 40.98360538482666, 1881.9671592712402, 76.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "m_melody_vol",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 40.98360538482666, 1909.8360109329224, 20.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "sd_melody_vol",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 40.98360538482666, 1940.9835510253906, 80.0, 22.0 ],
                    "text": "s melody_vol"
                }
            },
            {
                "box": {
                    "id": "lb_melody_active",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 140.9836025238037, 1881.9671592712402, 76.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "m_melody_active",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 140.9836025238037, 1909.8360109329224, 20.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "sd_melody_active",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 140.9836025238037, 1940.9835510253906, 95.0, 22.0 ],
                    "text": "s melody_active"
                }
            },
            {
                "box": {
                    "id": "lb_melody_pan",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 240.98359966278076, 1881.9671592712402, 76.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "m_melody_pan",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 240.98359966278076, 1909.8360109329224, 20.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "sd_melody_pan",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 240.98359966278076, 1940.9835510253906, 83.0, 22.0 ],
                    "text": "s melody_pan"
                }
            },
            {
                "box": {
                    "id": "lb_melody2_vol",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 340.9835968017578, 1881.9671592712402, 76.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "m_melody2_vol",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 340.9835968017578, 1909.8360109329224, 20.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "sd_melody2_vol",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 340.9835968017578, 1940.9835510253906, 85.0, 22.0 ],
                    "text": "s melody2_vol"
                }
            },
            {
                "box": {
                    "id": "lb_melody2_active",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 440.98359394073486, 1881.9671592712402, 76.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "m_melody2_active",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 440.98359394073486, 1909.8360109329224, 20.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "sd_melody2_active",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 440.98359394073486, 1940.9835510253906, 101.0, 22.0 ],
                    "text": "s melody2_active"
                }
            },
            {
                "box": {
                    "id": "lb_melody2_pan",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 540.9835910797119, 1881.9671592712402, 76.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "m_melody2_pan",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 540.9835910797119, 1909.8360109329224, 20.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "sd_melody2_pan",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 540.9835910797119, 1940.9835510253906, 90.0, 22.0 ],
                    "text": "s melody2_pan"
                }
            },
            {
                "box": {
                    "id": "lb_harmony_vol",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 640.983588218689, 1881.9671592712402, 76.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "m_harmony_vol",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 640.983588218689, 1909.8360109329224, 20.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "sd_harmony_vol",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 640.983588218689, 1940.9835510253906, 87.0, 22.0 ],
                    "text": "s harmony_vol"
                }
            },
            {
                "box": {
                    "id": "lb_harmony_active",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 740.983585357666, 1881.9671592712402, 76.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "m_harmony_active",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 740.983585357666, 1909.8360109329224, 20.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "sd_harmony_active",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 740.983585357666, 1940.9835510253906, 103.0, 22.0 ],
                    "text": "s harmony_active"
                }
            },
            {
                "box": {
                    "id": "lb_harmony_pan",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 840.9835824966431, 1881.9671592712402, 76.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "m_harmony_pan",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 840.9835824966431, 1909.8360109329224, 20.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "sd_harmony_pan",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 840.9835824966431, 1940.9835510253906, 91.0, 22.0 ],
                    "text": "s harmony_pan"
                }
            },
            {
                "box": {
                    "id": "lb_bass_vol",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 940.9835796356201, 1881.9671592712402, 76.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "m_bass_vol",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 940.9835796356201, 1909.8360109329224, 20.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "sd_bass_vol",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 940.9835796356201, 1940.9835510253906, 80.0, 22.0 ],
                    "text": "s bass_vol"
                }
            },
            {
                "box": {
                    "id": "lb_bass_active",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 1040.9835767745972, 1881.9671592712402, 76.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "m_bass_active",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1040.9835767745972, 1909.8360109329224, 20.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "sd_bass_active",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1040.9835767745972, 1940.9835510253906, 81.0, 22.0 ],
                    "text": "s bass_active"
                }
            },
            {
                "box": {
                    "id": "lb_bass_pan",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 1140.9835739135742, 1881.9671592712402, 76.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "m_bass_pan",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1140.9835739135742, 1909.8360109329224, 20.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "sd_bass_pan",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1140.9835739135742, 1940.9835510253906, 80.0, 22.0 ],
                    "text": "s bass_pan"
                }
            },
            {
                "box": {
                    "id": "lb_rhythm_vol",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 1240.9835710525513, 1881.9671592712402, 76.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "m_rhythm_vol",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1240.9835710525513, 1909.8360109329224, 20.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "sd_rhythm_vol",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1240.9835710525513, 1940.9835510253906, 80.0, 22.0 ],
                    "text": "s rhythm_vol"
                }
            },
            {
                "box": {
                    "id": "lb_rhythm_active",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 1340.9835681915283, 1881.9671592712402, 76.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "m_rhythm_active",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1340.9835681915283, 1909.8360109329224, 20.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "sd_rhythm_active",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1340.9835681915283, 1940.9835510253906, 93.0, 22.0 ],
                    "text": "s rhythm_active"
                }
            },
            {
                "box": {
                    "id": "lb_rhythm_pan",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 1440.9835653305054, 1881.9671592712402, 76.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "m_rhythm_pan",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1440.9835653305054, 1909.8360109329224, 20.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "sd_rhythm_pan",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1440.9835653305054, 1940.9835510253906, 81.0, 22.0 ],
                    "text": "s rhythm_pan"
                }
            },
            {
                "box": {
                    "id": "lb_pad_vol",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 1540.9835624694824, 1881.9671592712402, 76.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "m_pad_vol",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1540.9835624694824, 1909.8360109329224, 20.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "sd_pad_vol",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1540.9835624694824, 1940.9835510253906, 80.0, 22.0 ],
                    "text": "s pad_vol"
                }
            },
            {
                "box": {
                    "id": "lb_pad_active",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 1640.9835596084595, 1881.9671592712402, 76.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "m_pad_active",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1640.9835596084595, 1909.8360109329224, 20.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "sd_pad_active",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1640.9835596084595, 1940.9835510253906, 80.0, 22.0 ],
                    "text": "s pad_active"
                }
            },
            {
                "box": {
                    "id": "lb_pad_pan",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 1740.9835567474365, 1881.9671592712402, 76.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "m_pad_pan",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1740.9835567474365, 1909.8360109329224, 20.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "sd_pad_pan",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1740.9835567474365, 1940.9835510253906, 80.0, 22.0 ],
                    "text": "s pad_pan"
                }
            },
            {
                "box": {
                    "id": "lb_texture_vol",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 1840.9835538864136, 1881.9671592712402, 76.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "m_texture_vol",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1840.9835538864136, 1909.8360109329224, 20.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "sd_texture_vol",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1840.9835538864136, 1940.9835510253906, 80.0, 22.0 ],
                    "text": "s texture_vol"
                }
            },
            {
                "box": {
                    "id": "lb_texture_active",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 1940.9835510253906, 1881.9671592712402, 76.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "m_texture_active",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1940.9835510253906, 1909.8360109329224, 20.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "sd_texture_active",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1940.9835510253906, 1940.9835510253906, 93.0, 22.0 ],
                    "text": "s texture_active"
                }
            },
            {
                "box": {
                    "id": "lb_texture_pan",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 2040.9835481643677, 1881.9671592712402, 76.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "m_texture_pan",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2040.9835481643677, 1909.8360109329224, 20.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "sd_texture_pan",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2040.9835481643677, 1940.9835510253906, 81.0, 22.0 ],
                    "text": "s texture_pan"
                }
            },
            {
                "box": {
                    "id": "lb_arp_vol",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 2140.9835453033447, 1881.9671592712402, 76.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "m_arp_vol",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2140.9835453033447, 1909.8360109329224, 20.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "sd_arp_vol",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2140.9835453033447, 1940.9835510253906, 80.0, 22.0 ],
                    "text": "s arp_vol"
                }
            },
            {
                "box": {
                    "id": "lb_arp_active",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 2240.983542442322, 1881.9671592712402, 76.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "m_arp_active",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2240.983542442322, 1909.8360109329224, 20.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "sd_arp_active",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2240.983542442322, 1940.9835510253906, 80.0, 22.0 ],
                    "text": "s arp_active"
                }
            },
            {
                "box": {
                    "id": "lb_arp_pan",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 2340.983539581299, 1881.9671592712402, 76.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "m_arp_pan",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2340.983539581299, 1909.8360109329224, 20.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "sd_arp_pan",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2340.983539581299, 1940.9835510253906, 80.0, 22.0 ],
                    "text": "s arp_pan"
                }
            },
            {
                "box": {
                    "id": "lb_sparkle_vol",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 2440.983536720276, 1881.9671592712402, 76.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "m_sparkle_vol",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2444.262225151062, 1909.8360109329224, 20.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "sd_sparkle_vol",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2440.983536720276, 1940.9835510253906, 80.0, 22.0 ],
                    "text": "s sparkle_vol"
                }
            },
            {
                "box": {
                    "id": "lb_sparkle_active",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 2540.983533859253, 1881.9671592712402, 76.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "m_sparkle_active",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2540.983533859253, 1909.8360109329224, 20.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "sd_sparkle_active",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2540.983533859253, 1940.9835510253906, 95.0, 22.0 ],
                    "text": "s sparkle_active"
                }
            },
            {
                "box": {
                    "id": "lb_sparkle_pan",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 2640.98353099823, 1881.9671592712402, 76.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "m_sparkle_pan",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2640.98353099823, 1909.8360109329224, 20.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "sd_sparkle_pan",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2640.98353099823, 1940.9835510253906, 83.0, 22.0 ],
                    "text": "s sparkle_pan"
                }
            },
            {
                "box": {
                    "id": "r_rain_in",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 462.5, 1140.625, 80.0, 22.0 ],
                    "text": "r rain_val"
                }
            },
            {
                "box": {
                    "id": "sc_rain",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 462.5, 1164.0625, 148.0, 22.0 ],
                    "text": "scale 0. 1. 18000. 300."
                }
            },
            {
                "box": {
                    "id": "pk_rainL",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 96.875, 1234.375, 100.0, 22.0 ],
                    "text": "pack 0. 800"
                }
            },
            {
                "box": {
                    "id": "pk_rainR",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 328.125, 1229.6875, 100.0, 22.0 ],
                    "text": "pack 0. 800"
                }
            },
            {
                "box": {
                    "id": "ln_rainL",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 96.875, 1273.4375, 50.0, 22.0 ],
                    "text": "line"
                }
            },
            {
                "box": {
                    "id": "ln_rainR",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 328.125, 1273.4375, 50.0, 22.0 ],
                    "text": "line"
                }
            },
            {
                "box": {
                    "id": "rainLPL",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 46.875, 1317.1875, 120.0, 22.0 ],
                    "text": "lores~ 18000 0."
                }
            },
            {
                "box": {
                    "id": "rainLPR",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 275.0, 1317.1875, 120.0, 22.0 ],
                    "text": "lores~ 18000 0."
                }
            },
            {
                "box": {
                    "id": "r_coffee",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1834.6808378696442, 714.893611907959, 80.0, 22.0 ],
                    "text": "r coffee_val"
                }
            },
            {
                "box": {
                    "id": "sc_coffee",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1834.6808378696442, 742.5531861782074, 150.0, 22.0 ],
                    "text": "scale 0. 1. 0.4 1.6"
                }
            },
            {
                "box": {
                    "id": "s_coffee_speed",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1834.6808378696442, 772.3404200077057, 80.0, 22.0 ],
                    "text": "s speed_val"
                }
            },
            {
                "box": {
                    "id": "r_vinyl",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1281.25, 1007.8125, 100.0, 22.0 ],
                    "text": "r vinyl_val"
                }
            },
            {
                "box": {
                    "id": "sc_vinyl_amt",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1281.25, 1046.875, 148.0, 22.0 ],
                    "text": "scale 0. 1. 0. 0.18"
                }
            },
            {
                "box": {
                    "id": "vn_noise",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1174.3902719020844, 1085.365879535675, 60.0, 22.0 ],
                    "text": "noise~"
                }
            },
            {
                "box": {
                    "id": "vn_lores",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1180.4878330230713, 1115.8536851406097, 100.0, 22.0 ],
                    "text": "lores~ 3. 0.95"
                }
            },
            {
                "box": {
                    "id": "vn_mul",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1281.25, 1167.1875, 34.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "vn_add",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1281.25, 1195.3125, 60.0, 22.0 ],
                    "text": "+~ 1."
                }
            },
            {
                "box": {
                    "id": "vn_send",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1281.25, 1223.4375, 110.0, 22.0 ],
                    "text": "s~ vinyl_rate"
                }
            },
            {
                "box": {
                    "id": "vn_sig",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1312.25, 1081.25, 48.0, 22.0 ],
                    "text": "sig~"
                }
            },
            {
                "box": {
                    "id": "r_laptop",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 167.1875, 1358.53661775589, 100.0, 22.0 ],
                    "text": "r laptop_val"
                }
            },
            {
                "box": {
                    "id": "sc_lap_sr",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 304.125, 1398.7805211544037, 148.0, 22.0 ],
                    "text": "scale 0. 1. 22050. 400."
                }
            },
            {
                "box": {
                    "id": "sc_lap_bits",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 139.49084973335266, 1398.7805211544037, 148.0, 22.0 ],
                    "text": "scale 0. 1. 24. 3."
                }
            },
            {
                "box": {
                    "id": "lapDegL",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 54.878050088882446, 1495.1219868659973, 80.0, 22.0 ],
                    "text": "degrade~"
                }
            },
            {
                "box": {
                    "id": "lapDegR",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 284.14634823799133, 1495.1219868659973, 80.0, 22.0 ],
                    "text": "degrade~"
                }
            },
            {
                "box": {
                    "id": "p_amb_rain",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 0.0, 0.0, 420.0, 480.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "comment": "gain 0-1",
                                    "id": "in0",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 60.0, 20.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "pk0",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 60.0, 65.0, 80.0, 22.0 ],
                                    "text": "pack 0. 1200"
                                }
                            },
                            {
                                "box": {
                                    "id": "ln0",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "patching_rect": [ 60.0, 95.0, 50.0, 22.0 ],
                                    "text": "line"
                                }
                            },
                            {
                                "box": {
                                    "id": "sg0",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 60.0, 125.0, 50.0, 22.0 ],
                                    "text": "sig~"
                                }
                            },
                            {
                                "box": {
                                    "id": "ns0",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 160.0, 65.0, 50.0, 22.0 ],
                                    "text": "noise~"
                                }
                            },
                            {
                                "box": {
                                    "id": "f0",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 160.0, 95.0, 130.0, 22.0 ],
                                    "text": "lores~ 9000 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "f1",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 160.0, 130.0, 130.0, 22.0 ],
                                    "text": "lores~ 9000 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "gm0",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 160.0, 165.0, 30.0, 22.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "fx0",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 160.0, 200.0, 60.0, 22.0 ],
                                    "text": "*~ 0.06"
                                }
                            },
                            {
                                "box": {
                                    "id": "pn0",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 160.0, 235.0, 50.0, 22.0 ],
                                    "text": "pan2S"
                                }
                            },
                            {
                                "box": {
                                    "id": "pc0",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 240.0, 235.0, 45.0, 22.0 ],
                                    "text": "sig~ 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "sL0",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 120.0, 270.0, 120.0, 22.0 ],
                                    "text": "send~ master_L"
                                }
                            },
                            {
                                "box": {
                                    "id": "sR0",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 250.0, 270.0, 120.0, 22.0 ],
                                    "text": "send~ master_R"
                                }
                            },
                            {
                                "box": {
                                    "id": "lb0",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 180.0, 20.0, 60.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "mi0",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 180.0, 50.0, 50.0, 22.0 ],
                                    "text": "0. 100"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "f1", 0 ],
                                    "source": [ "f0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "gm0", 0 ],
                                    "source": [ "f1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "pn0", 0 ],
                                    "source": [ "fx0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "fx0", 0 ],
                                    "source": [ "gm0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "pk0", 0 ],
                                    "source": [ "in0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "mi0", 0 ],
                                    "source": [ "lb0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "sg0", 0 ],
                                    "source": [ "ln0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "ln0", 0 ],
                                    "source": [ "mi0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "f0", 0 ],
                                    "source": [ "ns0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "pn0", 1 ],
                                    "source": [ "pc0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "ln0", 0 ],
                                    "source": [ "pk0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "sL0", 0 ],
                                    "source": [ "pn0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "sR0", 0 ],
                                    "source": [ "pn0", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "gm0", 1 ],
                                    "source": [ "sg0", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 1889.3616886138916, 168.08510518074036, 130.0, 22.0 ],
                    "text": "p amb_rain"
                }
            },
            {
                "box": {
                    "id": "p_amb_storm",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 34.0, 77.0, 1468.0, 753.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "comment": "gain 0-1",
                                    "id": "in0",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 402.0, 86.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "pk0",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 402.0, 131.0, 80.0, 22.0 ],
                                    "text": "pack 0. 1200"
                                }
                            },
                            {
                                "box": {
                                    "id": "ln0",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "patching_rect": [ 402.0, 161.0, 50.0, 22.0 ],
                                    "text": "line"
                                }
                            },
                            {
                                "box": {
                                    "id": "sg0",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 402.0, 191.0, 50.0, 22.0 ],
                                    "text": "sig~"
                                }
                            },
                            {
                                "box": {
                                    "id": "ns0",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 500.0, 164.0, 50.0, 22.0 ],
                                    "text": "noise~"
                                }
                            },
                            {
                                "box": {
                                    "id": "f0",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 500.0, 204.0, 130.0, 22.0 ],
                                    "text": "lores~ 1200 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "f1",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 500.0, 239.0, 130.0, 22.0 ],
                                    "text": "lores~ 400 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "gm0",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 442.0, 280.0, 30.0, 22.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "fx0",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 427.0, 324.0, 60.0, 22.0 ],
                                    "text": "*~ 0.055"
                                }
                            },
                            {
                                "box": {
                                    "id": "pn0",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 278.0, 447.0, 50.0, 22.0 ],
                                    "text": "pan2S"
                                }
                            },
                            {
                                "box": {
                                    "id": "pc0",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 332.0, 416.0, 45.0, 22.0 ],
                                    "text": "sig~ 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "sL0",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 194.0, 510.0, 120.0, 22.0 ],
                                    "text": "send~ master_L"
                                }
                            },
                            {
                                "box": {
                                    "id": "sR0",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 332.0, 510.0, 120.0, 22.0 ],
                                    "text": "send~ master_R"
                                }
                            },
                            {
                                "box": {
                                    "id": "lb0",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 312.0, 90.0, 60.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "mi0",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 312.0, 124.0, 50.0, 22.0 ],
                                    "text": "0. 100"
                                }
                            },
                            {
                                "box": {
                                    "id": "ns1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 49.0, 117.0, 50.0, 22.0 ],
                                    "text": "noise~"
                                }
                            },
                            {
                                "box": {
                                    "id": "fl1",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 49.0, 152.0, 100.0, 22.0 ],
                                    "text": "lores~ 80 0.9"
                                }
                            },
                            {
                                "box": {
                                    "id": "fl2",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 49.0, 187.0, 100.0, 22.0 ],
                                    "text": "lores~ 120 0.7"
                                }
                            },
                            {
                                "box": {
                                    "id": "lf1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 194.0, 136.0, 80.0, 22.0 ],
                                    "text": "phasor~ 0.08"
                                }
                            },
                            {
                                "box": {
                                    "id": "lf2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 194.0, 172.0, 60.0, 22.0 ],
                                    "text": "*~ 0.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "lf3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 201.0, 208.0, 60.0, 22.0 ],
                                    "text": "+~ 0.3"
                                }
                            },
                            {
                                "box": {
                                    "id": "rm0",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 190.0, 244.0, 30.0, 22.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "rm1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 122.0, 326.0, 55.0, 22.0 ],
                                    "text": "*~ 0.06"
                                }
                            },
                            {
                                "box": {
                                    "id": "mx0",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 278.0, 416.0, 30.0, 22.0 ],
                                    "text": "+~"
                                }
                            },
                            {
                                "box": {
                                    "id": "sat0",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 402.0, 371.0, 110.0, 22.0 ],
                                    "text": "clip~ -0.72 0.72"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "f1", 0 ],
                                    "source": [ "f0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "gm0", 1 ],
                                    "source": [ "f1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "fl2", 0 ],
                                    "source": [ "fl1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "rm0", 0 ],
                                    "source": [ "fl2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "sat0", 0 ],
                                    "source": [ "fx0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "fx0", 0 ],
                                    "source": [ "gm0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "pk0", 0 ],
                                    "source": [ "in0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "mi0", 0 ],
                                    "source": [ "lb0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "lf2", 0 ],
                                    "source": [ "lf1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "lf3", 0 ],
                                    "source": [ "lf2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "rm0", 1 ],
                                    "source": [ "lf3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "sg0", 0 ],
                                    "source": [ "ln0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "ln0", 0 ],
                                    "source": [ "mi0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "pn0", 0 ],
                                    "source": [ "mx0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "f0", 0 ],
                                    "source": [ "ns0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "fl1", 0 ],
                                    "source": [ "ns1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "pn0", 1 ],
                                    "source": [ "pc0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "ln0", 0 ],
                                    "source": [ "pk0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "sL0", 0 ],
                                    "source": [ "pn0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "sR0", 0 ],
                                    "source": [ "pn0", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "rm1", 0 ],
                                    "source": [ "rm0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "mx0", 0 ],
                                    "source": [ "rm1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "mx0", 1 ],
                                    "source": [ "sat0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "gm0", 0 ],
                                    "order": 0,
                                    "source": [ "sg0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "rm1", 1 ],
                                    "order": 1,
                                    "source": [ "sg0", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 2044.6808364391327, 168.08510518074036, 130.0, 22.0 ],
                    "text": "p amb_storm"
                }
            },
            {
                "box": {
                    "id": "p_amb_ocean",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 34.0, 77.0, 1468.0, 753.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "comment": "gain 0-1",
                                    "id": "in0",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 519.0, 63.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "pk0",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 519.0, 108.0, 80.0, 22.0 ],
                                    "text": "pack 0. 1200"
                                }
                            },
                            {
                                "box": {
                                    "id": "ln0",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "patching_rect": [ 519.0, 138.0, 50.0, 22.0 ],
                                    "text": "line"
                                }
                            },
                            {
                                "box": {
                                    "id": "sg0",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 519.0, 168.0, 50.0, 22.0 ],
                                    "text": "sig~"
                                }
                            },
                            {
                                "box": {
                                    "id": "ns0",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 69.0, 190.0, 50.0, 22.0 ],
                                    "text": "noise~"
                                }
                            },
                            {
                                "box": {
                                    "id": "f0",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 70.0, 225.0, 130.0, 22.0 ],
                                    "text": "lores~ 350 0.6"
                                }
                            },
                            {
                                "box": {
                                    "id": "f1",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 70.0, 260.0, 130.0, 22.0 ],
                                    "text": "lores~ 200 0.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "gm0",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 273.0, 314.0, 30.0, 22.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "fx0",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 232.0, 353.0, 60.0, 22.0 ],
                                    "text": "*~ 0.08"
                                }
                            },
                            {
                                "box": {
                                    "id": "pn0",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 272.0, 408.0, 50.0, 22.0 ],
                                    "text": "pan2S"
                                }
                            },
                            {
                                "box": {
                                    "id": "pc0",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 303.0, 353.0, 45.0, 22.0 ],
                                    "text": "sig~ 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "sL0",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 232.0, 443.0, 120.0, 22.0 ],
                                    "text": "send~ master_L"
                                }
                            },
                            {
                                "box": {
                                    "id": "sR0",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 362.0, 443.0, 120.0, 22.0 ],
                                    "text": "send~ master_R"
                                }
                            },
                            {
                                "box": {
                                    "id": "lb0",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 449.0, 67.0, 60.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "mi0",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 449.0, 97.0, 50.0, 22.0 ],
                                    "text": "0. 100"
                                }
                            },
                            {
                                "box": {
                                    "id": "wv0",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 140.0, 79.0, 80.0, 22.0 ],
                                    "text": "phasor~ 0.07"
                                }
                            },
                            {
                                "box": {
                                    "id": "wv1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 140.0, 114.0, 60.0, 22.0 ],
                                    "text": "*~ 0.35"
                                }
                            },
                            {
                                "box": {
                                    "id": "wv2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 140.0, 149.0, 60.0, 22.0 ],
                                    "text": "+~ 0.65"
                                }
                            },
                            {
                                "box": {
                                    "id": "wv3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 327.0, 283.0, 30.0, 22.0 ],
                                    "text": "*~"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "f1", 0 ],
                                    "source": [ "f0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "gm0", 0 ],
                                    "source": [ "f1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "pn0", 0 ],
                                    "source": [ "fx0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "fx0", 0 ],
                                    "source": [ "gm0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "pk0", 0 ],
                                    "source": [ "in0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "mi0", 0 ],
                                    "source": [ "lb0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "sg0", 0 ],
                                    "source": [ "ln0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "ln0", 0 ],
                                    "source": [ "mi0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "f0", 0 ],
                                    "source": [ "ns0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "pn0", 1 ],
                                    "source": [ "pc0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "ln0", 0 ],
                                    "source": [ "pk0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "sL0", 0 ],
                                    "source": [ "pn0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "sR0", 0 ],
                                    "source": [ "pn0", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "wv3", 1 ],
                                    "source": [ "sg0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "wv1", 0 ],
                                    "source": [ "wv0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "wv2", 0 ],
                                    "source": [ "wv1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "wv3", 0 ],
                                    "source": [ "wv2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "gm0", 1 ],
                                    "source": [ "wv3", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 2193.617005586624, 168.08510518074036, 130.0, 22.0 ],
                    "text": "p amb_ocean"
                }
            },
            {
                "box": {
                    "id": "p_amb_fire",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 34.0, 77.0, 1468.0, 753.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "comment": "gain 0-1",
                                    "id": "in0",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 340.0, 60.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "pk0",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 340.0, 105.0, 80.0, 22.0 ],
                                    "text": "pack 0. 1200"
                                }
                            },
                            {
                                "box": {
                                    "id": "ln0",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "patching_rect": [ 340.0, 135.0, 50.0, 22.0 ],
                                    "text": "line"
                                }
                            },
                            {
                                "box": {
                                    "id": "sg0",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 340.0, 168.0, 50.0, 22.0 ],
                                    "text": "sig~"
                                }
                            },
                            {
                                "box": {
                                    "id": "ns0",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 51.0, 99.0, 50.0, 22.0 ],
                                    "text": "noise~"
                                }
                            },
                            {
                                "box": {
                                    "id": "f0",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 51.0, 129.0, 130.0, 22.0 ],
                                    "text": "lores~ 2200 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "f1",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 51.0, 164.0, 130.0, 22.0 ],
                                    "text": "lores~ 600 0.3"
                                }
                            },
                            {
                                "box": {
                                    "id": "gm0",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 183.0, 210.0, 30.0, 22.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "fx0",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 183.0, 245.0, 60.0, 22.0 ],
                                    "text": "*~ 0.07"
                                }
                            },
                            {
                                "box": {
                                    "id": "pn0",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 215.0, 510.0, 50.0, 22.0 ],
                                    "text": "pan2S"
                                }
                            },
                            {
                                "box": {
                                    "id": "pc0",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 260.5, 466.0, 45.0, 22.0 ],
                                    "text": "sig~ 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "sL0",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 123.0, 564.0, 120.0, 22.0 ],
                                    "text": "send~ master_L"
                                }
                            },
                            {
                                "box": {
                                    "id": "sR0",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 263.0, 564.0, 120.0, 22.0 ],
                                    "text": "send~ master_R"
                                }
                            },
                            {
                                "box": {
                                    "id": "lb0",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 253.0, 64.0, 60.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "mi0",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 253.0, 94.0, 50.0, 22.0 ],
                                    "text": "0. 100"
                                }
                            },
                            {
                                "box": {
                                    "id": "cr0",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 529.0, 53.0, 50.0, 22.0 ],
                                    "text": "noise~"
                                }
                            },
                            {
                                "box": {
                                    "id": "cr1",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 529.0, 98.0, 120.0, 22.0 ],
                                    "text": "lores~ 2800 0.92"
                                }
                            },
                            {
                                "box": {
                                    "id": "cr2",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 529.0, 133.0, 120.0, 22.0 ],
                                    "text": "lores~ 4500 0.88"
                                }
                            },
                            {
                                "box": {
                                    "id": "cr3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 529.0, 168.0, 40.0, 22.0 ],
                                    "text": "abs~"
                                }
                            },
                            {
                                "box": {
                                    "id": "cr4",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 529.0, 203.0, 50.0, 22.0 ],
                                    "text": "*~ 18."
                                }
                            },
                            {
                                "box": {
                                    "id": "cr5",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 529.0, 238.0, 100.0, 22.0 ],
                                    "text": "clip~ 0. 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "cr6",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 529.0, 273.0, 30.0, 22.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "cr7",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 529.0, 308.0, 55.0, 22.0 ],
                                    "text": "*~ 0.12"
                                }
                            },
                            {
                                "box": {
                                    "id": "cr8",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 340.0, 354.0, 30.0, 22.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "cr9",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 215.0, 445.0, 30.0, 22.0 ],
                                    "text": "+~"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "cr1", 0 ],
                                    "source": [ "cr0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "cr2", 0 ],
                                    "order": 1,
                                    "source": [ "cr1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "cr6", 0 ],
                                    "order": 0,
                                    "source": [ "cr1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "cr3", 0 ],
                                    "source": [ "cr2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "cr4", 0 ],
                                    "source": [ "cr3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "cr5", 0 ],
                                    "source": [ "cr4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "cr6", 1 ],
                                    "source": [ "cr5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "cr7", 0 ],
                                    "source": [ "cr6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "cr8", 1 ],
                                    "source": [ "cr7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "cr9", 1 ],
                                    "source": [ "cr8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "pn0", 0 ],
                                    "source": [ "cr9", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "f1", 0 ],
                                    "source": [ "f0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "gm0", 0 ],
                                    "source": [ "f1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "cr9", 0 ],
                                    "source": [ "fx0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "fx0", 0 ],
                                    "source": [ "gm0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "pk0", 0 ],
                                    "source": [ "in0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "mi0", 0 ],
                                    "source": [ "lb0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "sg0", 0 ],
                                    "source": [ "ln0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "ln0", 0 ],
                                    "source": [ "mi0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "f0", 0 ],
                                    "source": [ "ns0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "pn0", 1 ],
                                    "source": [ "pc0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "ln0", 0 ],
                                    "source": [ "pk0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "sL0", 0 ],
                                    "source": [ "pn0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "sR0", 0 ],
                                    "source": [ "pn0", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "cr8", 0 ],
                                    "order": 0,
                                    "source": [ "sg0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "gm0", 1 ],
                                    "order": 1,
                                    "source": [ "sg0", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 2348.9361534118652, 168.08510518074036, 130.0, 22.0 ],
                    "text": "p amb_fire"
                }
            },
            {
                "box": {
                    "id": "vn_lb_def",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 1566.5957334041595, 721.2765905857086, 76.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "vn_msg_def",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1566.5957334041595, 751.0638244152069, 26.0, 22.0 ],
                    "text": "1."
                }
            },
            {
                "box": {
                    "id": "vn_s_def",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1566.5957334041595, 780.8510582447052, 110.0, 22.0 ],
                    "text": "s~ vinyl_rate"
                }
            },
            {
                "box": {
                    "id": "lpHipL",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 65.9375, 715.625, 110.0, 22.0 ],
                    "text": "lores~ 20 0."
                }
            },
            {
                "box": {
                    "id": "lpHipR",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 175.7575602531433, 668.1817592382431, 110.0, 22.0 ],
                    "text": "lores~ 20 0."
                }
            },
            {
                "box": {
                    "id": "subHipL",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 50.9375, 764.6341645717621, 34.0, 22.0 ],
                    "text": "-~"
                }
            },
            {
                "box": {
                    "id": "subHipR",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 275.0, 699.999938249588, 34.0, 22.0 ],
                    "text": "-~"
                }
            },
            {
                "box": {
                    "id": "sblHP",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 210.9375, 514.6341586112976, 148.0, 22.0 ],
                    "text": "scale 0. 1. 20. 800."
                }
            },
            {
                "box": {
                    "id": "lineHipL",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 120.73171019554138, 668.2926988601685, 50.0, 22.0 ],
                    "text": "line"
                }
            },
            {
                "box": {
                    "id": "lineHipR",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 144.6969569325447, 620.4544907212257, 50.0, 22.0 ],
                    "text": "line"
                }
            },
            {
                "box": {
                    "id": "ntchBpL",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 45.3125, 1164.0625, 120.0, 22.0 ],
                    "text": "reson~ 3000 0.3"
                }
            },
            {
                "box": {
                    "id": "ntchBpR",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 275.0, 1164.0625, 120.0, 22.0 ],
                    "text": "reson~ 3000 0.3"
                }
            },
            {
                "box": {
                    "id": "ntchMxL",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 46.875, 1234.375, 34.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "ntchMxR",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 275.0, 1229.6875, 34.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "ntchSbL",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 46.875, 1273.4375, 34.0, 22.0 ],
                    "text": "-~"
                }
            },
            {
                "box": {
                    "id": "ntchSbR",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 275.0, 1273.4375, 34.0, 22.0 ],
                    "text": "-~"
                }
            },
            {
                "box": {
                    "id": "sNtchD",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 723.4375, 1218.75, 148.0, 22.0 ],
                    "text": "scale 0 100 0.4 0."
                }
            },
            {
                "box": {
                    "id": "pNtchD",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 723.4375, 1250.0, 80.0, 22.0 ],
                    "text": "pack 0. 400"
                }
            },
            {
                "box": {
                    "id": "lNtchD",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 723.4375, 1278.125, 60.0, 22.0 ],
                    "text": "line~"
                }
            },
            {
                "box": {
                    "id": "msgWeQ1",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 439.0625, 796.875, 40.0, 22.0 ],
                    "text": "0.25"
                }
            },
            {
                "box": {
                    "id": "msgWeQ0",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 489.0625, 796.875, 30.0, 22.0 ],
                    "text": "0."
                }
            },
            {
                "box": {
                    "id": "pkWeQ",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 210.9375, 864.0625, 80.0, 22.0 ],
                    "text": "pack 0. 2000"
                }
            },
            {
                "box": {
                    "id": "lnWeQL",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 145.3125, 901.5625, 50.0, 22.0 ],
                    "text": "line"
                }
            },
            {
                "box": {
                    "id": "lnWeQR",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 375.0, 910.9375, 50.0, 22.0 ],
                    "text": "line"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "weL", 0 ],
                    "source": [ "blL", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "weR", 0 ],
                    "source": [ "blR", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dac", 0 ],
                    "source": [ "clipL", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dac", 1 ],
                    "source": [ "clipR", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ntchMxL", 1 ],
                    "order": 1,
                    "source": [ "lNtchD", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ntchMxR", 1 ],
                    "order": 0,
                    "source": [ "lNtchD", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "volL", 0 ],
                    "source": [ "lapDegL", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "volR", 0 ],
                    "source": [ "lapDegR", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "m_arp_active", 0 ],
                    "source": [ "lb_arp_active", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "m_arp_pan", 0 ],
                    "source": [ "lb_arp_pan", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "m_arp_vol", 0 ],
                    "source": [ "lb_arp_vol", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "m_bass_active", 0 ],
                    "source": [ "lb_bass_active", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "m_bass_pan", 0 ],
                    "source": [ "lb_bass_pan", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "m_bass_vol", 0 ],
                    "source": [ "lb_bass_vol", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mbl0", 0 ],
                    "order": 3,
                    "source": [ "lb_env", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mlp0", 0 ],
                    "order": 1,
                    "source": [ "lb_env", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mtv0", 0 ],
                    "order": 0,
                    "source": [ "lb_env", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mwe0", 0 ],
                    "order": 2,
                    "source": [ "lb_env", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "m_harmony_active", 0 ],
                    "source": [ "lb_harmony_active", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "m_harmony_pan", 0 ],
                    "source": [ "lb_harmony_pan", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "m_harmony_vol", 0 ],
                    "source": [ "lb_harmony_vol", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "m_melody2_active", 0 ],
                    "source": [ "lb_melody2_active", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "m_melody2_pan", 0 ],
                    "source": [ "lb_melody2_pan", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "m_melody2_vol", 0 ],
                    "source": [ "lb_melody2_vol", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "m_melody_active", 0 ],
                    "source": [ "lb_melody_active", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "m_melody_pan", 0 ],
                    "source": [ "lb_melody_pan", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "m_melody_vol", 0 ],
                    "source": [ "lb_melody_vol", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "m_pad_active", 0 ],
                    "source": [ "lb_pad_active", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "m_pad_pan", 0 ],
                    "source": [ "lb_pad_pan", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "m_pad_vol", 0 ],
                    "source": [ "lb_pad_vol", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "m_rhythm_active", 0 ],
                    "source": [ "lb_rhythm_active", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "m_rhythm_pan", 0 ],
                    "source": [ "lb_rhythm_pan", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "m_rhythm_vol", 0 ],
                    "source": [ "lb_rhythm_vol", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "m_sparkle_active", 0 ],
                    "source": [ "lb_sparkle_active", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "m_sparkle_pan", 0 ],
                    "source": [ "lb_sparkle_pan", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "m_sparkle_vol", 0 ],
                    "source": [ "lb_sparkle_vol", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "m_texture_active", 0 ],
                    "source": [ "lb_texture_active", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "m_texture_pan", 0 ],
                    "source": [ "lb_texture_pan", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "m_texture_vol", 0 ],
                    "source": [ "lb_texture_vol", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lpHipL", 1 ],
                    "source": [ "lineHipL", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lpHipR", 1 ],
                    "source": [ "lineHipR", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "blL", 1 ],
                    "source": [ "lineblL", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "blR", 1 ],
                    "source": [ "lineblR", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "volL", 1 ],
                    "source": [ "linevolL", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "volR", 1 ],
                    "source": [ "linevolR", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "wrmL", 1 ],
                    "source": [ "llpL", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "wrmR", 1 ],
                    "source": [ "llpR", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "weL", 2 ],
                    "source": [ "lnWeQL", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "weR", 2 ],
                    "source": [ "lnWeQR", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rainLPL", 1 ],
                    "source": [ "ln_rainL", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rainLPR", 1 ],
                    "source": [ "ln_rainR", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "subHipL", 1 ],
                    "source": [ "lpHipL", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "subHipR", 0 ],
                    "source": [ "lpHipR", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "weL", 1 ],
                    "source": [ "lweL", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "weR", 1 ],
                    "source": [ "lweR", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sd_arp_active", 0 ],
                    "source": [ "m_arp_active", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sd_arp_pan", 0 ],
                    "source": [ "m_arp_pan", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sd_arp_vol", 0 ],
                    "source": [ "m_arp_vol", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sd_bass_active", 0 ],
                    "source": [ "m_bass_active", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sd_bass_pan", 0 ],
                    "source": [ "m_bass_pan", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sd_bass_vol", 0 ],
                    "source": [ "m_bass_vol", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sd_harmony_active", 0 ],
                    "source": [ "m_harmony_active", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sd_harmony_pan", 0 ],
                    "source": [ "m_harmony_pan", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sd_harmony_vol", 0 ],
                    "source": [ "m_harmony_vol", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sd_melody2_active", 0 ],
                    "source": [ "m_melody2_active", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sd_melody2_pan", 0 ],
                    "source": [ "m_melody2_pan", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sd_melody2_vol", 0 ],
                    "source": [ "m_melody2_vol", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sd_melody_active", 0 ],
                    "source": [ "m_melody_active", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sd_melody_pan", 0 ],
                    "source": [ "m_melody_pan", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sd_melody_vol", 0 ],
                    "source": [ "m_melody_vol", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sd_pad_active", 0 ],
                    "source": [ "m_pad_active", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sd_pad_pan", 0 ],
                    "source": [ "m_pad_pan", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sd_pad_vol", 0 ],
                    "source": [ "m_pad_vol", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sd_rhythm_active", 0 ],
                    "source": [ "m_rhythm_active", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sd_rhythm_pan", 0 ],
                    "source": [ "m_rhythm_pan", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sd_rhythm_vol", 0 ],
                    "source": [ "m_rhythm_vol", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sd_sparkle_active", 0 ],
                    "source": [ "m_sparkle_active", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sd_sparkle_pan", 0 ],
                    "source": [ "m_sparkle_pan", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sd_sparkle_vol", 0 ],
                    "source": [ "m_sparkle_vol", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sd_texture_active", 0 ],
                    "source": [ "m_texture_active", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sd_texture_pan", 0 ],
                    "source": [ "m_texture_pan", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sd_texture_vol", 0 ],
                    "source": [ "m_texture_vol", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sbl0", 0 ],
                    "source": [ "mbl0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "slp0", 0 ],
                    "source": [ "mlp0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pkWeQ", 0 ],
                    "source": [ "msgWeQ0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pkWeQ", 0 ],
                    "source": [ "msgWeQ1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "stv0", 0 ],
                    "source": [ "mtv0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pweL", 0 ],
                    "order": 1,
                    "source": [ "mw20k", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pweR", 0 ],
                    "order": 0,
                    "source": [ "mw20k", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pweL", 0 ],
                    "order": 1,
                    "source": [ "mw550", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pweR", 0 ],
                    "order": 0,
                    "source": [ "mw550", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "swe0", 0 ],
                    "source": [ "mwe0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ntchMxL", 0 ],
                    "source": [ "ntchBpL", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ntchMxR", 0 ],
                    "source": [ "ntchBpR", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ntchSbL", 1 ],
                    "source": [ "ntchMxL", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ntchSbR", 1 ],
                    "source": [ "ntchMxR", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rainLPL", 0 ],
                    "source": [ "ntchSbL", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rainLPR", 0 ],
                    "source": [ "ntchSbR", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lineHipL", 0 ],
                    "order": 1,
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lineHipR", 0 ],
                    "order": 0,
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lNtchD", 0 ],
                    "source": [ "pNtchD", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lineblL", 0 ],
                    "order": 1,
                    "source": [ "pbl", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lineblR", 0 ],
                    "order": 0,
                    "source": [ "pbl", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "linevolL", 0 ],
                    "order": 1,
                    "source": [ "pblv", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "linevolR", 0 ],
                    "order": 0,
                    "source": [ "pblv", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lnWeQL", 0 ],
                    "order": 1,
                    "source": [ "pkWeQ", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lnWeQR", 0 ],
                    "order": 0,
                    "source": [ "pkWeQ", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ln_rainL", 0 ],
                    "source": [ "pk_rainL", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ln_rainR", 0 ],
                    "source": [ "pk_rainR", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "llpL", 0 ],
                    "source": [ "plpL", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "llpR", 0 ],
                    "source": [ "plpR", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lweL", 0 ],
                    "source": [ "pweL", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lweR", 0 ],
                    "source": [ "pweR", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sc_coffee", 0 ],
                    "source": [ "r_coffee", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sc_lap_bits", 0 ],
                    "order": 1,
                    "source": [ "r_laptop", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sc_lap_sr", 0 ],
                    "order": 0,
                    "source": [ "r_laptop", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sc_rain", 0 ],
                    "source": [ "r_rain_in", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sc_vinyl_amt", 0 ],
                    "source": [ "r_vinyl", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lapDegL", 0 ],
                    "source": [ "rainLPL", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lapDegR", 0 ],
                    "source": [ "rainLPR", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sbl", 0 ],
                    "source": [ "rbl", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sbl2", 0 ],
                    "source": [ "rbl2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lpHipL", 0 ],
                    "order": 0,
                    "source": [ "rcvL", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "subHipL", 0 ],
                    "order": 1,
                    "source": [ "rcvL", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lpHipR", 0 ],
                    "order": 1,
                    "source": [ "rcvR", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "subHipR", 1 ],
                    "order": 0,
                    "source": [ "rcvR", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sNtchD", 0 ],
                    "order": 0,
                    "source": [ "rlp", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "slp", 0 ],
                    "order": 1,
                    "source": [ "rlp", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "p_amb_fire", 0 ],
                    "source": [ "rt", 22 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "p_amb_ocean", 0 ],
                    "source": [ "rt", 21 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "p_amb_rain", 0 ],
                    "source": [ "rt", 19 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "p_amb_storm", 0 ],
                    "source": [ "rt", 20 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sblinds", 0 ],
                    "source": [ "rt", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "slamp", 0 ],
                    "source": [ "rt", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sspeed", 0 ],
                    "source": [ "rt", 13 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "stime", 0 ],
                    "source": [ "rt", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sweather", 0 ],
                    "source": [ "rt", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "u_arp", 0 ],
                    "source": [ "rt", 11 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "u_bass", 0 ],
                    "source": [ "rt", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "u_harmony", 0 ],
                    "source": [ "rt", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "u_melody", 0 ],
                    "source": [ "rt", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "u_melody2", 0 ],
                    "source": [ "rt", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "u_pad", 0 ],
                    "source": [ "rt", 9 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "u_rhythm", 0 ],
                    "source": [ "rt", 8 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "u_sparkle", 0 ],
                    "source": [ "rt", 12 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "u_texture", 0 ],
                    "source": [ "rt", 10 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "selwe", 0 ],
                    "source": [ "rwe", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pNtchD", 0 ],
                    "source": [ "sNtchD", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pbl", 0 ],
                    "order": 1,
                    "source": [ "sbl", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sblHP", 0 ],
                    "order": 0,
                    "source": [ "sbl", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pblv", 0 ],
                    "source": [ "sbl2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "sblHP", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "s_coffee_speed", 0 ],
                    "source": [ "sc_coffee", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lapDegL", 2 ],
                    "order": 1,
                    "source": [ "sc_lap_bits", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lapDegR", 2 ],
                    "order": 0,
                    "source": [ "sc_lap_bits", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lapDegL", 1 ],
                    "order": 1,
                    "source": [ "sc_lap_sr", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lapDegR", 1 ],
                    "order": 0,
                    "source": [ "sc_lap_sr", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pk_rainL", 0 ],
                    "order": 1,
                    "source": [ "sc_rain", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pk_rainR", 0 ],
                    "order": 0,
                    "source": [ "sc_rain", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vn_sig", 0 ],
                    "source": [ "sc_vinyl_amt", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "szero", 0 ],
                    "source": [ "schg", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "msgWeQ0", 0 ],
                    "order": 0,
                    "source": [ "selwe", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "msgWeQ1", 0 ],
                    "order": 0,
                    "source": [ "selwe", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mw20k", 0 ],
                    "order": 1,
                    "source": [ "selwe", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mw550", 0 ],
                    "order": 1,
                    "source": [ "selwe", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "plpL", 0 ],
                    "order": 1,
                    "source": [ "slp", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "plpR", 0 ],
                    "order": 0,
                    "source": [ "slp", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "schg", 0 ],
                    "source": [ "stv", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "blL", 0 ],
                    "source": [ "subHipL", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "blR", 0 ],
                    "source": [ "subHipR", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ssync", 0 ],
                    "source": [ "szero", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sarp_active", 0 ],
                    "source": [ "u_arp", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sarp_pan", 0 ],
                    "source": [ "u_arp", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sarp_vol", 0 ],
                    "source": [ "u_arp", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sbass_active", 0 ],
                    "source": [ "u_bass", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sbass_pan", 0 ],
                    "source": [ "u_bass", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sbass_vol", 0 ],
                    "source": [ "u_bass", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sharmony_active", 0 ],
                    "source": [ "u_harmony", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sharmony_pan", 0 ],
                    "source": [ "u_harmony", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sharmony_vol", 0 ],
                    "source": [ "u_harmony", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "smelody_active", 0 ],
                    "source": [ "u_melody", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "smelody_pan", 0 ],
                    "source": [ "u_melody", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "smelody_vol", 0 ],
                    "source": [ "u_melody", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "smelody2_active", 0 ],
                    "source": [ "u_melody2", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "smelody2_pan", 0 ],
                    "source": [ "u_melody2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "smelody2_vol", 0 ],
                    "source": [ "u_melody2", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "spad_active", 0 ],
                    "source": [ "u_pad", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "spad_pan", 0 ],
                    "source": [ "u_pad", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "spad_vol", 0 ],
                    "source": [ "u_pad", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "srhythm_active", 0 ],
                    "source": [ "u_rhythm", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "srhythm_pan", 0 ],
                    "source": [ "u_rhythm", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "srhythm_vol", 0 ],
                    "source": [ "u_rhythm", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ssparkle_active", 0 ],
                    "source": [ "u_sparkle", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ssparkle_pan", 0 ],
                    "source": [ "u_sparkle", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ssparkle_vol", 0 ],
                    "source": [ "u_sparkle", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "stexture_active", 0 ],
                    "source": [ "u_texture", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "stexture_pan", 0 ],
                    "source": [ "u_texture", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "stexture_vol", 0 ],
                    "source": [ "u_texture", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dbgprint", 0 ],
                    "order": 0,
                    "source": [ "udp", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt", 0 ],
                    "order": 1,
                    "source": [ "udp", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vn_send", 0 ],
                    "source": [ "vn_add", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vn_msg_def", 0 ],
                    "source": [ "vn_lb_def", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vn_mul", 0 ],
                    "source": [ "vn_lores", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vn_s_def", 0 ],
                    "source": [ "vn_msg_def", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vn_add", 0 ],
                    "source": [ "vn_mul", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vn_lores", 0 ],
                    "source": [ "vn_noise", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vn_mul", 1 ],
                    "source": [ "vn_sig", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "clipL", 0 ],
                    "source": [ "volL", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "clipR", 0 ],
                    "source": [ "volR", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "wrmL", 0 ],
                    "source": [ "weL", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "wrmR", 0 ],
                    "source": [ "weR", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ntchBpL", 0 ],
                    "order": 1,
                    "source": [ "wrmL", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ntchSbL", 0 ],
                    "order": 0,
                    "source": [ "wrmL", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ntchBpR", 0 ],
                    "order": 1,
                    "source": [ "wrmR", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ntchSbR", 0 ],
                    "order": 0,
                    "source": [ "wrmR", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}