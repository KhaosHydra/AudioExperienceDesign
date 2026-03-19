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
    "rect": [
      35,
      100,
      1400,
      900
    ],
    "boxes": [
      {
        "box": {
          "id": "udp",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            200,
            30,
            120,
            22
          ],
          "text": "udpreceive 7374"
        }
      },
      {
        "box": {
          "id": "dbgprint",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            340,
            30,
            90,
            22
          ],
          "text": "print osc_in"
        }
      },
      {
        "box": {
          "id": "rt",
          "maxclass": "newobj",
          "numinlets": 14,
          "numoutlets": 15,
          "outlettype": [
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            ""
          ],
          "patching_rect": [
            50,
            70,
            1870,
            22
          ],
          "text": "route /soundroom/lamp /soundroom/blinds /soundroom/weather /soundroom/time /soundroom/layer/melody /soundroom/layer/melody2 /soundroom/layer/harmony /soundroom/layer/bass /soundroom/layer/rhythm /soundroom/layer/pad /soundroom/layer/texture /soundroom/layer/arp /soundroom/layer/sparkle /soundroom/speed"
        }
      },
      {
        "box": {
          "id": "slamp",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50,
            130,
            90,
            22
          ],
          "text": "s lamp_val"
        }
      },
      {
        "box": {
          "id": "sblinds",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            190,
            130,
            90,
            22
          ],
          "text": "s blinds"
        }
      },
      {
        "box": {
          "id": "sweather",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            330,
            130,
            90,
            22
          ],
          "text": "s weather"
        }
      },
      {
        "box": {
          "id": "stime",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            470,
            130,
            90,
            22
          ],
          "text": "s time_val"
        }
      },
      {
        "box": {
          "id": "sspeed",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1825,
            130,
            74,
            22
          ],
          "text": "s speed_val"
        }
      },
      {
        "box": {
          "id": "u_melody",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "float",
            "float",
            "int"
          ],
          "patching_rect": [
            50,
            210,
            103,
            22
          ],
          "text": "unpack 0. 0. 0"
        }
      },
      {
        "box": {
          "id": "smelody_pan",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50,
            240,
            90,
            22
          ],
          "text": "s melody_pan"
        }
      },
      {
        "box": {
          "id": "smelody_vol",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            55,
            270,
            90,
            22
          ],
          "text": "s melody_vol"
        }
      },
      {
        "box": {
          "id": "smelody_active",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            60,
            300,
            90,
            22
          ],
          "text": "s melody_active"
        }
      },
      {
        "box": {
          "id": "u_melody2",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "float",
            "float",
            "int"
          ],
          "patching_rect": [
            200,
            210,
            103,
            22
          ],
          "text": "unpack 0. 0. 0"
        }
      },
      {
        "box": {
          "id": "smelody2_pan",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            200,
            240,
            90,
            22
          ],
          "text": "s melody2_pan"
        }
      },
      {
        "box": {
          "id": "smelody2_vol",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            205,
            270,
            90,
            22
          ],
          "text": "s melody2_vol"
        }
      },
      {
        "box": {
          "id": "smelody2_active",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            210,
            300,
            90,
            22
          ],
          "text": "s melody2_active"
        }
      },
      {
        "box": {
          "id": "u_harmony",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "float",
            "float",
            "int"
          ],
          "patching_rect": [
            350,
            210,
            103,
            22
          ],
          "text": "unpack 0. 0. 0"
        }
      },
      {
        "box": {
          "id": "sharmony_pan",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            350,
            240,
            90,
            22
          ],
          "text": "s harmony_pan"
        }
      },
      {
        "box": {
          "id": "sharmony_vol",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            355,
            270,
            90,
            22
          ],
          "text": "s harmony_vol"
        }
      },
      {
        "box": {
          "id": "sharmony_active",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            360,
            300,
            90,
            22
          ],
          "text": "s harmony_active"
        }
      },
      {
        "box": {
          "id": "u_bass",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "float",
            "float",
            "int"
          ],
          "patching_rect": [
            500,
            210,
            103,
            22
          ],
          "text": "unpack 0. 0. 0"
        }
      },
      {
        "box": {
          "id": "sbass_pan",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            500,
            240,
            90,
            22
          ],
          "text": "s bass_pan"
        }
      },
      {
        "box": {
          "id": "sbass_vol",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            505,
            270,
            90,
            22
          ],
          "text": "s bass_vol"
        }
      },
      {
        "box": {
          "id": "sbass_active",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            510,
            300,
            90,
            22
          ],
          "text": "s bass_active"
        }
      },
      {
        "box": {
          "id": "u_rhythm",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "float",
            "float",
            "int"
          ],
          "patching_rect": [
            650,
            210,
            103,
            22
          ],
          "text": "unpack 0. 0. 0"
        }
      },
      {
        "box": {
          "id": "srhythm_pan",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            650,
            240,
            90,
            22
          ],
          "text": "s rhythm_pan"
        }
      },
      {
        "box": {
          "id": "srhythm_vol",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            655,
            270,
            90,
            22
          ],
          "text": "s rhythm_vol"
        }
      },
      {
        "box": {
          "id": "srhythm_active",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            660,
            300,
            90,
            22
          ],
          "text": "s rhythm_active"
        }
      },
      {
        "box": {
          "id": "u_pad",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "float",
            "float",
            "int"
          ],
          "patching_rect": [
            800,
            210,
            103,
            22
          ],
          "text": "unpack 0. 0. 0"
        }
      },
      {
        "box": {
          "id": "spad_pan",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            800,
            240,
            90,
            22
          ],
          "text": "s pad_pan"
        }
      },
      {
        "box": {
          "id": "spad_vol",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            805,
            270,
            90,
            22
          ],
          "text": "s pad_vol"
        }
      },
      {
        "box": {
          "id": "spad_active",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            810,
            300,
            90,
            22
          ],
          "text": "s pad_active"
        }
      },
      {
        "box": {
          "id": "u_texture",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "float",
            "float",
            "int"
          ],
          "patching_rect": [
            950,
            210,
            103,
            22
          ],
          "text": "unpack 0. 0. 0"
        }
      },
      {
        "box": {
          "id": "stexture_pan",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            950,
            240,
            90,
            22
          ],
          "text": "s texture_pan"
        }
      },
      {
        "box": {
          "id": "stexture_vol",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            955,
            270,
            90,
            22
          ],
          "text": "s texture_vol"
        }
      },
      {
        "box": {
          "id": "stexture_active",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            960,
            300,
            90,
            22
          ],
          "text": "s texture_active"
        }
      },
      {
        "box": {
          "id": "u_arp",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "float",
            "float",
            "int"
          ],
          "patching_rect": [
            1100,
            210,
            103,
            22
          ],
          "text": "unpack 0. 0. 0"
        }
      },
      {
        "box": {
          "id": "sarp_pan",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1100,
            240,
            90,
            22
          ],
          "text": "s arp_pan"
        }
      },
      {
        "box": {
          "id": "sarp_vol",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1105,
            270,
            90,
            22
          ],
          "text": "s arp_vol"
        }
      },
      {
        "box": {
          "id": "sarp_active",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1110,
            300,
            90,
            22
          ],
          "text": "s arp_active"
        }
      },
      {
        "box": {
          "id": "u_sparkle",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "float",
            "float",
            "int"
          ],
          "patching_rect": [
            1250,
            210,
            103,
            22
          ],
          "text": "unpack 0. 0. 0"
        }
      },
      {
        "box": {
          "id": "ssparkle_pan",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1250,
            240,
            90,
            22
          ],
          "text": "s sparkle_pan"
        }
      },
      {
        "box": {
          "id": "ssparkle_vol",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1255,
            270,
            90,
            22
          ],
          "text": "s sparkle_vol"
        }
      },
      {
        "box": {
          "id": "ssparkle_active",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1260,
            300,
            90,
            22
          ],
          "text": "s sparkle_active"
        }
      },
      {
        "box": {
          "id": "p_melody",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 0,
          "patching_rect": [
            50,
            350,
            120,
            22
          ],
          "text": "p layer_melody",
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
            "rect": [
              99,
              100,
              750,
              680
            ],
            "boxes": [
              {
                "box": {
                  "id": "s1",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "patching_rect": [
                    100,
                    50,
                    76,
                    22
                  ],
                  "text": "loadbang"
                }
              },
              {
                "box": {
                  "id": "s2",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    100,
                    80,
                    200,
                    22
                  ],
                  "text": "read \"1 Piano Main.aiff\""
                }
              },
              {
                "box": {
                  "id": "s3",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "float",
                    "bang"
                  ],
                  "patching_rect": [
                    100,
                    110,
                    160,
                    22
                  ],
                  "text": "buffer~ day_melody"
                }
              },
              {
                "box": {
                  "id": "s4",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "patching_rect": [
                    350,
                    50,
                    76,
                    22
                  ],
                  "text": "loadbang"
                }
              },
              {
                "box": {
                  "id": "s5",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    350,
                    80,
                    200,
                    22
                  ],
                  "text": "read \"5 Melody 1.aiff\""
                }
              },
              {
                "box": {
                  "id": "s6",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "float",
                    "bang"
                  ],
                  "patching_rect": [
                    350,
                    110,
                    170,
                    22
                  ],
                  "text": "buffer~ night_melody"
                }
              },
              {
                "box": {
                  "id": "s7",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "patching_rect": [
                    100,
                    160,
                    76,
                    22
                  ],
                  "text": "loadbang"
                }
              },
              {
                "box": {
                  "id": "s8",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    100,
                    190,
                    30,
                    22
                  ],
                  "text": "1"
                }
              },
              {
                "box": {
                  "id": "s9",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    100,
                    220,
                    48,
                    22
                  ],
                  "text": "sig~"
                }
              },
              {
                "box": {
                  "id": "s10",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "signal"
                  ],
                  "patching_rect": [
                    100,
                    250,
                    210,
                    22
                  ],
                  "text": "groove~ day_melody @loop 1"
                }
              },
              {
                "box": {
                  "id": "s11",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "patching_rect": [
                    350,
                    160,
                    76,
                    22
                  ],
                  "text": "loadbang"
                }
              },
              {
                "box": {
                  "id": "s12",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    350,
                    190,
                    30,
                    22
                  ],
                  "text": "1"
                }
              },
              {
                "box": {
                  "id": "s13",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    350,
                    220,
                    48,
                    22
                  ],
                  "text": "sig~"
                }
              },
              {
                "box": {
                  "id": "s14",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "signal"
                  ],
                  "patching_rect": [
                    350,
                    250,
                    224,
                    22
                  ],
                  "text": "groove~ night_melody @loop 1"
                }
              },
              {
                "box": {
                  "id": "s15",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    30,
                    300,
                    110,
                    22
                  ],
                  "text": "r melody_vol"
                }
              },
              {
                "box": {
                  "id": "s16",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    150,
                    300,
                    130,
                    22
                  ],
                  "text": "r melody_active"
                }
              },
              {
                "box": {
                  "id": "s17",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    270,
                    300,
                    90,
                    22
                  ],
                  "text": "r time_val"
                }
              },
              {
                "box": {
                  "id": "s18",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    30,
                    340,
                    209,
                    22
                  ],
                  "text": "expr $f1 * $f2 * ($f3 < 50.)"
                }
              },
              {
                "box": {
                  "id": "s19",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    30,
                    380,
                    104,
                    22
                  ],
                  "text": "pack 0. 5000"
                }
              },
              {
                "box": {
                  "id": "s20",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "bang"
                  ],
                  "patching_rect": [
                    30,
                    410,
                    97,
                    22
                  ],
                  "text": "line~ 0. 50"
                }
              },
              {
                "box": {
                  "id": "s21",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    100,
                    450,
                    34,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "s22",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400,
                    300,
                    110,
                    22
                  ],
                  "text": "r melody_vol"
                }
              },
              {
                "box": {
                  "id": "s23",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    520,
                    300,
                    130,
                    22
                  ],
                  "text": "r melody_active"
                }
              },
              {
                "box": {
                  "id": "s24",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    660,
                    300,
                    90,
                    22
                  ],
                  "text": "r time_val"
                }
              },
              {
                "box": {
                  "id": "s25",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400,
                    340,
                    272,
                    22
                  ],
                  "text": "expr $f1 * $f2 * ($f3 > 50.) * 0.72"
                }
              },
              {
                "box": {
                  "id": "s26",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400,
                    380,
                    104,
                    22
                  ],
                  "text": "pack 0. 5000"
                }
              },
              {
                "box": {
                  "id": "s27",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "bang"
                  ],
                  "patching_rect": [
                    400,
                    410,
                    97,
                    22
                  ],
                  "text": "line~ 0. 50"
                }
              },
              {
                "box": {
                  "id": "s28",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    350,
                    450,
                    34,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "s29",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    200,
                    500,
                    34,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "s30",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400,
                    500,
                    110,
                    22
                  ],
                  "text": "r melody_pan"
                }
              },
              {
                "box": {
                  "id": "s31",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    400,
                    530,
                    48,
                    22
                  ],
                  "text": "sig~"
                }
              },
              {
                "box": {
                  "id": "s32",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "signal"
                  ],
                  "patching_rect": [
                    200,
                    560,
                    55,
                    22
                  ],
                  "text": "pan2S"
                }
              },
              {
                "box": {
                  "id": "s33",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    150,
                    600,
                    118,
                    22
                  ],
                  "text": "send~ master_L"
                }
              },
              {
                "box": {
                  "id": "s34",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    300,
                    600,
                    118,
                    22
                  ],
                  "text": "send~ master_R"
                }
              },
              {
                "box": {
                  "id": "sync_r",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    600,
                    10,
                    80,
                    22
                  ],
                  "text": "r sync_all"
                }
              },
              {
                "box": {
                  "id": "sync_m",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    600,
                    38,
                    28,
                    22
                  ],
                  "text": "0."
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "source": [
                    "s1",
                    0
                  ],
                  "destination": [
                    "s2",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s2",
                    0
                  ],
                  "destination": [
                    "s3",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s4",
                    0
                  ],
                  "destination": [
                    "s5",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s5",
                    0
                  ],
                  "destination": [
                    "s6",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s7",
                    0
                  ],
                  "destination": [
                    "s8",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s8",
                    0
                  ],
                  "destination": [
                    "s9",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s9",
                    0
                  ],
                  "destination": [
                    "s10",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s10",
                    0
                  ],
                  "destination": [
                    "s21",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s11",
                    0
                  ],
                  "destination": [
                    "s12",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s12",
                    0
                  ],
                  "destination": [
                    "s13",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s13",
                    0
                  ],
                  "destination": [
                    "s14",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s14",
                    0
                  ],
                  "destination": [
                    "s28",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s15",
                    0
                  ],
                  "destination": [
                    "s18",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s16",
                    0
                  ],
                  "destination": [
                    "s18",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s17",
                    0
                  ],
                  "destination": [
                    "s18",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s18",
                    0
                  ],
                  "destination": [
                    "s19",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s19",
                    0
                  ],
                  "destination": [
                    "s20",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s20",
                    0
                  ],
                  "destination": [
                    "s21",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s21",
                    0
                  ],
                  "destination": [
                    "s29",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s22",
                    0
                  ],
                  "destination": [
                    "s25",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s23",
                    0
                  ],
                  "destination": [
                    "s25",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s24",
                    0
                  ],
                  "destination": [
                    "s25",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s25",
                    0
                  ],
                  "destination": [
                    "s26",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s26",
                    0
                  ],
                  "destination": [
                    "s27",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s27",
                    0
                  ],
                  "destination": [
                    "s28",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s28",
                    0
                  ],
                  "destination": [
                    "s29",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s29",
                    0
                  ],
                  "destination": [
                    "s32",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s30",
                    0
                  ],
                  "destination": [
                    "s31",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s31",
                    0
                  ],
                  "destination": [
                    "s32",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s32",
                    0
                  ],
                  "destination": [
                    "s33",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s32",
                    1
                  ],
                  "destination": [
                    "s34",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "sync_r",
                    0
                  ],
                  "destination": [
                    "sync_m",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "sync_m",
                    0
                  ],
                  "destination": [
                    "s10",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "sync_m",
                    0
                  ],
                  "destination": [
                    "s14",
                    0
                  ]
                }
              }
            ]
          }
        }
      },
      {
        "box": {
          "id": "p_melody2",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 0,
          "patching_rect": [
            200,
            350,
            120,
            22
          ],
          "text": "p layer_melody2",
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
            "rect": [
              99,
              100,
              750,
              680
            ],
            "boxes": [
              {
                "box": {
                  "id": "s1",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "patching_rect": [
                    100,
                    50,
                    76,
                    22
                  ],
                  "text": "loadbang"
                }
              },
              {
                "box": {
                  "id": "s2",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    100,
                    80,
                    200,
                    22
                  ],
                  "text": "read \"3 Melody.aiff\""
                }
              },
              {
                "box": {
                  "id": "s3",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "float",
                    "bang"
                  ],
                  "patching_rect": [
                    100,
                    110,
                    160,
                    22
                  ],
                  "text": "buffer~ day_melody2"
                }
              },
              {
                "box": {
                  "id": "s4",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "patching_rect": [
                    350,
                    50,
                    76,
                    22
                  ],
                  "text": "loadbang"
                }
              },
              {
                "box": {
                  "id": "s5",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    350,
                    80,
                    200,
                    22
                  ],
                  "text": "read \"2 Synth Appregio High.aiff\""
                }
              },
              {
                "box": {
                  "id": "s6",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "float",
                    "bang"
                  ],
                  "patching_rect": [
                    350,
                    110,
                    170,
                    22
                  ],
                  "text": "buffer~ night_melody2"
                }
              },
              {
                "box": {
                  "id": "s7",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "patching_rect": [
                    100,
                    160,
                    76,
                    22
                  ],
                  "text": "loadbang"
                }
              },
              {
                "box": {
                  "id": "s8",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    100,
                    190,
                    30,
                    22
                  ],
                  "text": "1"
                }
              },
              {
                "box": {
                  "id": "s9",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    100,
                    220,
                    48,
                    22
                  ],
                  "text": "sig~"
                }
              },
              {
                "box": {
                  "id": "s10",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "signal"
                  ],
                  "patching_rect": [
                    100,
                    250,
                    210,
                    22
                  ],
                  "text": "groove~ day_melody2 @loop 1"
                }
              },
              {
                "box": {
                  "id": "s11",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "patching_rect": [
                    350,
                    160,
                    76,
                    22
                  ],
                  "text": "loadbang"
                }
              },
              {
                "box": {
                  "id": "s12",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    350,
                    190,
                    30,
                    22
                  ],
                  "text": "1"
                }
              },
              {
                "box": {
                  "id": "s13",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    350,
                    220,
                    48,
                    22
                  ],
                  "text": "sig~"
                }
              },
              {
                "box": {
                  "id": "s14",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "signal"
                  ],
                  "patching_rect": [
                    350,
                    250,
                    224,
                    22
                  ],
                  "text": "groove~ night_melody2 @loop 1"
                }
              },
              {
                "box": {
                  "id": "s15",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    30,
                    300,
                    110,
                    22
                  ],
                  "text": "r melody2_vol"
                }
              },
              {
                "box": {
                  "id": "s16",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    150,
                    300,
                    130,
                    22
                  ],
                  "text": "r melody2_active"
                }
              },
              {
                "box": {
                  "id": "s17",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    270,
                    300,
                    90,
                    22
                  ],
                  "text": "r time_val"
                }
              },
              {
                "box": {
                  "id": "s18",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    30,
                    340,
                    209,
                    22
                  ],
                  "text": "expr $f1 * $f2 * ($f3 < 50.)"
                }
              },
              {
                "box": {
                  "id": "s19",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    30,
                    380,
                    104,
                    22
                  ],
                  "text": "pack 0. 5000"
                }
              },
              {
                "box": {
                  "id": "s20",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "bang"
                  ],
                  "patching_rect": [
                    30,
                    410,
                    97,
                    22
                  ],
                  "text": "line~ 0. 50"
                }
              },
              {
                "box": {
                  "id": "s21",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    100,
                    450,
                    34,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "s22",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400,
                    300,
                    110,
                    22
                  ],
                  "text": "r melody2_vol"
                }
              },
              {
                "box": {
                  "id": "s23",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    520,
                    300,
                    130,
                    22
                  ],
                  "text": "r melody2_active"
                }
              },
              {
                "box": {
                  "id": "s24",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    660,
                    300,
                    90,
                    22
                  ],
                  "text": "r time_val"
                }
              },
              {
                "box": {
                  "id": "s25",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400,
                    340,
                    272,
                    22
                  ],
                  "text": "expr $f1 * $f2 * ($f3 > 50.) * 0.72"
                }
              },
              {
                "box": {
                  "id": "s26",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400,
                    380,
                    104,
                    22
                  ],
                  "text": "pack 0. 5000"
                }
              },
              {
                "box": {
                  "id": "s27",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "bang"
                  ],
                  "patching_rect": [
                    400,
                    410,
                    97,
                    22
                  ],
                  "text": "line~ 0. 50"
                }
              },
              {
                "box": {
                  "id": "s28",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    350,
                    450,
                    34,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "s29",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    200,
                    500,
                    34,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "s30",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400,
                    500,
                    110,
                    22
                  ],
                  "text": "r melody2_pan"
                }
              },
              {
                "box": {
                  "id": "s31",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    400,
                    530,
                    48,
                    22
                  ],
                  "text": "sig~"
                }
              },
              {
                "box": {
                  "id": "s32",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "signal"
                  ],
                  "patching_rect": [
                    200,
                    560,
                    55,
                    22
                  ],
                  "text": "pan2S"
                }
              },
              {
                "box": {
                  "id": "s33",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    150,
                    600,
                    118,
                    22
                  ],
                  "text": "send~ master_L"
                }
              },
              {
                "box": {
                  "id": "s34",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    300,
                    600,
                    118,
                    22
                  ],
                  "text": "send~ master_R"
                }
              },
              {
                "box": {
                  "id": "sync_r",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    600,
                    10,
                    80,
                    22
                  ],
                  "text": "r sync_all"
                }
              },
              {
                "box": {
                  "id": "sync_m",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    600,
                    38,
                    28,
                    22
                  ],
                  "text": "0."
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "source": [
                    "s1",
                    0
                  ],
                  "destination": [
                    "s2",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s2",
                    0
                  ],
                  "destination": [
                    "s3",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s4",
                    0
                  ],
                  "destination": [
                    "s5",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s5",
                    0
                  ],
                  "destination": [
                    "s6",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s7",
                    0
                  ],
                  "destination": [
                    "s8",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s8",
                    0
                  ],
                  "destination": [
                    "s9",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s9",
                    0
                  ],
                  "destination": [
                    "s10",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s10",
                    0
                  ],
                  "destination": [
                    "s21",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s11",
                    0
                  ],
                  "destination": [
                    "s12",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s12",
                    0
                  ],
                  "destination": [
                    "s13",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s13",
                    0
                  ],
                  "destination": [
                    "s14",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s14",
                    0
                  ],
                  "destination": [
                    "s28",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s15",
                    0
                  ],
                  "destination": [
                    "s18",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s16",
                    0
                  ],
                  "destination": [
                    "s18",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s17",
                    0
                  ],
                  "destination": [
                    "s18",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s18",
                    0
                  ],
                  "destination": [
                    "s19",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s19",
                    0
                  ],
                  "destination": [
                    "s20",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s20",
                    0
                  ],
                  "destination": [
                    "s21",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s21",
                    0
                  ],
                  "destination": [
                    "s29",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s22",
                    0
                  ],
                  "destination": [
                    "s25",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s23",
                    0
                  ],
                  "destination": [
                    "s25",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s24",
                    0
                  ],
                  "destination": [
                    "s25",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s25",
                    0
                  ],
                  "destination": [
                    "s26",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s26",
                    0
                  ],
                  "destination": [
                    "s27",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s27",
                    0
                  ],
                  "destination": [
                    "s28",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s28",
                    0
                  ],
                  "destination": [
                    "s29",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s29",
                    0
                  ],
                  "destination": [
                    "s32",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s30",
                    0
                  ],
                  "destination": [
                    "s31",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s31",
                    0
                  ],
                  "destination": [
                    "s32",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s32",
                    0
                  ],
                  "destination": [
                    "s33",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s32",
                    1
                  ],
                  "destination": [
                    "s34",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "sync_r",
                    0
                  ],
                  "destination": [
                    "sync_m",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "sync_m",
                    0
                  ],
                  "destination": [
                    "s10",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "sync_m",
                    0
                  ],
                  "destination": [
                    "s14",
                    0
                  ]
                }
              }
            ]
          }
        }
      },
      {
        "box": {
          "id": "p_harmony",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 0,
          "patching_rect": [
            350,
            350,
            120,
            22
          ],
          "text": "p layer_harmony",
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
            "rect": [
              99,
              100,
              750,
              680
            ],
            "boxes": [
              {
                "box": {
                  "id": "s1",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "patching_rect": [
                    100,
                    50,
                    76,
                    22
                  ],
                  "text": "loadbang"
                }
              },
              {
                "box": {
                  "id": "s2",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    100,
                    80,
                    200,
                    22
                  ],
                  "text": "read \"7 Drone.aiff\""
                }
              },
              {
                "box": {
                  "id": "s3",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "float",
                    "bang"
                  ],
                  "patching_rect": [
                    100,
                    110,
                    160,
                    22
                  ],
                  "text": "buffer~ day_harmony"
                }
              },
              {
                "box": {
                  "id": "s4",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "patching_rect": [
                    350,
                    50,
                    76,
                    22
                  ],
                  "text": "loadbang"
                }
              },
              {
                "box": {
                  "id": "s5",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    350,
                    80,
                    200,
                    22
                  ],
                  "text": "read \"6 Pad Low.aiff\""
                }
              },
              {
                "box": {
                  "id": "s6",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "float",
                    "bang"
                  ],
                  "patching_rect": [
                    350,
                    110,
                    170,
                    22
                  ],
                  "text": "buffer~ night_harmony"
                }
              },
              {
                "box": {
                  "id": "s7",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "patching_rect": [
                    100,
                    160,
                    76,
                    22
                  ],
                  "text": "loadbang"
                }
              },
              {
                "box": {
                  "id": "s8",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    100,
                    190,
                    30,
                    22
                  ],
                  "text": "1"
                }
              },
              {
                "box": {
                  "id": "s9",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    100,
                    220,
                    48,
                    22
                  ],
                  "text": "sig~"
                }
              },
              {
                "box": {
                  "id": "s10",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "signal"
                  ],
                  "patching_rect": [
                    100,
                    250,
                    210,
                    22
                  ],
                  "text": "groove~ day_harmony @loop 1"
                }
              },
              {
                "box": {
                  "id": "s11",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "patching_rect": [
                    350,
                    160,
                    76,
                    22
                  ],
                  "text": "loadbang"
                }
              },
              {
                "box": {
                  "id": "s12",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    350,
                    190,
                    30,
                    22
                  ],
                  "text": "1"
                }
              },
              {
                "box": {
                  "id": "s13",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    350,
                    220,
                    48,
                    22
                  ],
                  "text": "sig~"
                }
              },
              {
                "box": {
                  "id": "s14",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "signal"
                  ],
                  "patching_rect": [
                    350,
                    250,
                    224,
                    22
                  ],
                  "text": "groove~ night_harmony @loop 1"
                }
              },
              {
                "box": {
                  "id": "s15",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    30,
                    300,
                    110,
                    22
                  ],
                  "text": "r harmony_vol"
                }
              },
              {
                "box": {
                  "id": "s16",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    150,
                    300,
                    130,
                    22
                  ],
                  "text": "r harmony_active"
                }
              },
              {
                "box": {
                  "id": "s17",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    270,
                    300,
                    90,
                    22
                  ],
                  "text": "r time_val"
                }
              },
              {
                "box": {
                  "id": "s18",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    30,
                    340,
                    209,
                    22
                  ],
                  "text": "expr $f1 * $f2 * ($f3 < 50.)"
                }
              },
              {
                "box": {
                  "id": "s19",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    30,
                    380,
                    104,
                    22
                  ],
                  "text": "pack 0. 5000"
                }
              },
              {
                "box": {
                  "id": "s20",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "bang"
                  ],
                  "patching_rect": [
                    30,
                    410,
                    97,
                    22
                  ],
                  "text": "line~ 0. 50"
                }
              },
              {
                "box": {
                  "id": "s21",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    100,
                    450,
                    34,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "s22",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400,
                    300,
                    110,
                    22
                  ],
                  "text": "r harmony_vol"
                }
              },
              {
                "box": {
                  "id": "s23",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    520,
                    300,
                    130,
                    22
                  ],
                  "text": "r harmony_active"
                }
              },
              {
                "box": {
                  "id": "s24",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    660,
                    300,
                    90,
                    22
                  ],
                  "text": "r time_val"
                }
              },
              {
                "box": {
                  "id": "s25",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400,
                    340,
                    272,
                    22
                  ],
                  "text": "expr $f1 * $f2 * ($f3 > 50.) * 0.72"
                }
              },
              {
                "box": {
                  "id": "s26",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400,
                    380,
                    104,
                    22
                  ],
                  "text": "pack 0. 5000"
                }
              },
              {
                "box": {
                  "id": "s27",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "bang"
                  ],
                  "patching_rect": [
                    400,
                    410,
                    97,
                    22
                  ],
                  "text": "line~ 0. 50"
                }
              },
              {
                "box": {
                  "id": "s28",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    350,
                    450,
                    34,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "s29",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    200,
                    500,
                    34,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "s30",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400,
                    500,
                    110,
                    22
                  ],
                  "text": "r harmony_pan"
                }
              },
              {
                "box": {
                  "id": "s31",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    400,
                    530,
                    48,
                    22
                  ],
                  "text": "sig~"
                }
              },
              {
                "box": {
                  "id": "s32",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "signal"
                  ],
                  "patching_rect": [
                    200,
                    560,
                    55,
                    22
                  ],
                  "text": "pan2S"
                }
              },
              {
                "box": {
                  "id": "s33",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    150,
                    600,
                    118,
                    22
                  ],
                  "text": "send~ master_L"
                }
              },
              {
                "box": {
                  "id": "s34",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    300,
                    600,
                    118,
                    22
                  ],
                  "text": "send~ master_R"
                }
              },
              {
                "box": {
                  "id": "sync_r",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    600,
                    10,
                    80,
                    22
                  ],
                  "text": "r sync_all"
                }
              },
              {
                "box": {
                  "id": "sync_m",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    600,
                    38,
                    28,
                    22
                  ],
                  "text": "0."
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "source": [
                    "s1",
                    0
                  ],
                  "destination": [
                    "s2",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s2",
                    0
                  ],
                  "destination": [
                    "s3",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s4",
                    0
                  ],
                  "destination": [
                    "s5",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s5",
                    0
                  ],
                  "destination": [
                    "s6",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s7",
                    0
                  ],
                  "destination": [
                    "s8",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s8",
                    0
                  ],
                  "destination": [
                    "s9",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s9",
                    0
                  ],
                  "destination": [
                    "s10",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s10",
                    0
                  ],
                  "destination": [
                    "s21",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s11",
                    0
                  ],
                  "destination": [
                    "s12",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s12",
                    0
                  ],
                  "destination": [
                    "s13",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s13",
                    0
                  ],
                  "destination": [
                    "s14",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s14",
                    0
                  ],
                  "destination": [
                    "s28",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s15",
                    0
                  ],
                  "destination": [
                    "s18",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s16",
                    0
                  ],
                  "destination": [
                    "s18",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s17",
                    0
                  ],
                  "destination": [
                    "s18",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s18",
                    0
                  ],
                  "destination": [
                    "s19",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s19",
                    0
                  ],
                  "destination": [
                    "s20",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s20",
                    0
                  ],
                  "destination": [
                    "s21",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s21",
                    0
                  ],
                  "destination": [
                    "s29",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s22",
                    0
                  ],
                  "destination": [
                    "s25",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s23",
                    0
                  ],
                  "destination": [
                    "s25",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s24",
                    0
                  ],
                  "destination": [
                    "s25",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s25",
                    0
                  ],
                  "destination": [
                    "s26",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s26",
                    0
                  ],
                  "destination": [
                    "s27",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s27",
                    0
                  ],
                  "destination": [
                    "s28",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s28",
                    0
                  ],
                  "destination": [
                    "s29",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s29",
                    0
                  ],
                  "destination": [
                    "s32",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s30",
                    0
                  ],
                  "destination": [
                    "s31",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s31",
                    0
                  ],
                  "destination": [
                    "s32",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s32",
                    0
                  ],
                  "destination": [
                    "s33",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s32",
                    1
                  ],
                  "destination": [
                    "s34",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "sync_r",
                    0
                  ],
                  "destination": [
                    "sync_m",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "sync_m",
                    0
                  ],
                  "destination": [
                    "s10",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "sync_m",
                    0
                  ],
                  "destination": [
                    "s14",
                    0
                  ]
                }
              }
            ]
          }
        }
      },
      {
        "box": {
          "id": "p_bass",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 0,
          "patching_rect": [
            500,
            350,
            120,
            22
          ],
          "text": "p layer_bass",
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
            "rect": [
              99,
              100,
              750,
              680
            ],
            "boxes": [
              {
                "box": {
                  "id": "s1",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "patching_rect": [
                    100,
                    50,
                    76,
                    22
                  ],
                  "text": "loadbang"
                }
              },
              {
                "box": {
                  "id": "s2",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    100,
                    80,
                    200,
                    22
                  ],
                  "text": "read \"2 Piano Bass.aiff\""
                }
              },
              {
                "box": {
                  "id": "s3",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "float",
                    "bang"
                  ],
                  "patching_rect": [
                    100,
                    110,
                    160,
                    22
                  ],
                  "text": "buffer~ day_bass"
                }
              },
              {
                "box": {
                  "id": "s4",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "patching_rect": [
                    350,
                    50,
                    76,
                    22
                  ],
                  "text": "loadbang"
                }
              },
              {
                "box": {
                  "id": "s5",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    350,
                    80,
                    200,
                    22
                  ],
                  "text": "read \"4 Bass.aiff\""
                }
              },
              {
                "box": {
                  "id": "s6",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "float",
                    "bang"
                  ],
                  "patching_rect": [
                    350,
                    110,
                    170,
                    22
                  ],
                  "text": "buffer~ night_bass"
                }
              },
              {
                "box": {
                  "id": "s7",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "patching_rect": [
                    100,
                    160,
                    76,
                    22
                  ],
                  "text": "loadbang"
                }
              },
              {
                "box": {
                  "id": "s8",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    100,
                    190,
                    30,
                    22
                  ],
                  "text": "1"
                }
              },
              {
                "box": {
                  "id": "s9",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    100,
                    220,
                    48,
                    22
                  ],
                  "text": "sig~"
                }
              },
              {
                "box": {
                  "id": "s10",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "signal"
                  ],
                  "patching_rect": [
                    100,
                    250,
                    210,
                    22
                  ],
                  "text": "groove~ day_bass @loop 1"
                }
              },
              {
                "box": {
                  "id": "s11",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "patching_rect": [
                    350,
                    160,
                    76,
                    22
                  ],
                  "text": "loadbang"
                }
              },
              {
                "box": {
                  "id": "s12",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    350,
                    190,
                    30,
                    22
                  ],
                  "text": "1"
                }
              },
              {
                "box": {
                  "id": "s13",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    350,
                    220,
                    48,
                    22
                  ],
                  "text": "sig~"
                }
              },
              {
                "box": {
                  "id": "s14",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "signal"
                  ],
                  "patching_rect": [
                    350,
                    250,
                    224,
                    22
                  ],
                  "text": "groove~ night_bass @loop 1"
                }
              },
              {
                "box": {
                  "id": "s15",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    30,
                    300,
                    110,
                    22
                  ],
                  "text": "r bass_vol"
                }
              },
              {
                "box": {
                  "id": "s16",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    150,
                    300,
                    130,
                    22
                  ],
                  "text": "r bass_active"
                }
              },
              {
                "box": {
                  "id": "s17",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    270,
                    300,
                    90,
                    22
                  ],
                  "text": "r time_val"
                }
              },
              {
                "box": {
                  "id": "s18",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    30,
                    340,
                    209,
                    22
                  ],
                  "text": "expr $f1 * $f2 * ($f3 < 50.)"
                }
              },
              {
                "box": {
                  "id": "s19",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    30,
                    380,
                    104,
                    22
                  ],
                  "text": "pack 0. 5000"
                }
              },
              {
                "box": {
                  "id": "s20",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "bang"
                  ],
                  "patching_rect": [
                    30,
                    410,
                    97,
                    22
                  ],
                  "text": "line~ 0. 50"
                }
              },
              {
                "box": {
                  "id": "s21",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    100,
                    450,
                    34,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "s22",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400,
                    300,
                    110,
                    22
                  ],
                  "text": "r bass_vol"
                }
              },
              {
                "box": {
                  "id": "s23",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    520,
                    300,
                    130,
                    22
                  ],
                  "text": "r bass_active"
                }
              },
              {
                "box": {
                  "id": "s24",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    660,
                    300,
                    90,
                    22
                  ],
                  "text": "r time_val"
                }
              },
              {
                "box": {
                  "id": "s25",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400,
                    340,
                    272,
                    22
                  ],
                  "text": "expr $f1 * $f2 * ($f3 > 50.) * 0.72"
                }
              },
              {
                "box": {
                  "id": "s26",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400,
                    380,
                    104,
                    22
                  ],
                  "text": "pack 0. 5000"
                }
              },
              {
                "box": {
                  "id": "s27",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "bang"
                  ],
                  "patching_rect": [
                    400,
                    410,
                    97,
                    22
                  ],
                  "text": "line~ 0. 50"
                }
              },
              {
                "box": {
                  "id": "s28",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    350,
                    450,
                    34,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "s29",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    200,
                    500,
                    34,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "s30",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400,
                    500,
                    110,
                    22
                  ],
                  "text": "r bass_pan"
                }
              },
              {
                "box": {
                  "id": "s31",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    400,
                    530,
                    48,
                    22
                  ],
                  "text": "sig~"
                }
              },
              {
                "box": {
                  "id": "s32",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "signal"
                  ],
                  "patching_rect": [
                    200,
                    560,
                    55,
                    22
                  ],
                  "text": "pan2S"
                }
              },
              {
                "box": {
                  "id": "s33",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    150,
                    600,
                    118,
                    22
                  ],
                  "text": "send~ master_L"
                }
              },
              {
                "box": {
                  "id": "s34",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    300,
                    600,
                    118,
                    22
                  ],
                  "text": "send~ master_R"
                }
              },
              {
                "box": {
                  "id": "sync_r",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    600,
                    10,
                    80,
                    22
                  ],
                  "text": "r sync_all"
                }
              },
              {
                "box": {
                  "id": "sync_m",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    600,
                    38,
                    28,
                    22
                  ],
                  "text": "0."
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "source": [
                    "s1",
                    0
                  ],
                  "destination": [
                    "s2",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s2",
                    0
                  ],
                  "destination": [
                    "s3",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s4",
                    0
                  ],
                  "destination": [
                    "s5",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s5",
                    0
                  ],
                  "destination": [
                    "s6",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s7",
                    0
                  ],
                  "destination": [
                    "s8",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s8",
                    0
                  ],
                  "destination": [
                    "s9",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s9",
                    0
                  ],
                  "destination": [
                    "s10",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s10",
                    0
                  ],
                  "destination": [
                    "s21",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s11",
                    0
                  ],
                  "destination": [
                    "s12",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s12",
                    0
                  ],
                  "destination": [
                    "s13",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s13",
                    0
                  ],
                  "destination": [
                    "s14",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s14",
                    0
                  ],
                  "destination": [
                    "s28",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s15",
                    0
                  ],
                  "destination": [
                    "s18",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s16",
                    0
                  ],
                  "destination": [
                    "s18",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s17",
                    0
                  ],
                  "destination": [
                    "s18",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s18",
                    0
                  ],
                  "destination": [
                    "s19",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s19",
                    0
                  ],
                  "destination": [
                    "s20",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s20",
                    0
                  ],
                  "destination": [
                    "s21",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s21",
                    0
                  ],
                  "destination": [
                    "s29",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s22",
                    0
                  ],
                  "destination": [
                    "s25",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s23",
                    0
                  ],
                  "destination": [
                    "s25",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s24",
                    0
                  ],
                  "destination": [
                    "s25",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s25",
                    0
                  ],
                  "destination": [
                    "s26",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s26",
                    0
                  ],
                  "destination": [
                    "s27",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s27",
                    0
                  ],
                  "destination": [
                    "s28",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s28",
                    0
                  ],
                  "destination": [
                    "s29",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s29",
                    0
                  ],
                  "destination": [
                    "s32",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s30",
                    0
                  ],
                  "destination": [
                    "s31",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s31",
                    0
                  ],
                  "destination": [
                    "s32",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s32",
                    0
                  ],
                  "destination": [
                    "s33",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s32",
                    1
                  ],
                  "destination": [
                    "s34",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "sync_r",
                    0
                  ],
                  "destination": [
                    "sync_m",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "sync_m",
                    0
                  ],
                  "destination": [
                    "s10",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "sync_m",
                    0
                  ],
                  "destination": [
                    "s14",
                    0
                  ]
                }
              }
            ]
          }
        }
      },
      {
        "box": {
          "id": "p_rhythm",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 0,
          "patching_rect": [
            650,
            350,
            120,
            22
          ],
          "text": "p layer_rhythm",
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
            "rect": [
              99,
              100,
              750,
              680
            ],
            "boxes": [
              {
                "box": {
                  "id": "s1",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "patching_rect": [
                    100,
                    50,
                    76,
                    22
                  ],
                  "text": "loadbang"
                }
              },
              {
                "box": {
                  "id": "s2",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    100,
                    80,
                    200,
                    22
                  ],
                  "text": "read \"9 Piano Chord 2.aiff\""
                }
              },
              {
                "box": {
                  "id": "s3",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "float",
                    "bang"
                  ],
                  "patching_rect": [
                    100,
                    110,
                    160,
                    22
                  ],
                  "text": "buffer~ day_rhythm"
                }
              },
              {
                "box": {
                  "id": "s4",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "patching_rect": [
                    350,
                    50,
                    76,
                    22
                  ],
                  "text": "loadbang"
                }
              },
              {
                "box": {
                  "id": "s5",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    350,
                    80,
                    200,
                    22
                  ],
                  "text": "read \"7 Clap.aiff\""
                }
              },
              {
                "box": {
                  "id": "s6",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "float",
                    "bang"
                  ],
                  "patching_rect": [
                    350,
                    110,
                    170,
                    22
                  ],
                  "text": "buffer~ night_rhythm"
                }
              },
              {
                "box": {
                  "id": "s7",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "patching_rect": [
                    100,
                    160,
                    76,
                    22
                  ],
                  "text": "loadbang"
                }
              },
              {
                "box": {
                  "id": "s8",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    100,
                    190,
                    30,
                    22
                  ],
                  "text": "1"
                }
              },
              {
                "box": {
                  "id": "s9",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    100,
                    220,
                    48,
                    22
                  ],
                  "text": "sig~"
                }
              },
              {
                "box": {
                  "id": "s10",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "signal"
                  ],
                  "patching_rect": [
                    100,
                    250,
                    210,
                    22
                  ],
                  "text": "groove~ day_rhythm @loop 1"
                }
              },
              {
                "box": {
                  "id": "s11",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "patching_rect": [
                    350,
                    160,
                    76,
                    22
                  ],
                  "text": "loadbang"
                }
              },
              {
                "box": {
                  "id": "s12",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    350,
                    190,
                    30,
                    22
                  ],
                  "text": "1"
                }
              },
              {
                "box": {
                  "id": "s13",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    350,
                    220,
                    48,
                    22
                  ],
                  "text": "sig~"
                }
              },
              {
                "box": {
                  "id": "s14",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "signal"
                  ],
                  "patching_rect": [
                    350,
                    250,
                    224,
                    22
                  ],
                  "text": "groove~ night_rhythm @loop 1"
                }
              },
              {
                "box": {
                  "id": "s15",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    30,
                    300,
                    110,
                    22
                  ],
                  "text": "r rhythm_vol"
                }
              },
              {
                "box": {
                  "id": "s16",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    150,
                    300,
                    130,
                    22
                  ],
                  "text": "r rhythm_active"
                }
              },
              {
                "box": {
                  "id": "s17",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    270,
                    300,
                    90,
                    22
                  ],
                  "text": "r time_val"
                }
              },
              {
                "box": {
                  "id": "s18",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    30,
                    340,
                    209,
                    22
                  ],
                  "text": "expr $f1 * $f2 * ($f3 < 50.)"
                }
              },
              {
                "box": {
                  "id": "s19",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    30,
                    380,
                    104,
                    22
                  ],
                  "text": "pack 0. 5000"
                }
              },
              {
                "box": {
                  "id": "s20",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "bang"
                  ],
                  "patching_rect": [
                    30,
                    410,
                    97,
                    22
                  ],
                  "text": "line~ 0. 50"
                }
              },
              {
                "box": {
                  "id": "s21",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    100,
                    450,
                    34,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "s22",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400,
                    300,
                    110,
                    22
                  ],
                  "text": "r rhythm_vol"
                }
              },
              {
                "box": {
                  "id": "s23",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    520,
                    300,
                    130,
                    22
                  ],
                  "text": "r rhythm_active"
                }
              },
              {
                "box": {
                  "id": "s24",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    660,
                    300,
                    90,
                    22
                  ],
                  "text": "r time_val"
                }
              },
              {
                "box": {
                  "id": "s25",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400,
                    340,
                    272,
                    22
                  ],
                  "text": "expr $f1 * $f2 * ($f3 > 50.) * 0.72"
                }
              },
              {
                "box": {
                  "id": "s26",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400,
                    380,
                    104,
                    22
                  ],
                  "text": "pack 0. 5000"
                }
              },
              {
                "box": {
                  "id": "s27",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "bang"
                  ],
                  "patching_rect": [
                    400,
                    410,
                    97,
                    22
                  ],
                  "text": "line~ 0. 50"
                }
              },
              {
                "box": {
                  "id": "s28",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    350,
                    450,
                    34,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "s29",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    200,
                    500,
                    34,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "s30",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400,
                    500,
                    110,
                    22
                  ],
                  "text": "r rhythm_pan"
                }
              },
              {
                "box": {
                  "id": "s31",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    400,
                    530,
                    48,
                    22
                  ],
                  "text": "sig~"
                }
              },
              {
                "box": {
                  "id": "s32",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "signal"
                  ],
                  "patching_rect": [
                    200,
                    560,
                    55,
                    22
                  ],
                  "text": "pan2S"
                }
              },
              {
                "box": {
                  "id": "s33",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    150,
                    600,
                    118,
                    22
                  ],
                  "text": "send~ master_L"
                }
              },
              {
                "box": {
                  "id": "s34",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    300,
                    600,
                    118,
                    22
                  ],
                  "text": "send~ master_R"
                }
              },
              {
                "box": {
                  "id": "sync_r",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    600,
                    10,
                    80,
                    22
                  ],
                  "text": "r sync_all"
                }
              },
              {
                "box": {
                  "id": "sync_m",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    600,
                    38,
                    28,
                    22
                  ],
                  "text": "0."
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "source": [
                    "s1",
                    0
                  ],
                  "destination": [
                    "s2",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s2",
                    0
                  ],
                  "destination": [
                    "s3",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s4",
                    0
                  ],
                  "destination": [
                    "s5",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s5",
                    0
                  ],
                  "destination": [
                    "s6",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s7",
                    0
                  ],
                  "destination": [
                    "s8",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s8",
                    0
                  ],
                  "destination": [
                    "s9",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s9",
                    0
                  ],
                  "destination": [
                    "s10",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s10",
                    0
                  ],
                  "destination": [
                    "s21",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s11",
                    0
                  ],
                  "destination": [
                    "s12",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s12",
                    0
                  ],
                  "destination": [
                    "s13",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s13",
                    0
                  ],
                  "destination": [
                    "s14",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s14",
                    0
                  ],
                  "destination": [
                    "s28",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s15",
                    0
                  ],
                  "destination": [
                    "s18",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s16",
                    0
                  ],
                  "destination": [
                    "s18",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s17",
                    0
                  ],
                  "destination": [
                    "s18",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s18",
                    0
                  ],
                  "destination": [
                    "s19",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s19",
                    0
                  ],
                  "destination": [
                    "s20",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s20",
                    0
                  ],
                  "destination": [
                    "s21",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s21",
                    0
                  ],
                  "destination": [
                    "s29",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s22",
                    0
                  ],
                  "destination": [
                    "s25",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s23",
                    0
                  ],
                  "destination": [
                    "s25",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s24",
                    0
                  ],
                  "destination": [
                    "s25",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s25",
                    0
                  ],
                  "destination": [
                    "s26",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s26",
                    0
                  ],
                  "destination": [
                    "s27",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s27",
                    0
                  ],
                  "destination": [
                    "s28",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s28",
                    0
                  ],
                  "destination": [
                    "s29",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s29",
                    0
                  ],
                  "destination": [
                    "s32",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s30",
                    0
                  ],
                  "destination": [
                    "s31",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s31",
                    0
                  ],
                  "destination": [
                    "s32",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s32",
                    0
                  ],
                  "destination": [
                    "s33",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s32",
                    1
                  ],
                  "destination": [
                    "s34",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "sync_r",
                    0
                  ],
                  "destination": [
                    "sync_m",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "sync_m",
                    0
                  ],
                  "destination": [
                    "s10",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "sync_m",
                    0
                  ],
                  "destination": [
                    "s14",
                    0
                  ]
                }
              }
            ]
          }
        }
      },
      {
        "box": {
          "id": "p_pad",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 0,
          "patching_rect": [
            800,
            350,
            120,
            22
          ],
          "text": "p layer_pad",
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
            "rect": [
              99,
              100,
              750,
              680
            ],
            "boxes": [
              {
                "box": {
                  "id": "s1",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "patching_rect": [
                    100,
                    50,
                    76,
                    22
                  ],
                  "text": "loadbang"
                }
              },
              {
                "box": {
                  "id": "s2",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    100,
                    80,
                    200,
                    22
                  ],
                  "text": "read \"6 Violin.aiff\""
                }
              },
              {
                "box": {
                  "id": "s3",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "float",
                    "bang"
                  ],
                  "patching_rect": [
                    100,
                    110,
                    160,
                    22
                  ],
                  "text": "buffer~ day_pad"
                }
              },
              {
                "box": {
                  "id": "s4",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "patching_rect": [
                    350,
                    50,
                    76,
                    22
                  ],
                  "text": "loadbang"
                }
              },
              {
                "box": {
                  "id": "s5",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    350,
                    80,
                    200,
                    22
                  ],
                  "text": "read \"1 Synth Appregio Low.aiff\""
                }
              },
              {
                "box": {
                  "id": "s6",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "float",
                    "bang"
                  ],
                  "patching_rect": [
                    350,
                    110,
                    170,
                    22
                  ],
                  "text": "buffer~ night_pad"
                }
              },
              {
                "box": {
                  "id": "s7",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "patching_rect": [
                    100,
                    160,
                    76,
                    22
                  ],
                  "text": "loadbang"
                }
              },
              {
                "box": {
                  "id": "s8",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    100,
                    190,
                    30,
                    22
                  ],
                  "text": "1"
                }
              },
              {
                "box": {
                  "id": "s9",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    100,
                    220,
                    48,
                    22
                  ],
                  "text": "sig~"
                }
              },
              {
                "box": {
                  "id": "s10",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "signal"
                  ],
                  "patching_rect": [
                    100,
                    250,
                    210,
                    22
                  ],
                  "text": "groove~ day_pad @loop 1"
                }
              },
              {
                "box": {
                  "id": "s11",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "patching_rect": [
                    350,
                    160,
                    76,
                    22
                  ],
                  "text": "loadbang"
                }
              },
              {
                "box": {
                  "id": "s12",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    350,
                    190,
                    30,
                    22
                  ],
                  "text": "1"
                }
              },
              {
                "box": {
                  "id": "s13",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    350,
                    220,
                    48,
                    22
                  ],
                  "text": "sig~"
                }
              },
              {
                "box": {
                  "id": "s14",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "signal"
                  ],
                  "patching_rect": [
                    350,
                    250,
                    224,
                    22
                  ],
                  "text": "groove~ night_pad @loop 1"
                }
              },
              {
                "box": {
                  "id": "s15",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    30,
                    300,
                    110,
                    22
                  ],
                  "text": "r pad_vol"
                }
              },
              {
                "box": {
                  "id": "s16",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    150,
                    300,
                    130,
                    22
                  ],
                  "text": "r pad_active"
                }
              },
              {
                "box": {
                  "id": "s17",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    270,
                    300,
                    90,
                    22
                  ],
                  "text": "r time_val"
                }
              },
              {
                "box": {
                  "id": "s18",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    30,
                    340,
                    209,
                    22
                  ],
                  "text": "expr $f1 * $f2 * ($f3 < 50.)"
                }
              },
              {
                "box": {
                  "id": "s19",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    30,
                    380,
                    104,
                    22
                  ],
                  "text": "pack 0. 5000"
                }
              },
              {
                "box": {
                  "id": "s20",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "bang"
                  ],
                  "patching_rect": [
                    30,
                    410,
                    97,
                    22
                  ],
                  "text": "line~ 0. 50"
                }
              },
              {
                "box": {
                  "id": "s21",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    100,
                    450,
                    34,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "s22",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400,
                    300,
                    110,
                    22
                  ],
                  "text": "r pad_vol"
                }
              },
              {
                "box": {
                  "id": "s23",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    520,
                    300,
                    130,
                    22
                  ],
                  "text": "r pad_active"
                }
              },
              {
                "box": {
                  "id": "s24",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    660,
                    300,
                    90,
                    22
                  ],
                  "text": "r time_val"
                }
              },
              {
                "box": {
                  "id": "s25",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400,
                    340,
                    272,
                    22
                  ],
                  "text": "expr $f1 * $f2 * ($f3 > 50.) * 0.72"
                }
              },
              {
                "box": {
                  "id": "s26",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400,
                    380,
                    104,
                    22
                  ],
                  "text": "pack 0. 5000"
                }
              },
              {
                "box": {
                  "id": "s27",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "bang"
                  ],
                  "patching_rect": [
                    400,
                    410,
                    97,
                    22
                  ],
                  "text": "line~ 0. 50"
                }
              },
              {
                "box": {
                  "id": "s28",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    350,
                    450,
                    34,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "s29",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    200,
                    500,
                    34,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "s30",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400,
                    500,
                    110,
                    22
                  ],
                  "text": "r pad_pan"
                }
              },
              {
                "box": {
                  "id": "s31",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    400,
                    530,
                    48,
                    22
                  ],
                  "text": "sig~"
                }
              },
              {
                "box": {
                  "id": "s32",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "signal"
                  ],
                  "patching_rect": [
                    200,
                    560,
                    55,
                    22
                  ],
                  "text": "pan2S"
                }
              },
              {
                "box": {
                  "id": "s33",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    150,
                    600,
                    118,
                    22
                  ],
                  "text": "send~ master_L"
                }
              },
              {
                "box": {
                  "id": "s34",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    300,
                    600,
                    118,
                    22
                  ],
                  "text": "send~ master_R"
                }
              },
              {
                "box": {
                  "id": "sync_r",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    600,
                    10,
                    80,
                    22
                  ],
                  "text": "r sync_all"
                }
              },
              {
                "box": {
                  "id": "sync_m",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    600,
                    38,
                    28,
                    22
                  ],
                  "text": "0."
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "source": [
                    "s1",
                    0
                  ],
                  "destination": [
                    "s2",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s2",
                    0
                  ],
                  "destination": [
                    "s3",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s4",
                    0
                  ],
                  "destination": [
                    "s5",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s5",
                    0
                  ],
                  "destination": [
                    "s6",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s7",
                    0
                  ],
                  "destination": [
                    "s8",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s8",
                    0
                  ],
                  "destination": [
                    "s9",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s9",
                    0
                  ],
                  "destination": [
                    "s10",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s10",
                    0
                  ],
                  "destination": [
                    "s21",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s11",
                    0
                  ],
                  "destination": [
                    "s12",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s12",
                    0
                  ],
                  "destination": [
                    "s13",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s13",
                    0
                  ],
                  "destination": [
                    "s14",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s14",
                    0
                  ],
                  "destination": [
                    "s28",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s15",
                    0
                  ],
                  "destination": [
                    "s18",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s16",
                    0
                  ],
                  "destination": [
                    "s18",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s17",
                    0
                  ],
                  "destination": [
                    "s18",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s18",
                    0
                  ],
                  "destination": [
                    "s19",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s19",
                    0
                  ],
                  "destination": [
                    "s20",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s20",
                    0
                  ],
                  "destination": [
                    "s21",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s21",
                    0
                  ],
                  "destination": [
                    "s29",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s22",
                    0
                  ],
                  "destination": [
                    "s25",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s23",
                    0
                  ],
                  "destination": [
                    "s25",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s24",
                    0
                  ],
                  "destination": [
                    "s25",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s25",
                    0
                  ],
                  "destination": [
                    "s26",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s26",
                    0
                  ],
                  "destination": [
                    "s27",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s27",
                    0
                  ],
                  "destination": [
                    "s28",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s28",
                    0
                  ],
                  "destination": [
                    "s29",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s29",
                    0
                  ],
                  "destination": [
                    "s32",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s30",
                    0
                  ],
                  "destination": [
                    "s31",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s31",
                    0
                  ],
                  "destination": [
                    "s32",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s32",
                    0
                  ],
                  "destination": [
                    "s33",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s32",
                    1
                  ],
                  "destination": [
                    "s34",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "sync_r",
                    0
                  ],
                  "destination": [
                    "sync_m",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "sync_m",
                    0
                  ],
                  "destination": [
                    "s10",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "sync_m",
                    0
                  ],
                  "destination": [
                    "s14",
                    0
                  ]
                }
              }
            ]
          }
        }
      },
      {
        "box": {
          "id": "p_texture",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 0,
          "patching_rect": [
            950,
            350,
            120,
            22
          ],
          "text": "p layer_texture",
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
            "rect": [
              99,
              100,
              750,
              680
            ],
            "boxes": [
              {
                "box": {
                  "id": "s1",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "patching_rect": [
                    100,
                    50,
                    76,
                    22
                  ],
                  "text": "loadbang"
                }
              },
              {
                "box": {
                  "id": "s2",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    100,
                    80,
                    200,
                    22
                  ],
                  "text": "read \"4 Sparkle.aiff\""
                }
              },
              {
                "box": {
                  "id": "s3",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "float",
                    "bang"
                  ],
                  "patching_rect": [
                    100,
                    110,
                    160,
                    22
                  ],
                  "text": "buffer~ day_texture"
                }
              },
              {
                "box": {
                  "id": "s4",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "patching_rect": [
                    350,
                    50,
                    76,
                    22
                  ],
                  "text": "loadbang"
                }
              },
              {
                "box": {
                  "id": "s5",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    350,
                    80,
                    200,
                    22
                  ],
                  "text": "read \"9 Violin.aiff\""
                }
              },
              {
                "box": {
                  "id": "s6",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "float",
                    "bang"
                  ],
                  "patching_rect": [
                    350,
                    110,
                    170,
                    22
                  ],
                  "text": "buffer~ night_texture"
                }
              },
              {
                "box": {
                  "id": "s7",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "patching_rect": [
                    100,
                    160,
                    76,
                    22
                  ],
                  "text": "loadbang"
                }
              },
              {
                "box": {
                  "id": "s8",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    100,
                    190,
                    30,
                    22
                  ],
                  "text": "1"
                }
              },
              {
                "box": {
                  "id": "s9",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    100,
                    220,
                    48,
                    22
                  ],
                  "text": "sig~"
                }
              },
              {
                "box": {
                  "id": "s10",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "signal"
                  ],
                  "patching_rect": [
                    100,
                    250,
                    210,
                    22
                  ],
                  "text": "groove~ day_texture @loop 1"
                }
              },
              {
                "box": {
                  "id": "s11",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "patching_rect": [
                    350,
                    160,
                    76,
                    22
                  ],
                  "text": "loadbang"
                }
              },
              {
                "box": {
                  "id": "s12",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    350,
                    190,
                    30,
                    22
                  ],
                  "text": "1"
                }
              },
              {
                "box": {
                  "id": "s13",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    350,
                    220,
                    48,
                    22
                  ],
                  "text": "sig~"
                }
              },
              {
                "box": {
                  "id": "s14",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "signal"
                  ],
                  "patching_rect": [
                    350,
                    250,
                    224,
                    22
                  ],
                  "text": "groove~ night_texture @loop 1"
                }
              },
              {
                "box": {
                  "id": "s15",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    30,
                    300,
                    110,
                    22
                  ],
                  "text": "r texture_vol"
                }
              },
              {
                "box": {
                  "id": "s16",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    150,
                    300,
                    130,
                    22
                  ],
                  "text": "r texture_active"
                }
              },
              {
                "box": {
                  "id": "s17",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    270,
                    300,
                    90,
                    22
                  ],
                  "text": "r time_val"
                }
              },
              {
                "box": {
                  "id": "s18",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    30,
                    340,
                    209,
                    22
                  ],
                  "text": "expr $f1 * $f2 * ($f3 < 50.)"
                }
              },
              {
                "box": {
                  "id": "s19",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    30,
                    380,
                    104,
                    22
                  ],
                  "text": "pack 0. 5000"
                }
              },
              {
                "box": {
                  "id": "s20",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "bang"
                  ],
                  "patching_rect": [
                    30,
                    410,
                    97,
                    22
                  ],
                  "text": "line~ 0. 50"
                }
              },
              {
                "box": {
                  "id": "s21",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    100,
                    450,
                    34,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "s22",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400,
                    300,
                    110,
                    22
                  ],
                  "text": "r texture_vol"
                }
              },
              {
                "box": {
                  "id": "s23",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    520,
                    300,
                    130,
                    22
                  ],
                  "text": "r texture_active"
                }
              },
              {
                "box": {
                  "id": "s24",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    660,
                    300,
                    90,
                    22
                  ],
                  "text": "r time_val"
                }
              },
              {
                "box": {
                  "id": "s25",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400,
                    340,
                    272,
                    22
                  ],
                  "text": "expr $f1 * $f2 * ($f3 > 50.) * 0.72"
                }
              },
              {
                "box": {
                  "id": "s26",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400,
                    380,
                    104,
                    22
                  ],
                  "text": "pack 0. 5000"
                }
              },
              {
                "box": {
                  "id": "s27",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "bang"
                  ],
                  "patching_rect": [
                    400,
                    410,
                    97,
                    22
                  ],
                  "text": "line~ 0. 50"
                }
              },
              {
                "box": {
                  "id": "s28",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    350,
                    450,
                    34,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "s29",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    200,
                    500,
                    34,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "s30",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400,
                    500,
                    110,
                    22
                  ],
                  "text": "r texture_pan"
                }
              },
              {
                "box": {
                  "id": "s31",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    400,
                    530,
                    48,
                    22
                  ],
                  "text": "sig~"
                }
              },
              {
                "box": {
                  "id": "s32",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "signal"
                  ],
                  "patching_rect": [
                    200,
                    560,
                    55,
                    22
                  ],
                  "text": "pan2S"
                }
              },
              {
                "box": {
                  "id": "s33",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    150,
                    600,
                    118,
                    22
                  ],
                  "text": "send~ master_L"
                }
              },
              {
                "box": {
                  "id": "s34",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    300,
                    600,
                    118,
                    22
                  ],
                  "text": "send~ master_R"
                }
              },
              {
                "box": {
                  "id": "sync_r",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    600,
                    10,
                    80,
                    22
                  ],
                  "text": "r sync_all"
                }
              },
              {
                "box": {
                  "id": "sync_m",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    600,
                    38,
                    28,
                    22
                  ],
                  "text": "0."
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "source": [
                    "s1",
                    0
                  ],
                  "destination": [
                    "s2",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s2",
                    0
                  ],
                  "destination": [
                    "s3",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s4",
                    0
                  ],
                  "destination": [
                    "s5",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s5",
                    0
                  ],
                  "destination": [
                    "s6",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s7",
                    0
                  ],
                  "destination": [
                    "s8",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s8",
                    0
                  ],
                  "destination": [
                    "s9",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s9",
                    0
                  ],
                  "destination": [
                    "s10",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s10",
                    0
                  ],
                  "destination": [
                    "s21",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s11",
                    0
                  ],
                  "destination": [
                    "s12",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s12",
                    0
                  ],
                  "destination": [
                    "s13",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s13",
                    0
                  ],
                  "destination": [
                    "s14",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s14",
                    0
                  ],
                  "destination": [
                    "s28",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s15",
                    0
                  ],
                  "destination": [
                    "s18",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s16",
                    0
                  ],
                  "destination": [
                    "s18",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s17",
                    0
                  ],
                  "destination": [
                    "s18",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s18",
                    0
                  ],
                  "destination": [
                    "s19",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s19",
                    0
                  ],
                  "destination": [
                    "s20",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s20",
                    0
                  ],
                  "destination": [
                    "s21",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s21",
                    0
                  ],
                  "destination": [
                    "s29",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s22",
                    0
                  ],
                  "destination": [
                    "s25",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s23",
                    0
                  ],
                  "destination": [
                    "s25",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s24",
                    0
                  ],
                  "destination": [
                    "s25",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s25",
                    0
                  ],
                  "destination": [
                    "s26",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s26",
                    0
                  ],
                  "destination": [
                    "s27",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s27",
                    0
                  ],
                  "destination": [
                    "s28",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s28",
                    0
                  ],
                  "destination": [
                    "s29",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s29",
                    0
                  ],
                  "destination": [
                    "s32",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s30",
                    0
                  ],
                  "destination": [
                    "s31",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s31",
                    0
                  ],
                  "destination": [
                    "s32",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s32",
                    0
                  ],
                  "destination": [
                    "s33",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s32",
                    1
                  ],
                  "destination": [
                    "s34",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "sync_r",
                    0
                  ],
                  "destination": [
                    "sync_m",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "sync_m",
                    0
                  ],
                  "destination": [
                    "s10",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "sync_m",
                    0
                  ],
                  "destination": [
                    "s14",
                    0
                  ]
                }
              }
            ]
          }
        }
      },
      {
        "box": {
          "id": "p_arp",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 0,
          "patching_rect": [
            1100,
            350,
            120,
            22
          ],
          "text": "p layer_arp",
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
            "rect": [
              99,
              100,
              750,
              680
            ],
            "boxes": [
              {
                "box": {
                  "id": "s1",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "patching_rect": [
                    100,
                    50,
                    76,
                    22
                  ],
                  "text": "loadbang"
                }
              },
              {
                "box": {
                  "id": "s2",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    100,
                    80,
                    200,
                    22
                  ],
                  "text": "read \"5 Piano Appregio.aiff\""
                }
              },
              {
                "box": {
                  "id": "s3",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "float",
                    "bang"
                  ],
                  "patching_rect": [
                    100,
                    110,
                    160,
                    22
                  ],
                  "text": "buffer~ day_arp"
                }
              },
              {
                "box": {
                  "id": "s4",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "patching_rect": [
                    350,
                    50,
                    76,
                    22
                  ],
                  "text": "loadbang"
                }
              },
              {
                "box": {
                  "id": "s5",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    350,
                    80,
                    200,
                    22
                  ],
                  "text": "read \"8 Synth Rhythm.aiff\""
                }
              },
              {
                "box": {
                  "id": "s6",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "float",
                    "bang"
                  ],
                  "patching_rect": [
                    350,
                    110,
                    170,
                    22
                  ],
                  "text": "buffer~ night_arp"
                }
              },
              {
                "box": {
                  "id": "s7",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "patching_rect": [
                    100,
                    160,
                    76,
                    22
                  ],
                  "text": "loadbang"
                }
              },
              {
                "box": {
                  "id": "s8",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    100,
                    190,
                    30,
                    22
                  ],
                  "text": "1"
                }
              },
              {
                "box": {
                  "id": "s9",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    100,
                    220,
                    48,
                    22
                  ],
                  "text": "sig~"
                }
              },
              {
                "box": {
                  "id": "s10",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "signal"
                  ],
                  "patching_rect": [
                    100,
                    250,
                    210,
                    22
                  ],
                  "text": "groove~ day_arp @loop 1"
                }
              },
              {
                "box": {
                  "id": "s11",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "patching_rect": [
                    350,
                    160,
                    76,
                    22
                  ],
                  "text": "loadbang"
                }
              },
              {
                "box": {
                  "id": "s12",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    350,
                    190,
                    30,
                    22
                  ],
                  "text": "1"
                }
              },
              {
                "box": {
                  "id": "s13",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    350,
                    220,
                    48,
                    22
                  ],
                  "text": "sig~"
                }
              },
              {
                "box": {
                  "id": "s14",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "signal"
                  ],
                  "patching_rect": [
                    350,
                    250,
                    224,
                    22
                  ],
                  "text": "groove~ night_arp @loop 1"
                }
              },
              {
                "box": {
                  "id": "s15",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    30,
                    300,
                    110,
                    22
                  ],
                  "text": "r arp_vol"
                }
              },
              {
                "box": {
                  "id": "s16",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    150,
                    300,
                    130,
                    22
                  ],
                  "text": "r arp_active"
                }
              },
              {
                "box": {
                  "id": "s17",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    270,
                    300,
                    90,
                    22
                  ],
                  "text": "r time_val"
                }
              },
              {
                "box": {
                  "id": "s18",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    30,
                    340,
                    209,
                    22
                  ],
                  "text": "expr $f1 * $f2 * ($f3 < 50.)"
                }
              },
              {
                "box": {
                  "id": "s19",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    30,
                    380,
                    104,
                    22
                  ],
                  "text": "pack 0. 5000"
                }
              },
              {
                "box": {
                  "id": "s20",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "bang"
                  ],
                  "patching_rect": [
                    30,
                    410,
                    97,
                    22
                  ],
                  "text": "line~ 0. 50"
                }
              },
              {
                "box": {
                  "id": "s21",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    100,
                    450,
                    34,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "s22",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400,
                    300,
                    110,
                    22
                  ],
                  "text": "r arp_vol"
                }
              },
              {
                "box": {
                  "id": "s23",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    520,
                    300,
                    130,
                    22
                  ],
                  "text": "r arp_active"
                }
              },
              {
                "box": {
                  "id": "s24",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    660,
                    300,
                    90,
                    22
                  ],
                  "text": "r time_val"
                }
              },
              {
                "box": {
                  "id": "s25",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400,
                    340,
                    272,
                    22
                  ],
                  "text": "expr $f1 * $f2 * ($f3 > 50.) * 0.72"
                }
              },
              {
                "box": {
                  "id": "s26",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400,
                    380,
                    104,
                    22
                  ],
                  "text": "pack 0. 5000"
                }
              },
              {
                "box": {
                  "id": "s27",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "bang"
                  ],
                  "patching_rect": [
                    400,
                    410,
                    97,
                    22
                  ],
                  "text": "line~ 0. 50"
                }
              },
              {
                "box": {
                  "id": "s28",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    350,
                    450,
                    34,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "s29",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    200,
                    500,
                    34,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "s30",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400,
                    500,
                    110,
                    22
                  ],
                  "text": "r arp_pan"
                }
              },
              {
                "box": {
                  "id": "s31",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    400,
                    530,
                    48,
                    22
                  ],
                  "text": "sig~"
                }
              },
              {
                "box": {
                  "id": "s32",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "signal"
                  ],
                  "patching_rect": [
                    200,
                    560,
                    55,
                    22
                  ],
                  "text": "pan2S"
                }
              },
              {
                "box": {
                  "id": "s33",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    150,
                    600,
                    118,
                    22
                  ],
                  "text": "send~ master_L"
                }
              },
              {
                "box": {
                  "id": "s34",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    300,
                    600,
                    118,
                    22
                  ],
                  "text": "send~ master_R"
                }
              },
              {
                "box": {
                  "id": "sync_r",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    600,
                    10,
                    80,
                    22
                  ],
                  "text": "r sync_all"
                }
              },
              {
                "box": {
                  "id": "sync_m",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    600,
                    38,
                    28,
                    22
                  ],
                  "text": "0."
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "source": [
                    "s1",
                    0
                  ],
                  "destination": [
                    "s2",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s2",
                    0
                  ],
                  "destination": [
                    "s3",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s4",
                    0
                  ],
                  "destination": [
                    "s5",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s5",
                    0
                  ],
                  "destination": [
                    "s6",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s7",
                    0
                  ],
                  "destination": [
                    "s8",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s8",
                    0
                  ],
                  "destination": [
                    "s9",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s9",
                    0
                  ],
                  "destination": [
                    "s10",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s10",
                    0
                  ],
                  "destination": [
                    "s21",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s11",
                    0
                  ],
                  "destination": [
                    "s12",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s12",
                    0
                  ],
                  "destination": [
                    "s13",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s13",
                    0
                  ],
                  "destination": [
                    "s14",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s14",
                    0
                  ],
                  "destination": [
                    "s28",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s15",
                    0
                  ],
                  "destination": [
                    "s18",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s16",
                    0
                  ],
                  "destination": [
                    "s18",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s17",
                    0
                  ],
                  "destination": [
                    "s18",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s18",
                    0
                  ],
                  "destination": [
                    "s19",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s19",
                    0
                  ],
                  "destination": [
                    "s20",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s20",
                    0
                  ],
                  "destination": [
                    "s21",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s21",
                    0
                  ],
                  "destination": [
                    "s29",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s22",
                    0
                  ],
                  "destination": [
                    "s25",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s23",
                    0
                  ],
                  "destination": [
                    "s25",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s24",
                    0
                  ],
                  "destination": [
                    "s25",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s25",
                    0
                  ],
                  "destination": [
                    "s26",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s26",
                    0
                  ],
                  "destination": [
                    "s27",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s27",
                    0
                  ],
                  "destination": [
                    "s28",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s28",
                    0
                  ],
                  "destination": [
                    "s29",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s29",
                    0
                  ],
                  "destination": [
                    "s32",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s30",
                    0
                  ],
                  "destination": [
                    "s31",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s31",
                    0
                  ],
                  "destination": [
                    "s32",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s32",
                    0
                  ],
                  "destination": [
                    "s33",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s32",
                    1
                  ],
                  "destination": [
                    "s34",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "sync_r",
                    0
                  ],
                  "destination": [
                    "sync_m",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "sync_m",
                    0
                  ],
                  "destination": [
                    "s10",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "sync_m",
                    0
                  ],
                  "destination": [
                    "s14",
                    0
                  ]
                }
              }
            ]
          }
        }
      },
      {
        "box": {
          "id": "p_sparkle",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 0,
          "patching_rect": [
            1250,
            350,
            120,
            22
          ],
          "text": "p layer_sparkle",
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
            "rect": [
              99,
              100,
              750,
              680
            ],
            "boxes": [
              {
                "box": {
                  "id": "s1",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "patching_rect": [
                    100,
                    50,
                    76,
                    22
                  ],
                  "text": "loadbang"
                }
              },
              {
                "box": {
                  "id": "s2",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    100,
                    80,
                    200,
                    22
                  ],
                  "text": "read \"4 Sparkle.aiff\""
                }
              },
              {
                "box": {
                  "id": "s3",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "float",
                    "bang"
                  ],
                  "patching_rect": [
                    100,
                    110,
                    160,
                    22
                  ],
                  "text": "buffer~ day_sparkle"
                }
              },
              {
                "box": {
                  "id": "s4",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "patching_rect": [
                    350,
                    50,
                    76,
                    22
                  ],
                  "text": "loadbang"
                }
              },
              {
                "box": {
                  "id": "s5",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    350,
                    80,
                    200,
                    22
                  ],
                  "text": "read \"3 Synth Sparkle.aiff\""
                }
              },
              {
                "box": {
                  "id": "s6",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "float",
                    "bang"
                  ],
                  "patching_rect": [
                    350,
                    110,
                    170,
                    22
                  ],
                  "text": "buffer~ night_sparkle"
                }
              },
              {
                "box": {
                  "id": "s7",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "patching_rect": [
                    100,
                    160,
                    76,
                    22
                  ],
                  "text": "loadbang"
                }
              },
              {
                "box": {
                  "id": "s8",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    100,
                    190,
                    30,
                    22
                  ],
                  "text": "1"
                }
              },
              {
                "box": {
                  "id": "s9",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    100,
                    220,
                    48,
                    22
                  ],
                  "text": "sig~"
                }
              },
              {
                "box": {
                  "id": "s10",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "signal"
                  ],
                  "patching_rect": [
                    100,
                    250,
                    210,
                    22
                  ],
                  "text": "groove~ day_sparkle @loop 1"
                }
              },
              {
                "box": {
                  "id": "s11",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "patching_rect": [
                    350,
                    160,
                    76,
                    22
                  ],
                  "text": "loadbang"
                }
              },
              {
                "box": {
                  "id": "s12",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    350,
                    190,
                    30,
                    22
                  ],
                  "text": "1"
                }
              },
              {
                "box": {
                  "id": "s13",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    350,
                    220,
                    48,
                    22
                  ],
                  "text": "sig~"
                }
              },
              {
                "box": {
                  "id": "s14",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "signal"
                  ],
                  "patching_rect": [
                    350,
                    250,
                    224,
                    22
                  ],
                  "text": "groove~ night_sparkle @loop 1"
                }
              },
              {
                "box": {
                  "id": "s15",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    30,
                    300,
                    110,
                    22
                  ],
                  "text": "r sparkle_vol"
                }
              },
              {
                "box": {
                  "id": "s16",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    150,
                    300,
                    130,
                    22
                  ],
                  "text": "r sparkle_active"
                }
              },
              {
                "box": {
                  "id": "s17",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    270,
                    300,
                    90,
                    22
                  ],
                  "text": "r time_val"
                }
              },
              {
                "box": {
                  "id": "s18",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    30,
                    340,
                    209,
                    22
                  ],
                  "text": "expr $f1 * $f2 * ($f3 < 50.)"
                }
              },
              {
                "box": {
                  "id": "s19",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    30,
                    380,
                    104,
                    22
                  ],
                  "text": "pack 0. 5000"
                }
              },
              {
                "box": {
                  "id": "s20",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "bang"
                  ],
                  "patching_rect": [
                    30,
                    410,
                    97,
                    22
                  ],
                  "text": "line~ 0. 50"
                }
              },
              {
                "box": {
                  "id": "s21",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    100,
                    450,
                    34,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "s22",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400,
                    300,
                    110,
                    22
                  ],
                  "text": "r sparkle_vol"
                }
              },
              {
                "box": {
                  "id": "s23",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    520,
                    300,
                    130,
                    22
                  ],
                  "text": "r sparkle_active"
                }
              },
              {
                "box": {
                  "id": "s24",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    660,
                    300,
                    90,
                    22
                  ],
                  "text": "r time_val"
                }
              },
              {
                "box": {
                  "id": "s25",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400,
                    340,
                    272,
                    22
                  ],
                  "text": "expr $f1 * $f2 * ($f3 > 50.) * 0.72"
                }
              },
              {
                "box": {
                  "id": "s26",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400,
                    380,
                    104,
                    22
                  ],
                  "text": "pack 0. 5000"
                }
              },
              {
                "box": {
                  "id": "s27",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "bang"
                  ],
                  "patching_rect": [
                    400,
                    410,
                    97,
                    22
                  ],
                  "text": "line~ 0. 50"
                }
              },
              {
                "box": {
                  "id": "s28",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    350,
                    450,
                    34,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "s29",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    200,
                    500,
                    34,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "s30",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400,
                    500,
                    110,
                    22
                  ],
                  "text": "r sparkle_pan"
                }
              },
              {
                "box": {
                  "id": "s31",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    400,
                    530,
                    48,
                    22
                  ],
                  "text": "sig~"
                }
              },
              {
                "box": {
                  "id": "s32",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "signal"
                  ],
                  "patching_rect": [
                    200,
                    560,
                    55,
                    22
                  ],
                  "text": "pan2S"
                }
              },
              {
                "box": {
                  "id": "s33",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    150,
                    600,
                    118,
                    22
                  ],
                  "text": "send~ master_L"
                }
              },
              {
                "box": {
                  "id": "s34",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    300,
                    600,
                    118,
                    22
                  ],
                  "text": "send~ master_R"
                }
              },
              {
                "box": {
                  "id": "sync_r",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    600,
                    10,
                    80,
                    22
                  ],
                  "text": "r sync_all"
                }
              },
              {
                "box": {
                  "id": "sync_m",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    600,
                    38,
                    28,
                    22
                  ],
                  "text": "0."
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "source": [
                    "s1",
                    0
                  ],
                  "destination": [
                    "s2",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s2",
                    0
                  ],
                  "destination": [
                    "s3",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s4",
                    0
                  ],
                  "destination": [
                    "s5",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s5",
                    0
                  ],
                  "destination": [
                    "s6",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s7",
                    0
                  ],
                  "destination": [
                    "s8",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s8",
                    0
                  ],
                  "destination": [
                    "s9",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s9",
                    0
                  ],
                  "destination": [
                    "s10",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s10",
                    0
                  ],
                  "destination": [
                    "s21",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s11",
                    0
                  ],
                  "destination": [
                    "s12",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s12",
                    0
                  ],
                  "destination": [
                    "s13",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s13",
                    0
                  ],
                  "destination": [
                    "s14",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s14",
                    0
                  ],
                  "destination": [
                    "s28",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s15",
                    0
                  ],
                  "destination": [
                    "s18",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s16",
                    0
                  ],
                  "destination": [
                    "s18",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s17",
                    0
                  ],
                  "destination": [
                    "s18",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s18",
                    0
                  ],
                  "destination": [
                    "s19",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s19",
                    0
                  ],
                  "destination": [
                    "s20",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s20",
                    0
                  ],
                  "destination": [
                    "s21",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s21",
                    0
                  ],
                  "destination": [
                    "s29",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s22",
                    0
                  ],
                  "destination": [
                    "s25",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s23",
                    0
                  ],
                  "destination": [
                    "s25",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s24",
                    0
                  ],
                  "destination": [
                    "s25",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s25",
                    0
                  ],
                  "destination": [
                    "s26",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s26",
                    0
                  ],
                  "destination": [
                    "s27",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s27",
                    0
                  ],
                  "destination": [
                    "s28",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s28",
                    0
                  ],
                  "destination": [
                    "s29",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s29",
                    0
                  ],
                  "destination": [
                    "s32",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s30",
                    0
                  ],
                  "destination": [
                    "s31",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s31",
                    0
                  ],
                  "destination": [
                    "s32",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s32",
                    0
                  ],
                  "destination": [
                    "s33",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "s32",
                    1
                  ],
                  "destination": [
                    "s34",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "sync_r",
                    0
                  ],
                  "destination": [
                    "sync_m",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "sync_m",
                    0
                  ],
                  "destination": [
                    "s10",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "sync_m",
                    0
                  ],
                  "destination": [
                    "s14",
                    0
                  ]
                }
              }
            ]
          }
        }
      },
      {
        "box": {
          "id": "rcvL",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            50,
            420,
            122,
            22
          ],
          "text": "receive~ master_L"
        }
      },
      {
        "box": {
          "id": "rcvR",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            300,
            420,
            122,
            22
          ],
          "text": "receive~ master_R"
        }
      },
      {
        "box": {
          "id": "rbl",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            620,
            420,
            64,
            22
          ],
          "text": "r blinds"
        }
      },
      {
        "box": {
          "id": "sbl",
          "maxclass": "newobj",
          "numinlets": 6,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            620,
            448,
            148,
            22
          ],
          "text": "scale 0 100 300 20000"
        }
      },
      {
        "box": {
          "id": "pbl",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            620,
            476,
            50,
            22
          ],
          "text": "$1 150"
        }
      },
      {
        "box": {
          "id": "lineblL",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            50,
            448,
            50,
            22
          ],
          "text": "line"
        }
      },
      {
        "box": {
          "id": "lineblR",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            230,
            448,
            50,
            22
          ],
          "text": "line"
        }
      },
      {
        "box": {
          "id": "blL",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            50,
            476,
            116,
            22
          ],
          "text": "lores~ 20000 0.0"
        }
      },
      {
        "box": {
          "id": "blR",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            230,
            476,
            116,
            22
          ],
          "text": "lores~ 20000 0.0"
        }
      },
      {
        "box": {
          "id": "rwe",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            620,
            510,
            70,
            22
          ],
          "text": "r weather"
        }
      },
      {
        "box": {
          "id": "selwe",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 3,
          "outlettype": [
            "bang",
            "bang",
            ""
          ],
          "patching_rect": [
            620,
            538,
            57,
            22
          ],
          "text": "sel 1 0"
        }
      },
      {
        "box": {
          "id": "mw550",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            610,
            566,
            57,
            22
          ],
          "text": "550"
        }
      },
      {
        "box": {
          "id": "mw20k",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            690,
            566,
            71,
            22
          ],
          "text": "20000"
        }
      },
      {
        "box": {
          "id": "pweL",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            50,
            512,
            100,
            22
          ],
          "text": "pack 0. 1200"
        }
      },
      {
        "box": {
          "id": "pweR",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            230,
            512,
            100,
            22
          ],
          "text": "pack 0. 1200"
        }
      },
      {
        "box": {
          "id": "lweL",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            50,
            527,
            50,
            22
          ],
          "text": "line"
        }
      },
      {
        "box": {
          "id": "lweR",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            230,
            527,
            50,
            22
          ],
          "text": "line"
        }
      },
      {
        "box": {
          "id": "weL",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            50,
            510,
            116,
            22
          ],
          "text": "lores~ 20000 0.0"
        }
      },
      {
        "box": {
          "id": "weR",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            230,
            510,
            116,
            22
          ],
          "text": "lores~ 20000 0.0"
        }
      },
      {
        "box": {
          "id": "rlp",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            620,
            600,
            77,
            22
          ],
          "text": "r lamp_val"
        }
      },
      {
        "box": {
          "id": "slp",
          "maxclass": "newobj",
          "numinlets": 6,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            620,
            628,
            122,
            22
          ],
          "text": "scale 0 100 20000 6000"
        }
      },
      {
        "box": {
          "id": "plpL",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            50,
            494,
            90,
            22
          ],
          "text": "pack 0. 600"
        }
      },
      {
        "box": {
          "id": "plpR",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            230,
            494,
            90,
            22
          ],
          "text": "pack 0. 600"
        }
      },
      {
        "box": {
          "id": "llpL",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            50,
            508,
            50,
            22
          ],
          "text": "line"
        }
      },
      {
        "box": {
          "id": "llpR",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            230,
            508,
            50,
            22
          ],
          "text": "line"
        }
      },
      {
        "box": {
          "id": "wrmL",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            50,
            513,
            120,
            22
          ],
          "text": "lores~ 20000 0.0"
        }
      },
      {
        "box": {
          "id": "wrmR",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            230,
            513,
            120,
            22
          ],
          "text": "lores~ 20000 0.0"
        }
      },
      {
        "box": {
          "id": "rbl2",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            620,
            670,
            64,
            22
          ],
          "text": "r blinds"
        }
      },
      {
        "box": {
          "id": "sbl2",
          "maxclass": "newobj",
          "numinlets": 6,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            620,
            698,
            142,
            22
          ],
          "text": "scale 0 100 0.22 0.78"
        }
      },
      {
        "box": {
          "id": "pblv",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            620,
            726,
            50,
            22
          ],
          "text": "$1 120"
        }
      },
      {
        "box": {
          "id": "linevolL",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": [
            "signal",
            "bang"
          ],
          "patching_rect": [
            200,
            610,
            90,
            22
          ],
          "text": "line~ 0.82 50"
        }
      },
      {
        "box": {
          "id": "linevolR",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": [
            "signal",
            "bang"
          ],
          "patching_rect": [
            440,
            610,
            90,
            22
          ],
          "text": "line~ 0.82 50"
        }
      },
      {
        "box": {
          "id": "mulvL",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            50,
            560,
            40,
            22
          ],
          "text": "*~"
        }
      },
      {
        "box": {
          "id": "mulvR",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            230,
            560,
            40,
            22
          ],
          "text": "*~"
        }
      },
      {
        "box": {
          "id": "volL",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            50,
            610,
            40,
            22
          ],
          "text": "*~"
        }
      },
      {
        "box": {
          "id": "volR",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            230,
            610,
            40,
            22
          ],
          "text": "*~"
        }
      },
      {
        "box": {
          "id": "clipL",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            50,
            650,
            116,
            22
          ],
          "text": "clip~ -0.95 0.95"
        }
      },
      {
        "box": {
          "id": "clipR",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            230,
            650,
            116,
            22
          ],
          "text": "clip~ -0.95 0.95"
        }
      },
      {
        "box": {
          "id": "dac",
          "maxclass": "ezdac~",
          "numinlets": 2,
          "numoutlets": 0,
          "patching_rect": [
            130,
            695,
            45,
            45
          ]
        }
      },
      {
        "box": {
          "id": "stv",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            800,
            420,
            80,
            22
          ],
          "text": "r time_val"
        }
      },
      {
        "box": {
          "id": "schg",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            800,
            448,
            55,
            22
          ],
          "text": "change"
        }
      },
      {
        "box": {
          "id": "szero",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            800,
            476,
            28,
            22
          ],
          "text": "0."
        }
      },
      {
        "box": {
          "id": "ssync",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            800,
            504,
            80,
            22
          ],
          "text": "s sync_all"
        }
      },
      {
        "box": {
          "id": "lb_env",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            50,
            750,
            64,
            22
          ],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "id": "mbl0",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            50,
            778,
            30,
            22
          ],
          "text": "80"
        }
      },
      {
        "box": {
          "id": "sbl0",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50,
            806,
            64,
            22
          ],
          "text": "s blinds"
        }
      },
      {
        "box": {
          "id": "mwe0",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            160,
            778,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "swe0",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            160,
            806,
            70,
            22
          ],
          "text": "s weather"
        }
      },
      {
        "box": {
          "id": "mlp0",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            270,
            778,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "slp0",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            270,
            806,
            77,
            22
          ],
          "text": "s lamp_val"
        }
      },
      {
        "box": {
          "id": "mtv0",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            380,
            778,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "stv0",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            380,
            806,
            77,
            22
          ],
          "text": "s time_val"
        }
      },
      {
        "box": {
          "id": "lb_melody_vol",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            50,
            850,
            64,
            22
          ],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "id": "m_melody_vol",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            50,
            878,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "sd_melody_vol",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50,
            906,
            90,
            22
          ],
          "text": "s melody_vol"
        }
      },
      {
        "box": {
          "id": "lb_melody_active",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            150,
            850,
            64,
            22
          ],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "id": "m_melody_active",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            150,
            878,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "sd_melody_active",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            150,
            906,
            90,
            22
          ],
          "text": "s melody_active"
        }
      },
      {
        "box": {
          "id": "lb_melody_pan",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            250,
            850,
            64,
            22
          ],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "id": "m_melody_pan",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            250,
            878,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "sd_melody_pan",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            250,
            906,
            90,
            22
          ],
          "text": "s melody_pan"
        }
      },
      {
        "box": {
          "id": "lb_melody2_vol",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            350,
            850,
            64,
            22
          ],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "id": "m_melody2_vol",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            350,
            878,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "sd_melody2_vol",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            350,
            906,
            90,
            22
          ],
          "text": "s melody2_vol"
        }
      },
      {
        "box": {
          "id": "lb_melody2_active",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            450,
            850,
            64,
            22
          ],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "id": "m_melody2_active",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            450,
            878,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "sd_melody2_active",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            450,
            906,
            90,
            22
          ],
          "text": "s melody2_active"
        }
      },
      {
        "box": {
          "id": "lb_melody2_pan",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            550,
            850,
            64,
            22
          ],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "id": "m_melody2_pan",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            550,
            878,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "sd_melody2_pan",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            550,
            906,
            90,
            22
          ],
          "text": "s melody2_pan"
        }
      },
      {
        "box": {
          "id": "lb_harmony_vol",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            650,
            850,
            64,
            22
          ],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "id": "m_harmony_vol",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            650,
            878,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "sd_harmony_vol",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            650,
            906,
            90,
            22
          ],
          "text": "s harmony_vol"
        }
      },
      {
        "box": {
          "id": "lb_harmony_active",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            750,
            850,
            64,
            22
          ],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "id": "m_harmony_active",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            750,
            878,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "sd_harmony_active",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            750,
            906,
            90,
            22
          ],
          "text": "s harmony_active"
        }
      },
      {
        "box": {
          "id": "lb_harmony_pan",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            850,
            850,
            64,
            22
          ],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "id": "m_harmony_pan",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            850,
            878,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "sd_harmony_pan",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            850,
            906,
            90,
            22
          ],
          "text": "s harmony_pan"
        }
      },
      {
        "box": {
          "id": "lb_bass_vol",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            950,
            850,
            64,
            22
          ],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "id": "m_bass_vol",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            950,
            878,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "sd_bass_vol",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            950,
            906,
            90,
            22
          ],
          "text": "s bass_vol"
        }
      },
      {
        "box": {
          "id": "lb_bass_active",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            1050,
            850,
            64,
            22
          ],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "id": "m_bass_active",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1050,
            878,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "sd_bass_active",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1050,
            906,
            90,
            22
          ],
          "text": "s bass_active"
        }
      },
      {
        "box": {
          "id": "lb_bass_pan",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            1150,
            850,
            64,
            22
          ],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "id": "m_bass_pan",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1150,
            878,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "sd_bass_pan",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1150,
            906,
            90,
            22
          ],
          "text": "s bass_pan"
        }
      },
      {
        "box": {
          "id": "lb_rhythm_vol",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            1250,
            850,
            64,
            22
          ],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "id": "m_rhythm_vol",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1250,
            878,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "sd_rhythm_vol",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1250,
            906,
            90,
            22
          ],
          "text": "s rhythm_vol"
        }
      },
      {
        "box": {
          "id": "lb_rhythm_active",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            1350,
            850,
            64,
            22
          ],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "id": "m_rhythm_active",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1350,
            878,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "sd_rhythm_active",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1350,
            906,
            90,
            22
          ],
          "text": "s rhythm_active"
        }
      },
      {
        "box": {
          "id": "lb_rhythm_pan",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            1450,
            850,
            64,
            22
          ],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "id": "m_rhythm_pan",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1450,
            878,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "sd_rhythm_pan",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1450,
            906,
            90,
            22
          ],
          "text": "s rhythm_pan"
        }
      },
      {
        "box": {
          "id": "lb_pad_vol",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            1550,
            850,
            64,
            22
          ],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "id": "m_pad_vol",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1550,
            878,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "sd_pad_vol",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1550,
            906,
            90,
            22
          ],
          "text": "s pad_vol"
        }
      },
      {
        "box": {
          "id": "lb_pad_active",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            1650,
            850,
            64,
            22
          ],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "id": "m_pad_active",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1650,
            878,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "sd_pad_active",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1650,
            906,
            90,
            22
          ],
          "text": "s pad_active"
        }
      },
      {
        "box": {
          "id": "lb_pad_pan",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            1750,
            850,
            64,
            22
          ],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "id": "m_pad_pan",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1750,
            878,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "sd_pad_pan",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1750,
            906,
            90,
            22
          ],
          "text": "s pad_pan"
        }
      },
      {
        "box": {
          "id": "lb_texture_vol",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            1850,
            850,
            64,
            22
          ],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "id": "m_texture_vol",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1850,
            878,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "sd_texture_vol",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1850,
            906,
            90,
            22
          ],
          "text": "s texture_vol"
        }
      },
      {
        "box": {
          "id": "lb_texture_active",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            1950,
            850,
            64,
            22
          ],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "id": "m_texture_active",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1950,
            878,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "sd_texture_active",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1950,
            906,
            90,
            22
          ],
          "text": "s texture_active"
        }
      },
      {
        "box": {
          "id": "lb_texture_pan",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            2050,
            850,
            64,
            22
          ],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "id": "m_texture_pan",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            2050,
            878,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "sd_texture_pan",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            2050,
            906,
            90,
            22
          ],
          "text": "s texture_pan"
        }
      },
      {
        "box": {
          "id": "lb_arp_vol",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            2150,
            850,
            64,
            22
          ],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "id": "m_arp_vol",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            2150,
            878,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "sd_arp_vol",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            2150,
            906,
            90,
            22
          ],
          "text": "s arp_vol"
        }
      },
      {
        "box": {
          "id": "lb_arp_active",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            2250,
            850,
            64,
            22
          ],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "id": "m_arp_active",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            2250,
            878,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "sd_arp_active",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            2250,
            906,
            90,
            22
          ],
          "text": "s arp_active"
        }
      },
      {
        "box": {
          "id": "lb_arp_pan",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            2350,
            850,
            64,
            22
          ],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "id": "m_arp_pan",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            2350,
            878,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "sd_arp_pan",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            2350,
            906,
            90,
            22
          ],
          "text": "s arp_pan"
        }
      },
      {
        "box": {
          "id": "lb_sparkle_vol",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            2450,
            850,
            64,
            22
          ],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "id": "m_sparkle_vol",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            2450,
            878,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "sd_sparkle_vol",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            2450,
            906,
            90,
            22
          ],
          "text": "s sparkle_vol"
        }
      },
      {
        "box": {
          "id": "lb_sparkle_active",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            2550,
            850,
            64,
            22
          ],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "id": "m_sparkle_active",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            2550,
            878,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "sd_sparkle_active",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            2550,
            906,
            90,
            22
          ],
          "text": "s sparkle_active"
        }
      },
      {
        "box": {
          "id": "lb_sparkle_pan",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            2650,
            850,
            64,
            22
          ],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "id": "m_sparkle_pan",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            2650,
            878,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "sd_sparkle_pan",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            2650,
            906,
            90,
            22
          ],
          "text": "s sparkle_pan"
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "udp",
            0
          ],
          "destination": [
            "dbgprint",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "udp",
            0
          ],
          "destination": [
            "rt",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "rt",
            0
          ],
          "destination": [
            "slamp",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "rt",
            1
          ],
          "destination": [
            "sblinds",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "rt",
            2
          ],
          "destination": [
            "sweather",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "rt",
            3
          ],
          "destination": [
            "stime",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "rt",
            13
          ],
          "destination": [
            "sspeed",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "rt",
            4
          ],
          "destination": [
            "u_melody",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "u_melody",
            0
          ],
          "destination": [
            "smelody_pan",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "u_melody",
            1
          ],
          "destination": [
            "smelody_vol",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "u_melody",
            2
          ],
          "destination": [
            "smelody_active",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "rt",
            5
          ],
          "destination": [
            "u_melody2",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "u_melody2",
            0
          ],
          "destination": [
            "smelody2_pan",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "u_melody2",
            1
          ],
          "destination": [
            "smelody2_vol",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "u_melody2",
            2
          ],
          "destination": [
            "smelody2_active",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "rt",
            6
          ],
          "destination": [
            "u_harmony",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "u_harmony",
            0
          ],
          "destination": [
            "sharmony_pan",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "u_harmony",
            1
          ],
          "destination": [
            "sharmony_vol",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "u_harmony",
            2
          ],
          "destination": [
            "sharmony_active",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "rt",
            7
          ],
          "destination": [
            "u_bass",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "u_bass",
            0
          ],
          "destination": [
            "sbass_pan",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "u_bass",
            1
          ],
          "destination": [
            "sbass_vol",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "u_bass",
            2
          ],
          "destination": [
            "sbass_active",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "rt",
            8
          ],
          "destination": [
            "u_rhythm",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "u_rhythm",
            0
          ],
          "destination": [
            "srhythm_pan",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "u_rhythm",
            1
          ],
          "destination": [
            "srhythm_vol",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "u_rhythm",
            2
          ],
          "destination": [
            "srhythm_active",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "rt",
            9
          ],
          "destination": [
            "u_pad",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "u_pad",
            0
          ],
          "destination": [
            "spad_pan",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "u_pad",
            1
          ],
          "destination": [
            "spad_vol",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "u_pad",
            2
          ],
          "destination": [
            "spad_active",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "rt",
            10
          ],
          "destination": [
            "u_texture",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "u_texture",
            0
          ],
          "destination": [
            "stexture_pan",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "u_texture",
            1
          ],
          "destination": [
            "stexture_vol",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "u_texture",
            2
          ],
          "destination": [
            "stexture_active",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "rt",
            11
          ],
          "destination": [
            "u_arp",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "u_arp",
            0
          ],
          "destination": [
            "sarp_pan",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "u_arp",
            1
          ],
          "destination": [
            "sarp_vol",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "u_arp",
            2
          ],
          "destination": [
            "sarp_active",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "rt",
            12
          ],
          "destination": [
            "u_sparkle",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "u_sparkle",
            0
          ],
          "destination": [
            "ssparkle_pan",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "u_sparkle",
            1
          ],
          "destination": [
            "ssparkle_vol",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "u_sparkle",
            2
          ],
          "destination": [
            "ssparkle_active",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_melody_vol",
            0
          ],
          "destination": [
            "m_melody_vol",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m_melody_vol",
            0
          ],
          "destination": [
            "sd_melody_vol",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_melody_active",
            0
          ],
          "destination": [
            "m_melody_active",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m_melody_active",
            0
          ],
          "destination": [
            "sd_melody_active",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_melody_pan",
            0
          ],
          "destination": [
            "m_melody_pan",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m_melody_pan",
            0
          ],
          "destination": [
            "sd_melody_pan",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_melody2_vol",
            0
          ],
          "destination": [
            "m_melody2_vol",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m_melody2_vol",
            0
          ],
          "destination": [
            "sd_melody2_vol",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_melody2_active",
            0
          ],
          "destination": [
            "m_melody2_active",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m_melody2_active",
            0
          ],
          "destination": [
            "sd_melody2_active",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_melody2_pan",
            0
          ],
          "destination": [
            "m_melody2_pan",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m_melody2_pan",
            0
          ],
          "destination": [
            "sd_melody2_pan",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_harmony_vol",
            0
          ],
          "destination": [
            "m_harmony_vol",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m_harmony_vol",
            0
          ],
          "destination": [
            "sd_harmony_vol",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_harmony_active",
            0
          ],
          "destination": [
            "m_harmony_active",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m_harmony_active",
            0
          ],
          "destination": [
            "sd_harmony_active",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_harmony_pan",
            0
          ],
          "destination": [
            "m_harmony_pan",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m_harmony_pan",
            0
          ],
          "destination": [
            "sd_harmony_pan",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_bass_vol",
            0
          ],
          "destination": [
            "m_bass_vol",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m_bass_vol",
            0
          ],
          "destination": [
            "sd_bass_vol",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_bass_active",
            0
          ],
          "destination": [
            "m_bass_active",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m_bass_active",
            0
          ],
          "destination": [
            "sd_bass_active",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_bass_pan",
            0
          ],
          "destination": [
            "m_bass_pan",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m_bass_pan",
            0
          ],
          "destination": [
            "sd_bass_pan",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_rhythm_vol",
            0
          ],
          "destination": [
            "m_rhythm_vol",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m_rhythm_vol",
            0
          ],
          "destination": [
            "sd_rhythm_vol",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_rhythm_active",
            0
          ],
          "destination": [
            "m_rhythm_active",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m_rhythm_active",
            0
          ],
          "destination": [
            "sd_rhythm_active",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_rhythm_pan",
            0
          ],
          "destination": [
            "m_rhythm_pan",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m_rhythm_pan",
            0
          ],
          "destination": [
            "sd_rhythm_pan",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_pad_vol",
            0
          ],
          "destination": [
            "m_pad_vol",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m_pad_vol",
            0
          ],
          "destination": [
            "sd_pad_vol",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_pad_active",
            0
          ],
          "destination": [
            "m_pad_active",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m_pad_active",
            0
          ],
          "destination": [
            "sd_pad_active",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_pad_pan",
            0
          ],
          "destination": [
            "m_pad_pan",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m_pad_pan",
            0
          ],
          "destination": [
            "sd_pad_pan",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_texture_vol",
            0
          ],
          "destination": [
            "m_texture_vol",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m_texture_vol",
            0
          ],
          "destination": [
            "sd_texture_vol",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_texture_active",
            0
          ],
          "destination": [
            "m_texture_active",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m_texture_active",
            0
          ],
          "destination": [
            "sd_texture_active",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_texture_pan",
            0
          ],
          "destination": [
            "m_texture_pan",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m_texture_pan",
            0
          ],
          "destination": [
            "sd_texture_pan",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_arp_vol",
            0
          ],
          "destination": [
            "m_arp_vol",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m_arp_vol",
            0
          ],
          "destination": [
            "sd_arp_vol",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_arp_active",
            0
          ],
          "destination": [
            "m_arp_active",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m_arp_active",
            0
          ],
          "destination": [
            "sd_arp_active",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_arp_pan",
            0
          ],
          "destination": [
            "m_arp_pan",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m_arp_pan",
            0
          ],
          "destination": [
            "sd_arp_pan",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_sparkle_vol",
            0
          ],
          "destination": [
            "m_sparkle_vol",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m_sparkle_vol",
            0
          ],
          "destination": [
            "sd_sparkle_vol",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_sparkle_active",
            0
          ],
          "destination": [
            "m_sparkle_active",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m_sparkle_active",
            0
          ],
          "destination": [
            "sd_sparkle_active",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_sparkle_pan",
            0
          ],
          "destination": [
            "m_sparkle_pan",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m_sparkle_pan",
            0
          ],
          "destination": [
            "sd_sparkle_pan",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "rbl",
            0
          ],
          "destination": [
            "sbl",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "sbl",
            0
          ],
          "destination": [
            "pbl",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pbl",
            0
          ],
          "destination": [
            "lineblL",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pbl",
            0
          ],
          "destination": [
            "lineblR",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lineblL",
            0
          ],
          "destination": [
            "blL",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lineblR",
            0
          ],
          "destination": [
            "blR",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "rcvL",
            0
          ],
          "destination": [
            "blL",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "rcvR",
            0
          ],
          "destination": [
            "blR",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "rwe",
            0
          ],
          "destination": [
            "selwe",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "selwe",
            0
          ],
          "destination": [
            "mw550",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "selwe",
            1
          ],
          "destination": [
            "mw20k",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mw550",
            0
          ],
          "destination": [
            "pweL",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mw550",
            0
          ],
          "destination": [
            "pweR",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mw20k",
            0
          ],
          "destination": [
            "pweL",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mw20k",
            0
          ],
          "destination": [
            "pweR",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pweL",
            0
          ],
          "destination": [
            "lweL",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pweR",
            0
          ],
          "destination": [
            "lweR",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lweL",
            0
          ],
          "destination": [
            "weL",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lweR",
            0
          ],
          "destination": [
            "weR",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "blL",
            0
          ],
          "destination": [
            "weL",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "blR",
            0
          ],
          "destination": [
            "weR",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "rlp",
            0
          ],
          "destination": [
            "slp",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "slp",
            0
          ],
          "destination": [
            "plpL",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "slp",
            0
          ],
          "destination": [
            "plpR",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "plpL",
            0
          ],
          "destination": [
            "llpL",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "plpR",
            0
          ],
          "destination": [
            "llpR",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "llpL",
            0
          ],
          "destination": [
            "wrmL",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "llpR",
            0
          ],
          "destination": [
            "wrmR",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "weL",
            0
          ],
          "destination": [
            "wrmL",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "weR",
            0
          ],
          "destination": [
            "wrmR",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "rbl2",
            0
          ],
          "destination": [
            "sbl2",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "sbl2",
            0
          ],
          "destination": [
            "pblv",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pblv",
            0
          ],
          "destination": [
            "linevolL",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pblv",
            0
          ],
          "destination": [
            "linevolR",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "linevolL",
            0
          ],
          "destination": [
            "volL",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "linevolR",
            0
          ],
          "destination": [
            "volR",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "volL",
            0
          ],
          "destination": [
            "clipL",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "volR",
            0
          ],
          "destination": [
            "clipR",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "clipL",
            0
          ],
          "destination": [
            "dac",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "clipR",
            0
          ],
          "destination": [
            "dac",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "stv",
            0
          ],
          "destination": [
            "schg",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "schg",
            0
          ],
          "destination": [
            "szero",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "szero",
            0
          ],
          "destination": [
            "ssync",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_env",
            0
          ],
          "destination": [
            "mbl0",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mbl0",
            0
          ],
          "destination": [
            "sbl0",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_env",
            0
          ],
          "destination": [
            "mwe0",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mwe0",
            0
          ],
          "destination": [
            "swe0",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_env",
            0
          ],
          "destination": [
            "mlp0",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mlp0",
            0
          ],
          "destination": [
            "slp0",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_env",
            0
          ],
          "destination": [
            "mtv0",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mtv0",
            0
          ],
          "destination": [
            "stv0",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "wrmL",
            0
          ],
          "destination": [
            "volL",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "wrmR",
            0
          ],
          "destination": [
            "volR",
            0
          ]
        }
      }
    ],
    "autosave": 0
  }
}