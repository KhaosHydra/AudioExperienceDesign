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
          "id": "obj-1",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            200,
            30,
            109.5,
            22
          ],
          "text": "udpreceive 7374",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-2",
          "maxclass": "newobj",
          "numinlets": 14,
          "numoutlets": 14,
          "patching_rect": [
            50,
            70,
            1871.0,
            22
          ],
          "text": "route /soundroom/lamp /soundroom/blinds /soundroom/weather /soundroom/time /soundroom/layer/melody /soundroom/layer/melody2 /soundroom/layer/harmony /soundroom/layer/bass /soundroom/layer/rhythm /soundroom/layer/pad /soundroom/layer/texture /soundroom/layer/arp /soundroom/layer/sparkle",
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
            ""
          ]
        }
      },
      {
        "box": {
          "id": "obj-5",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50,
            130,
            77.0,
            22
          ],
          "text": "s lamp_val"
        }
      },
      {
        "box": {
          "id": "obj-6",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            160,
            130,
            64.0,
            22
          ],
          "text": "s blinds"
        }
      },
      {
        "box": {
          "id": "obj-7",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            280,
            130,
            70.5,
            22
          ],
          "text": "s weather"
        }
      },
      {
        "box": {
          "id": "obj-8",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            400,
            130,
            77.0,
            22
          ],
          "text": "s time_val"
        }
      },
      {
        "box": {
          "id": "obj-10",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            50,
            210,
            103.0,
            22
          ],
          "text": "unpack 0. 0. 0",
          "outlettype": [
            "float",
            "float",
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-11",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50,
            240,
            90.0,
            22
          ],
          "text": "s melody_pan"
        }
      },
      {
        "box": {
          "id": "obj-12",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50,
            270,
            90.0,
            22
          ],
          "text": "s melody_vol"
        }
      },
      {
        "box": {
          "id": "obj-13",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50,
            300,
            109.5,
            22
          ],
          "text": "s melody_active"
        }
      },
      {
        "box": {
          "id": "obj-14",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            190,
            210,
            103.0,
            22
          ],
          "text": "unpack 0. 0. 0",
          "outlettype": [
            "float",
            "float",
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-15",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            190,
            240,
            96.5,
            22
          ],
          "text": "s melody2_pan"
        }
      },
      {
        "box": {
          "id": "obj-16",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            190,
            270,
            96.5,
            22
          ],
          "text": "s melody2_vol"
        }
      },
      {
        "box": {
          "id": "obj-17",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            190,
            300,
            116.0,
            22
          ],
          "text": "s melody2_active"
        }
      },
      {
        "box": {
          "id": "obj-18",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            350,
            210,
            103.0,
            22
          ],
          "text": "unpack 0. 0. 0",
          "outlettype": [
            "float",
            "float",
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-19",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            350,
            240,
            96.5,
            22
          ],
          "text": "s harmony_pan"
        }
      },
      {
        "box": {
          "id": "obj-20",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            350,
            270,
            96.5,
            22
          ],
          "text": "s harmony_vol"
        }
      },
      {
        "box": {
          "id": "obj-21",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            350,
            300,
            116.0,
            22
          ],
          "text": "s harmony_active"
        }
      },
      {
        "box": {
          "id": "obj-22",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            509,
            210,
            103.0,
            22
          ],
          "text": "unpack 0. 0. 0",
          "outlettype": [
            "float",
            "float",
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-23",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            509,
            240,
            77.0,
            22
          ],
          "text": "s bass_pan"
        }
      },
      {
        "box": {
          "id": "obj-24",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            509,
            270,
            77.0,
            22
          ],
          "text": "s bass_vol"
        }
      },
      {
        "box": {
          "id": "obj-25",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            509,
            300,
            96.5,
            22
          ],
          "text": "s bass_active"
        }
      },
      {
        "box": {
          "id": "obj-26",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            644,
            210,
            103.0,
            22
          ],
          "text": "unpack 0. 0. 0",
          "outlettype": [
            "float",
            "float",
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-27",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            644,
            240,
            90.0,
            22
          ],
          "text": "s rhythm_pan"
        }
      },
      {
        "box": {
          "id": "obj-28",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            644,
            270,
            90.0,
            22
          ],
          "text": "s rhythm_vol"
        }
      },
      {
        "box": {
          "id": "obj-29",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            644,
            300,
            109.5,
            22
          ],
          "text": "s rhythm_active"
        }
      },
      {
        "box": {
          "id": "obj-30",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            791,
            210,
            103.0,
            22
          ],
          "text": "unpack 0. 0. 0",
          "outlettype": [
            "float",
            "float",
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-31",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            791,
            240,
            70.5,
            22
          ],
          "text": "s pad_pan"
        }
      },
      {
        "box": {
          "id": "obj-32",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            791,
            270,
            70.5,
            22
          ],
          "text": "s pad_vol"
        }
      },
      {
        "box": {
          "id": "obj-33",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            791,
            300,
            90.0,
            22
          ],
          "text": "s pad_active"
        }
      },
      {
        "box": {
          "id": "obj-34",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            937,
            210,
            103.0,
            22
          ],
          "text": "unpack 0. 0. 0",
          "outlettype": [
            "float",
            "float",
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-35",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            937,
            240,
            96.5,
            22
          ],
          "text": "s texture_pan"
        }
      },
      {
        "box": {
          "id": "obj-36",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            937,
            270,
            96.5,
            22
          ],
          "text": "s texture_vol"
        }
      },
      {
        "box": {
          "id": "obj-37",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            937,
            300,
            116.0,
            22
          ],
          "text": "s texture_active"
        }
      },
      {
        "box": {
          "id": "obj-38",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            1073,
            210,
            103.0,
            22
          ],
          "text": "unpack 0. 0. 0",
          "outlettype": [
            "float",
            "float",
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-39",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1073,
            240,
            70.5,
            22
          ],
          "text": "s arp_pan"
        }
      },
      {
        "box": {
          "id": "obj-40",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1073,
            270,
            70.5,
            22
          ],
          "text": "s arp_vol"
        }
      },
      {
        "box": {
          "id": "obj-41",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1073,
            300,
            90.0,
            22
          ],
          "text": "s arp_active"
        }
      },
      {
        "box": {
          "id": "obj-42",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            1214,
            210,
            103.0,
            22
          ],
          "text": "unpack 0. 0. 0",
          "outlettype": [
            "float",
            "float",
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "obj-43",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1214,
            240,
            96.5,
            22
          ],
          "text": "s sparkle_pan"
        }
      },
      {
        "box": {
          "id": "obj-44",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1214,
            270,
            96.5,
            22
          ],
          "text": "s sparkle_vol"
        }
      },
      {
        "box": {
          "id": "obj-45",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1214,
            300,
            116.0,
            22
          ],
          "text": "s sparkle_active"
        }
      },
      {
        "box": {
          "id": "obj-46",
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
                  "text": "read \"1 Piano Main.wav\""
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
                  "text": "read \"5 Melody 1.wav\""
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
                  "text": "expr $f1 * $f2 * ($f3 == 0)"
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
                  "text": "expr $f1 * $f2 * ($f3 == 100) * 0.72"
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
              }
            ]
          },
          "patching_rect": [
            50,
            350,
            120,
            22
          ],
          "text": "p layer_melody"
        }
      },
      {
        "box": {
          "id": "obj-81",
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
                  "text": "read \"8 Second Melody.wav\""
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
                  "text": "read \"3 Synth Sparkle.wav\""
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
                  "text": "expr $f1 * $f2 * ($f3 == 0)"
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
                  "text": "expr $f1 * $f2 * ($f3 == 100) * 0.72"
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
              }
            ]
          },
          "patching_rect": [
            176,
            350,
            120,
            22
          ],
          "text": "p layer_melody2"
        }
      },
      {
        "box": {
          "id": "obj-116",
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
                  "text": "read \"3 Piano Melody.wav\""
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
                  "text": "read \"6 Pad Low.wav\""
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
                  "text": "expr $f1 * $f2 * ($f3 == 0)"
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
                  "text": "expr $f1 * $f2 * ($f3 == 100) * 0.72"
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
              }
            ]
          },
          "patching_rect": [
            315,
            350,
            120,
            22
          ],
          "text": "p layer_harmony"
        }
      },
      {
        "box": {
          "id": "obj-151",
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
                  "text": "read \"2 Piano Bass.wav\""
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
                  "text": "read \"4 Bass.wav\""
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
                  "text": "expr $f1 * $f2 * ($f3 == 0)"
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
                  "text": "expr $f1 * $f2 * ($f3 == 100) * 0.72"
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
              }
            ]
          },
          "patching_rect": [
            450,
            350,
            120,
            22
          ],
          "text": "p layer_bass"
        }
      },
      {
        "box": {
          "id": "obj-186",
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
                  "text": "read \"7 Drone.wav\""
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
                  "text": "read \"1 Synth Appregio Low.wav\""
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
                  "text": "expr $f1 * $f2 * ($f3 == 0)"
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
                  "text": "expr $f1 * $f2 * ($f3 == 100) * 0.72"
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
              }
            ]
          },
          "patching_rect": [
            570,
            350,
            120,
            22
          ],
          "text": "p layer_pad"
        }
      },
      {
        "box": {
          "id": "obj-221",
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
                  "text": "read \"6 Violin.wav\""
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
                  "text": "read \"9 Violin.wav\""
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
                  "text": "expr $f1 * $f2 * ($f3 == 0)"
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
                  "text": "expr $f1 * $f2 * ($f3 == 100) * 0.72"
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
              }
            ]
          },
          "patching_rect": [
            690,
            350,
            120,
            22
          ],
          "text": "p layer_texture"
        }
      },
      {
        "box": {
          "id": "obj-256",
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
                  "text": "read \"4 Sparkle.wav\""
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
                  "text": "read \"3 Synth Sparkle.wav\""
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
                  "text": "expr $f1 * $f2 * ($f3 == 0)"
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
                  "text": "expr $f1 * $f2 * ($f3 == 100) * 0.72"
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
              }
            ]
          },
          "patching_rect": [
            835,
            350,
            120,
            22
          ],
          "text": "p layer_sparkle"
        }
      },
      {
        "box": {
          "id": "obj-291",
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
            "rect": [
              115,
              172,
              1400,
              680
            ],
            "boxes": [
              {
                "box": {
                  "id": "r1",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "patching_rect": [
                    30,
                    50,
                    62.0,
                    22
                  ],
                  "text": "loadbang",
                  "outlettype": [
                    "bang"
                  ]
                }
              },
              {
                "box": {
                  "id": "r2",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    30,
                    80,
                    190,
                    22
                  ],
                  "text": "read \"8 Piano Chord 1.wav\""
                }
              },
              {
                "box": {
                  "id": "r3",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "patching_rect": [
                    30,
                    110,
                    127.0,
                    22
                  ],
                  "text": "buffer~ day_chord1",
                  "outlettype": [
                    "float",
                    "bang"
                  ]
                }
              },
              {
                "box": {
                  "id": "r4",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "patching_rect": [
                    30,
                    150,
                    62.0,
                    22
                  ],
                  "text": "loadbang",
                  "outlettype": [
                    "bang"
                  ]
                }
              },
              {
                "box": {
                  "id": "r5",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    30,
                    180,
                    30,
                    22
                  ],
                  "text": "1"
                }
              },
              {
                "box": {
                  "id": "r6",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "patching_rect": [
                    30,
                    210,
                    36.0,
                    22
                  ],
                  "text": "sig~",
                  "outlettype": [
                    "signal"
                  ]
                }
              },
              {
                "box": {
                  "id": "r7",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 2,
                  "patching_rect": [
                    30,
                    240,
                    179.0,
                    22
                  ],
                  "text": "groove~ day_chord1 @loop 1",
                  "outlettype": [
                    "signal",
                    "signal"
                  ]
                }
              },
              {
                "box": {
                  "id": "r8",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "patching_rect": [
                    30,
                    280,
                    88.0,
                    22
                  ],
                  "text": "r rhythm_vol",
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "r9",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "patching_rect": [
                    143,
                    280,
                    107.5,
                    22
                  ],
                  "text": "r rhythm_active",
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "r10",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "patching_rect": [
                    286,
                    280,
                    75.0,
                    22
                  ],
                  "text": "r time_val",
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "r11",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "patching_rect": [
                    30,
                    310,
                    185.5,
                    22
                  ],
                  "text": "expr $f1 * $f2 * ($f3 == 0)",
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "r12",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "patching_rect": [
                    30,
                    340,
                    88.0,
                    22
                  ],
                  "text": "pack 0. 5000",
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "r13",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "patching_rect": [
                    30,
                    370,
                    81.5,
                    22
                  ],
                  "text": "line~ 0. 50",
                  "outlettype": [
                    "signal",
                    "bang"
                  ]
                }
              },
              {
                "box": {
                  "id": "r14",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "patching_rect": [
                    30,
                    400,
                    30,
                    22
                  ],
                  "text": "*~",
                  "outlettype": [
                    "signal"
                  ]
                }
              },
              {
                "box": {
                  "id": "r15",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "patching_rect": [
                    400,
                    50,
                    62.0,
                    22
                  ],
                  "text": "loadbang",
                  "outlettype": [
                    "bang"
                  ]
                }
              },
              {
                "box": {
                  "id": "r16",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400,
                    80,
                    190,
                    22
                  ],
                  "text": "read \"9 Piano Chord 2.wav\""
                }
              },
              {
                "box": {
                  "id": "r17",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "patching_rect": [
                    400,
                    110,
                    127.0,
                    22
                  ],
                  "text": "buffer~ day_chord2",
                  "outlettype": [
                    "float",
                    "bang"
                  ]
                }
              },
              {
                "box": {
                  "id": "r18",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "patching_rect": [
                    400,
                    150,
                    62.0,
                    22
                  ],
                  "text": "loadbang",
                  "outlettype": [
                    "bang"
                  ]
                }
              },
              {
                "box": {
                  "id": "r19",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400,
                    180,
                    30,
                    22
                  ],
                  "text": "1"
                }
              },
              {
                "box": {
                  "id": "r20",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "patching_rect": [
                    400,
                    210,
                    36.0,
                    22
                  ],
                  "text": "sig~",
                  "outlettype": [
                    "signal"
                  ]
                }
              },
              {
                "box": {
                  "id": "r21",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 2,
                  "patching_rect": [
                    400,
                    240,
                    179.0,
                    22
                  ],
                  "text": "groove~ day_chord2 @loop 1",
                  "outlettype": [
                    "signal",
                    "signal"
                  ]
                }
              },
              {
                "box": {
                  "id": "r22",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "patching_rect": [
                    400,
                    280,
                    88.0,
                    22
                  ],
                  "text": "r rhythm_vol",
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "r23",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "patching_rect": [
                    513,
                    280,
                    107.5,
                    22
                  ],
                  "text": "r rhythm_active",
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "r24",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "patching_rect": [
                    656,
                    280,
                    75.0,
                    22
                  ],
                  "text": "r time_val",
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "r25",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "patching_rect": [
                    400,
                    310,
                    185.5,
                    22
                  ],
                  "text": "expr $f1 * $f2 * ($f3 == 0)",
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "r26",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "patching_rect": [
                    400,
                    340,
                    88.0,
                    22
                  ],
                  "text": "pack 0. 5000",
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "r27",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "patching_rect": [
                    400,
                    370,
                    81.5,
                    22
                  ],
                  "text": "line~ 0. 50",
                  "outlettype": [
                    "signal",
                    "bang"
                  ]
                }
              },
              {
                "box": {
                  "id": "r28",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "patching_rect": [
                    400,
                    400,
                    30,
                    22
                  ],
                  "text": "*~",
                  "outlettype": [
                    "signal"
                  ]
                }
              },
              {
                "box": {
                  "id": "r29",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "patching_rect": [
                    770,
                    50,
                    62.0,
                    22
                  ],
                  "text": "loadbang",
                  "outlettype": [
                    "bang"
                  ]
                }
              },
              {
                "box": {
                  "id": "r30",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    770,
                    80,
                    134,
                    22
                  ],
                  "text": "read \"10 Drum.wav\""
                }
              },
              {
                "box": {
                  "id": "r31",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "patching_rect": [
                    770,
                    110,
                    127.0,
                    22
                  ],
                  "text": "buffer~ night_drum",
                  "outlettype": [
                    "float",
                    "bang"
                  ]
                }
              },
              {
                "box": {
                  "id": "r32",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "patching_rect": [
                    770,
                    150,
                    62.0,
                    22
                  ],
                  "text": "loadbang",
                  "outlettype": [
                    "bang"
                  ]
                }
              },
              {
                "box": {
                  "id": "r33",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    770,
                    180,
                    30,
                    22
                  ],
                  "text": "1"
                }
              },
              {
                "box": {
                  "id": "r34",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "patching_rect": [
                    770,
                    210,
                    36.0,
                    22
                  ],
                  "text": "sig~",
                  "outlettype": [
                    "signal"
                  ]
                }
              },
              {
                "box": {
                  "id": "r35",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 2,
                  "patching_rect": [
                    770,
                    240,
                    179.0,
                    22
                  ],
                  "text": "groove~ night_drum @loop 1",
                  "outlettype": [
                    "signal",
                    "signal"
                  ]
                }
              },
              {
                "box": {
                  "id": "r36",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "patching_rect": [
                    770,
                    280,
                    88.0,
                    22
                  ],
                  "text": "r rhythm_vol",
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "r37",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "patching_rect": [
                    883,
                    280,
                    107.5,
                    22
                  ],
                  "text": "r rhythm_active",
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "r38",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "patching_rect": [
                    1026,
                    280,
                    75.0,
                    22
                  ],
                  "text": "r time_val",
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "r39",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "patching_rect": [
                    770,
                    310,
                    244.0,
                    22
                  ],
                  "text": "expr $f1 * $f2 * ($f3 == 100) * 0.72",
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "r40",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "patching_rect": [
                    770,
                    340,
                    88.0,
                    22
                  ],
                  "text": "pack 0. 5000",
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "r41",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "patching_rect": [
                    770,
                    370,
                    81.5,
                    22
                  ],
                  "text": "line~ 0. 50",
                  "outlettype": [
                    "signal",
                    "bang"
                  ]
                }
              },
              {
                "box": {
                  "id": "r42",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "patching_rect": [
                    770,
                    400,
                    30,
                    22
                  ],
                  "text": "*~",
                  "outlettype": [
                    "signal"
                  ]
                }
              },
              {
                "box": {
                  "id": "r43",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "patching_rect": [
                    1140,
                    50,
                    62.0,
                    22
                  ],
                  "text": "loadbang",
                  "outlettype": [
                    "bang"
                  ]
                }
              },
              {
                "box": {
                  "id": "r44",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1140,
                    80,
                    127,
                    22
                  ],
                  "text": "read \"7 Clap.wav\""
                }
              },
              {
                "box": {
                  "id": "r45",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "patching_rect": [
                    1140,
                    110,
                    127.0,
                    22
                  ],
                  "text": "buffer~ night_clap",
                  "outlettype": [
                    "float",
                    "bang"
                  ]
                }
              },
              {
                "box": {
                  "id": "r46",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "patching_rect": [
                    1140,
                    150,
                    62.0,
                    22
                  ],
                  "text": "loadbang",
                  "outlettype": [
                    "bang"
                  ]
                }
              },
              {
                "box": {
                  "id": "r47",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    1140,
                    180,
                    30,
                    22
                  ],
                  "text": "1"
                }
              },
              {
                "box": {
                  "id": "r48",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "patching_rect": [
                    1140,
                    210,
                    36.0,
                    22
                  ],
                  "text": "sig~",
                  "outlettype": [
                    "signal"
                  ]
                }
              },
              {
                "box": {
                  "id": "r49",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 2,
                  "patching_rect": [
                    1140,
                    240,
                    179.0,
                    22
                  ],
                  "text": "groove~ night_clap @loop 1",
                  "outlettype": [
                    "signal",
                    "signal"
                  ]
                }
              },
              {
                "box": {
                  "id": "r50",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "patching_rect": [
                    1140,
                    280,
                    88.0,
                    22
                  ],
                  "text": "r rhythm_vol",
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "r51",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "patching_rect": [
                    1253,
                    280,
                    107.5,
                    22
                  ],
                  "text": "r rhythm_active",
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "r52",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "patching_rect": [
                    1396,
                    280,
                    75.0,
                    22
                  ],
                  "text": "r time_val",
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "r53",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "patching_rect": [
                    1140,
                    310,
                    244.0,
                    22
                  ],
                  "text": "expr $f1 * $f2 * ($f3 == 100) * 0.72",
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "r54",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "patching_rect": [
                    1140,
                    340,
                    88.0,
                    22
                  ],
                  "text": "pack 0. 5000",
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "r55",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "patching_rect": [
                    1140,
                    370,
                    81.5,
                    22
                  ],
                  "text": "line~ 0. 50",
                  "outlettype": [
                    "signal",
                    "bang"
                  ]
                }
              },
              {
                "box": {
                  "id": "r56",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "patching_rect": [
                    1140,
                    400,
                    30,
                    22
                  ],
                  "text": "*~",
                  "outlettype": [
                    "signal"
                  ]
                }
              },
              {
                "box": {
                  "id": "r57",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "patching_rect": [
                    100,
                    450,
                    30,
                    22
                  ],
                  "text": "+~",
                  "outlettype": [
                    "signal"
                  ]
                }
              },
              {
                "box": {
                  "id": "r58",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "patching_rect": [
                    800,
                    450,
                    30,
                    22
                  ],
                  "text": "+~",
                  "outlettype": [
                    "signal"
                  ]
                }
              },
              {
                "box": {
                  "id": "r59",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "patching_rect": [
                    350,
                    500,
                    30,
                    22
                  ],
                  "text": "+~",
                  "outlettype": [
                    "signal"
                  ]
                }
              },
              {
                "box": {
                  "id": "r60",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "patching_rect": [
                    550,
                    500,
                    88.0,
                    22
                  ],
                  "text": "r rhythm_pan",
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "r61",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "patching_rect": [
                    550,
                    530,
                    36.0,
                    22
                  ],
                  "text": "sig~",
                  "outlettype": [
                    "signal"
                  ]
                }
              },
              {
                "box": {
                  "id": "r62",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "patching_rect": [
                    350,
                    560,
                    42.5,
                    22
                  ],
                  "text": "pan2S",
                  "outlettype": [
                    "signal",
                    "signal"
                  ]
                }
              },
              {
                "box": {
                  "id": "r63",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    300,
                    600,
                    101.0,
                    22
                  ],
                  "text": "send~ master_L"
                }
              },
              {
                "box": {
                  "id": "r64",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    450,
                    600,
                    101.0,
                    22
                  ],
                  "text": "send~ master_R"
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "source": [
                    "r1",
                    0
                  ],
                  "destination": [
                    "r2",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r2",
                    0
                  ],
                  "destination": [
                    "r3",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r4",
                    0
                  ],
                  "destination": [
                    "r5",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r5",
                    0
                  ],
                  "destination": [
                    "r6",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r6",
                    0
                  ],
                  "destination": [
                    "r7",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r8",
                    0
                  ],
                  "destination": [
                    "r11",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r9",
                    0
                  ],
                  "destination": [
                    "r11",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r10",
                    0
                  ],
                  "destination": [
                    "r11",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r11",
                    0
                  ],
                  "destination": [
                    "r12",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r12",
                    0
                  ],
                  "destination": [
                    "r13",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r13",
                    0
                  ],
                  "destination": [
                    "r14",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r7",
                    0
                  ],
                  "destination": [
                    "r14",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r15",
                    0
                  ],
                  "destination": [
                    "r16",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r16",
                    0
                  ],
                  "destination": [
                    "r17",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r18",
                    0
                  ],
                  "destination": [
                    "r19",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r19",
                    0
                  ],
                  "destination": [
                    "r20",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r20",
                    0
                  ],
                  "destination": [
                    "r21",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r22",
                    0
                  ],
                  "destination": [
                    "r25",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r23",
                    0
                  ],
                  "destination": [
                    "r25",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r24",
                    0
                  ],
                  "destination": [
                    "r25",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r25",
                    0
                  ],
                  "destination": [
                    "r26",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r26",
                    0
                  ],
                  "destination": [
                    "r27",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r27",
                    0
                  ],
                  "destination": [
                    "r28",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r21",
                    0
                  ],
                  "destination": [
                    "r28",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r29",
                    0
                  ],
                  "destination": [
                    "r30",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r30",
                    0
                  ],
                  "destination": [
                    "r31",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r32",
                    0
                  ],
                  "destination": [
                    "r33",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r33",
                    0
                  ],
                  "destination": [
                    "r34",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r34",
                    0
                  ],
                  "destination": [
                    "r35",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r36",
                    0
                  ],
                  "destination": [
                    "r39",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r37",
                    0
                  ],
                  "destination": [
                    "r39",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r38",
                    0
                  ],
                  "destination": [
                    "r39",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r39",
                    0
                  ],
                  "destination": [
                    "r40",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r40",
                    0
                  ],
                  "destination": [
                    "r41",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r41",
                    0
                  ],
                  "destination": [
                    "r42",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r35",
                    0
                  ],
                  "destination": [
                    "r42",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r43",
                    0
                  ],
                  "destination": [
                    "r44",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r44",
                    0
                  ],
                  "destination": [
                    "r45",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r46",
                    0
                  ],
                  "destination": [
                    "r47",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r47",
                    0
                  ],
                  "destination": [
                    "r48",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r48",
                    0
                  ],
                  "destination": [
                    "r49",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r50",
                    0
                  ],
                  "destination": [
                    "r53",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r51",
                    0
                  ],
                  "destination": [
                    "r53",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r52",
                    0
                  ],
                  "destination": [
                    "r53",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r53",
                    0
                  ],
                  "destination": [
                    "r54",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r54",
                    0
                  ],
                  "destination": [
                    "r55",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r55",
                    0
                  ],
                  "destination": [
                    "r56",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r49",
                    0
                  ],
                  "destination": [
                    "r56",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r14",
                    0
                  ],
                  "destination": [
                    "r57",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r28",
                    0
                  ],
                  "destination": [
                    "r57",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r42",
                    0
                  ],
                  "destination": [
                    "r58",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r56",
                    0
                  ],
                  "destination": [
                    "r58",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r57",
                    0
                  ],
                  "destination": [
                    "r59",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r58",
                    0
                  ],
                  "destination": [
                    "r59",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r59",
                    0
                  ],
                  "destination": [
                    "r62",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r60",
                    0
                  ],
                  "destination": [
                    "r61",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r61",
                    0
                  ],
                  "destination": [
                    "r62",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r62",
                    0
                  ],
                  "destination": [
                    "r63",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r62",
                    1
                  ],
                  "destination": [
                    "r64",
                    0
                  ]
                }
              }
            ]
          },
          "patching_rect": [
            972,
            350,
            100,
            22
          ],
          "text": "p layer_rhythm"
        }
      },
      {
        "box": {
          "id": "obj-356",
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
            "rect": [
              115,
              172,
              1400,
              680
            ],
            "boxes": [
              {
                "box": {
                  "id": "r1",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "patching_rect": [
                    30,
                    50,
                    62.0,
                    22
                  ],
                  "text": "loadbang",
                  "outlettype": [
                    "bang"
                  ]
                }
              },
              {
                "box": {
                  "id": "r2",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    30,
                    80,
                    197,
                    22
                  ],
                  "text": "read \"5 Piano Appregio.wav\""
                }
              },
              {
                "box": {
                  "id": "r3",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "patching_rect": [
                    30,
                    110,
                    107.5,
                    22
                  ],
                  "text": "buffer~ day_arp",
                  "outlettype": [
                    "float",
                    "bang"
                  ]
                }
              },
              {
                "box": {
                  "id": "r4",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "patching_rect": [
                    30,
                    150,
                    62.0,
                    22
                  ],
                  "text": "loadbang",
                  "outlettype": [
                    "bang"
                  ]
                }
              },
              {
                "box": {
                  "id": "r5",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    30,
                    180,
                    30,
                    22
                  ],
                  "text": "1"
                }
              },
              {
                "box": {
                  "id": "r6",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "patching_rect": [
                    30,
                    210,
                    36.0,
                    22
                  ],
                  "text": "sig~",
                  "outlettype": [
                    "signal"
                  ]
                }
              },
              {
                "box": {
                  "id": "r7",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 2,
                  "patching_rect": [
                    30,
                    240,
                    159.5,
                    22
                  ],
                  "text": "groove~ day_arp @loop 1",
                  "outlettype": [
                    "signal",
                    "signal"
                  ]
                }
              },
              {
                "box": {
                  "id": "r8",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "patching_rect": [
                    30,
                    280,
                    68.5,
                    22
                  ],
                  "text": "r arp_vol",
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "r9",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "patching_rect": [
                    143,
                    280,
                    88.0,
                    22
                  ],
                  "text": "r arp_active",
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "r10",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "patching_rect": [
                    286,
                    280,
                    75.0,
                    22
                  ],
                  "text": "r time_val",
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "r11",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "patching_rect": [
                    30,
                    310,
                    185.5,
                    22
                  ],
                  "text": "expr $f1 * $f2 * ($f3 == 0)",
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "r12",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "patching_rect": [
                    30,
                    340,
                    88.0,
                    22
                  ],
                  "text": "pack 0. 5000",
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "r13",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "patching_rect": [
                    30,
                    370,
                    81.5,
                    22
                  ],
                  "text": "line~ 0. 50",
                  "outlettype": [
                    "signal",
                    "bang"
                  ]
                }
              },
              {
                "box": {
                  "id": "r14",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "patching_rect": [
                    30,
                    400,
                    30,
                    22
                  ],
                  "text": "*~",
                  "outlettype": [
                    "signal"
                  ]
                }
              },
              {
                "box": {
                  "id": "r15",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "patching_rect": [
                    400,
                    50,
                    62.0,
                    22
                  ],
                  "text": "loadbang",
                  "outlettype": [
                    "bang"
                  ]
                }
              },
              {
                "box": {
                  "id": "r16",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400,
                    80,
                    232,
                    22
                  ],
                  "text": "read \"2 Synth Appregio High.wav\""
                }
              },
              {
                "box": {
                  "id": "r17",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "patching_rect": [
                    400,
                    110,
                    127.0,
                    22
                  ],
                  "text": "buffer~ night_arp1",
                  "outlettype": [
                    "float",
                    "bang"
                  ]
                }
              },
              {
                "box": {
                  "id": "r18",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "patching_rect": [
                    400,
                    150,
                    62.0,
                    22
                  ],
                  "text": "loadbang",
                  "outlettype": [
                    "bang"
                  ]
                }
              },
              {
                "box": {
                  "id": "r19",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    400,
                    180,
                    30,
                    22
                  ],
                  "text": "1"
                }
              },
              {
                "box": {
                  "id": "r20",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "patching_rect": [
                    400,
                    210,
                    36.0,
                    22
                  ],
                  "text": "sig~",
                  "outlettype": [
                    "signal"
                  ]
                }
              },
              {
                "box": {
                  "id": "r21",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 2,
                  "patching_rect": [
                    400,
                    240,
                    179.0,
                    22
                  ],
                  "text": "groove~ night_arp1 @loop 1",
                  "outlettype": [
                    "signal",
                    "signal"
                  ]
                }
              },
              {
                "box": {
                  "id": "r22",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "patching_rect": [
                    400,
                    280,
                    68.5,
                    22
                  ],
                  "text": "r arp_vol",
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "r23",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "patching_rect": [
                    513,
                    280,
                    88.0,
                    22
                  ],
                  "text": "r arp_active",
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "r24",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "patching_rect": [
                    656,
                    280,
                    75.0,
                    22
                  ],
                  "text": "r time_val",
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "r25",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "patching_rect": [
                    400,
                    310,
                    244.0,
                    22
                  ],
                  "text": "expr $f1 * $f2 * ($f3 == 100) * 0.72",
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "r26",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "patching_rect": [
                    400,
                    340,
                    88.0,
                    22
                  ],
                  "text": "pack 0. 5000",
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "r27",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "patching_rect": [
                    400,
                    370,
                    81.5,
                    22
                  ],
                  "text": "line~ 0. 50",
                  "outlettype": [
                    "signal",
                    "bang"
                  ]
                }
              },
              {
                "box": {
                  "id": "r28",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "patching_rect": [
                    400,
                    400,
                    30,
                    22
                  ],
                  "text": "*~",
                  "outlettype": [
                    "signal"
                  ]
                }
              },
              {
                "box": {
                  "id": "r29",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "patching_rect": [
                    770,
                    50,
                    62.0,
                    22
                  ],
                  "text": "loadbang",
                  "outlettype": [
                    "bang"
                  ]
                }
              },
              {
                "box": {
                  "id": "r30",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    770,
                    80,
                    183,
                    22
                  ],
                  "text": "read \"8 Synth Rhythm.wav\""
                }
              },
              {
                "box": {
                  "id": "r31",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "patching_rect": [
                    770,
                    110,
                    127.0,
                    22
                  ],
                  "text": "buffer~ night_arp2",
                  "outlettype": [
                    "float",
                    "bang"
                  ]
                }
              },
              {
                "box": {
                  "id": "r32",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "patching_rect": [
                    770,
                    150,
                    62.0,
                    22
                  ],
                  "text": "loadbang",
                  "outlettype": [
                    "bang"
                  ]
                }
              },
              {
                "box": {
                  "id": "r33",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    770,
                    180,
                    30,
                    22
                  ],
                  "text": "1"
                }
              },
              {
                "box": {
                  "id": "r34",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "patching_rect": [
                    770,
                    210,
                    36.0,
                    22
                  ],
                  "text": "sig~",
                  "outlettype": [
                    "signal"
                  ]
                }
              },
              {
                "box": {
                  "id": "r35",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 2,
                  "patching_rect": [
                    770,
                    240,
                    179.0,
                    22
                  ],
                  "text": "groove~ night_arp2 @loop 1",
                  "outlettype": [
                    "signal",
                    "signal"
                  ]
                }
              },
              {
                "box": {
                  "id": "r36",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "patching_rect": [
                    770,
                    280,
                    68.5,
                    22
                  ],
                  "text": "r arp_vol",
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "r37",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "patching_rect": [
                    883,
                    280,
                    88.0,
                    22
                  ],
                  "text": "r arp_active",
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "r38",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "patching_rect": [
                    1026,
                    280,
                    75.0,
                    22
                  ],
                  "text": "r time_val",
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "r39",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "patching_rect": [
                    770,
                    310,
                    244.0,
                    22
                  ],
                  "text": "expr $f1 * $f2 * ($f3 == 100) * 0.72",
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "r40",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "patching_rect": [
                    770,
                    340,
                    88.0,
                    22
                  ],
                  "text": "pack 0. 5000",
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "r41",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "patching_rect": [
                    770,
                    370,
                    81.5,
                    22
                  ],
                  "text": "line~ 0. 50",
                  "outlettype": [
                    "signal",
                    "bang"
                  ]
                }
              },
              {
                "box": {
                  "id": "r42",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "patching_rect": [
                    770,
                    400,
                    30,
                    22
                  ],
                  "text": "*~",
                  "outlettype": [
                    "signal"
                  ]
                }
              },
              {
                "box": {
                  "id": "r43",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "patching_rect": [
                    800,
                    450,
                    30,
                    22
                  ],
                  "text": "+~",
                  "outlettype": [
                    "signal"
                  ]
                }
              },
              {
                "box": {
                  "id": "r44",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "patching_rect": [
                    350,
                    500,
                    30,
                    22
                  ],
                  "text": "+~",
                  "outlettype": [
                    "signal"
                  ]
                }
              },
              {
                "box": {
                  "id": "r45",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "patching_rect": [
                    550,
                    500,
                    68.5,
                    22
                  ],
                  "text": "r arp_pan",
                  "outlettype": [
                    ""
                  ]
                }
              },
              {
                "box": {
                  "id": "r46",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "patching_rect": [
                    550,
                    530,
                    36.0,
                    22
                  ],
                  "text": "sig~",
                  "outlettype": [
                    "signal"
                  ]
                }
              },
              {
                "box": {
                  "id": "r47",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "patching_rect": [
                    350,
                    560,
                    42.5,
                    22
                  ],
                  "text": "pan2S",
                  "outlettype": [
                    "signal",
                    "signal"
                  ]
                }
              },
              {
                "box": {
                  "id": "r48",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    300,
                    600,
                    101.0,
                    22
                  ],
                  "text": "send~ master_L"
                }
              },
              {
                "box": {
                  "id": "r49",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    450,
                    600,
                    101.0,
                    22
                  ],
                  "text": "send~ master_R"
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "source": [
                    "r1",
                    0
                  ],
                  "destination": [
                    "r2",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r2",
                    0
                  ],
                  "destination": [
                    "r3",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r4",
                    0
                  ],
                  "destination": [
                    "r5",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r5",
                    0
                  ],
                  "destination": [
                    "r6",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r6",
                    0
                  ],
                  "destination": [
                    "r7",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r8",
                    0
                  ],
                  "destination": [
                    "r11",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r9",
                    0
                  ],
                  "destination": [
                    "r11",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r10",
                    0
                  ],
                  "destination": [
                    "r11",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r11",
                    0
                  ],
                  "destination": [
                    "r12",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r12",
                    0
                  ],
                  "destination": [
                    "r13",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r13",
                    0
                  ],
                  "destination": [
                    "r14",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r7",
                    0
                  ],
                  "destination": [
                    "r14",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r15",
                    0
                  ],
                  "destination": [
                    "r16",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r16",
                    0
                  ],
                  "destination": [
                    "r17",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r18",
                    0
                  ],
                  "destination": [
                    "r19",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r19",
                    0
                  ],
                  "destination": [
                    "r20",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r20",
                    0
                  ],
                  "destination": [
                    "r21",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r22",
                    0
                  ],
                  "destination": [
                    "r25",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r23",
                    0
                  ],
                  "destination": [
                    "r25",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r24",
                    0
                  ],
                  "destination": [
                    "r25",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r25",
                    0
                  ],
                  "destination": [
                    "r26",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r26",
                    0
                  ],
                  "destination": [
                    "r27",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r27",
                    0
                  ],
                  "destination": [
                    "r28",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r21",
                    0
                  ],
                  "destination": [
                    "r28",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r29",
                    0
                  ],
                  "destination": [
                    "r30",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r30",
                    0
                  ],
                  "destination": [
                    "r31",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r32",
                    0
                  ],
                  "destination": [
                    "r33",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r33",
                    0
                  ],
                  "destination": [
                    "r34",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r34",
                    0
                  ],
                  "destination": [
                    "r35",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r36",
                    0
                  ],
                  "destination": [
                    "r39",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r37",
                    0
                  ],
                  "destination": [
                    "r39",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r38",
                    0
                  ],
                  "destination": [
                    "r39",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r39",
                    0
                  ],
                  "destination": [
                    "r40",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r40",
                    0
                  ],
                  "destination": [
                    "r41",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r41",
                    0
                  ],
                  "destination": [
                    "r42",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r35",
                    0
                  ],
                  "destination": [
                    "r42",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r28",
                    0
                  ],
                  "destination": [
                    "r43",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r42",
                    0
                  ],
                  "destination": [
                    "r43",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r14",
                    0
                  ],
                  "destination": [
                    "r44",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r43",
                    0
                  ],
                  "destination": [
                    "r44",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r44",
                    0
                  ],
                  "destination": [
                    "r47",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r45",
                    0
                  ],
                  "destination": [
                    "r46",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r46",
                    0
                  ],
                  "destination": [
                    "r47",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r47",
                    0
                  ],
                  "destination": [
                    "r48",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "r47",
                    1
                  ],
                  "destination": [
                    "r49",
                    0
                  ]
                }
              }
            ]
          },
          "patching_rect": [
            1092,
            350,
            80,
            22
          ],
          "text": "p layer_arp"
        }
      },
      {
        "box": {
          "id": "obj-406",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            50,
            420,
            122.5,
            22
          ],
          "text": "receive~ master_L",
          "outlettype": [
            "signal"
          ]
        }
      },
      {
        "box": {
          "id": "obj-407",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            300,
            420,
            122.5,
            22
          ],
          "text": "receive~ master_R",
          "outlettype": [
            "signal"
          ]
        }
      },
      {
        "box": {
          "id": "m700",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            620,
            420,
            64.0,
            22
          ],
          "text": "r blinds",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "m701",
          "maxclass": "newobj",
          "numinlets": 6,
          "numoutlets": 1,
          "patching_rect": [
            620,
            448,
            148.5,
            22
          ],
          "text": "scale 0 100 300 20000",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "m702",
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
          "id": "m703",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "patching_rect": [
            50,
            460,
            116.0,
            22
          ],
          "text": "lores~ 20000 0.7",
          "outlettype": [
            "signal"
          ]
        }
      },
      {
        "box": {
          "id": "m704",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "patching_rect": [
            300,
            460,
            116.0,
            22
          ],
          "text": "lores~ 20000 0.7",
          "outlettype": [
            "signal"
          ]
        }
      },
      {
        "box": {
          "id": "m710",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            620,
            510,
            70.5,
            22
          ],
          "text": "r weather",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "m711",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 3,
          "patching_rect": [
            620,
            538,
            57.5,
            22
          ],
          "text": "sel 1 0",
          "outlettype": [
            "bang",
            "bang",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "m712",
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
          "id": "m713",
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
          "id": "m714",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "patching_rect": [
            50,
            510,
            116.0,
            22
          ],
          "text": "lores~ 20000 0.5",
          "outlettype": [
            "signal"
          ]
        }
      },
      {
        "box": {
          "id": "m715",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "patching_rect": [
            300,
            510,
            116.0,
            22
          ],
          "text": "lores~ 20000 0.5",
          "outlettype": [
            "signal"
          ]
        }
      },
      {
        "box": {
          "id": "m720",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            620,
            600,
            77.0,
            22
          ],
          "text": "r lamp_val",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "m721",
          "maxclass": "newobj",
          "numinlets": 6,
          "numoutlets": 1,
          "patching_rect": [
            620,
            628,
            122.5,
            22
          ],
          "text": "scale 0 100 1. 3.",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "m722",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            50,
            560,
            77.0,
            22
          ],
          "text": "overdrive~",
          "outlettype": [
            "signal"
          ]
        }
      },
      {
        "box": {
          "id": "m723",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            300,
            560,
            77.0,
            22
          ],
          "text": "overdrive~",
          "outlettype": [
            "signal"
          ]
        }
      },
      {
        "box": {
          "id": "m730",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "patching_rect": [
            620,
            670,
            64.0,
            22
          ],
          "text": "r blinds",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "m731",
          "maxclass": "newobj",
          "numinlets": 6,
          "numoutlets": 1,
          "patching_rect": [
            620,
            698,
            142.0,
            22
          ],
          "text": "scale 0 100 0.17 0.7",
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "m732",
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
          "id": "m733",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            200,
            610,
            90.0,
            22
          ],
          "text": "line~ 0.7 50",
          "outlettype": [
            "signal",
            "bang"
          ]
        }
      },
      {
        "box": {
          "id": "m734",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            440,
            610,
            90.0,
            22
          ],
          "text": "line~ 0.7 50",
          "outlettype": [
            "signal",
            "bang"
          ]
        }
      },
      {
        "box": {
          "id": "m735",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            50,
            610,
            40,
            22
          ],
          "text": "*~",
          "outlettype": [
            "signal"
          ]
        }
      },
      {
        "box": {
          "id": "m736",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "patching_rect": [
            300,
            610,
            40,
            22
          ],
          "text": "*~",
          "outlettype": [
            "signal"
          ]
        }
      },
      {
        "box": {
          "id": "m740",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            50,
            660,
            116.0,
            22
          ],
          "text": "clip~ -0.95 0.95",
          "outlettype": [
            "signal"
          ]
        }
      },
      {
        "box": {
          "id": "m741",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            300,
            660,
            116.0,
            22
          ],
          "text": "clip~ -0.95 0.95",
          "outlettype": [
            "signal"
          ]
        }
      },
      {
        "box": {
          "id": "m742",
          "maxclass": "ezdac~",
          "numinlets": 2,
          "numoutlets": 0,
          "patching_rect": [
            170,
            700,
            45,
            45
          ]
        }
      },
      {
        "box": {
          "id": "lb_melody",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            50,
            780,
            64.0,
            22
          ],
          "text": "loadbang",
          "outlettype": [
            "bang"
          ]
        }
      },
      {
        "box": {
          "id": "lbm_v_melody",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            50,
            808,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "lbs_v_melody",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50,
            836,
            90.0,
            22
          ],
          "text": "s melody_vol"
        }
      },
      {
        "box": {
          "id": "lbm_a_melody",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            50,
            864,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "lbs_a_melody",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50,
            892,
            109.5,
            22
          ],
          "text": "s melody_active"
        }
      },
      {
        "box": {
          "id": "lbm_p_melody",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            50,
            920,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "lbs_p_melody",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50,
            948,
            90.0,
            22
          ],
          "text": "s melody_pan"
        }
      },
      {
        "box": {
          "id": "lb_melody2",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            190,
            780,
            64.0,
            22
          ],
          "text": "loadbang",
          "outlettype": [
            "bang"
          ]
        }
      },
      {
        "box": {
          "id": "lbm_v_melody2",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            190,
            808,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "lbs_v_melody2",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            190,
            836,
            96.5,
            22
          ],
          "text": "s melody2_vol"
        }
      },
      {
        "box": {
          "id": "lbm_a_melody2",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            190,
            864,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "lbs_a_melody2",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            190,
            892,
            116.0,
            22
          ],
          "text": "s melody2_active"
        }
      },
      {
        "box": {
          "id": "lbm_p_melody2",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            190,
            920,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "lbs_p_melody2",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            190,
            948,
            96.5,
            22
          ],
          "text": "s melody2_pan"
        }
      },
      {
        "box": {
          "id": "lb_harmony",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            330,
            780,
            64.0,
            22
          ],
          "text": "loadbang",
          "outlettype": [
            "bang"
          ]
        }
      },
      {
        "box": {
          "id": "lbm_v_harmony",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            330,
            808,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "lbs_v_harmony",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            330,
            836,
            96.5,
            22
          ],
          "text": "s harmony_vol"
        }
      },
      {
        "box": {
          "id": "lbm_a_harmony",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            330,
            864,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "lbs_a_harmony",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            330,
            892,
            116.0,
            22
          ],
          "text": "s harmony_active"
        }
      },
      {
        "box": {
          "id": "lbm_p_harmony",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            330,
            920,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "lbs_p_harmony",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            330,
            948,
            96.5,
            22
          ],
          "text": "s harmony_pan"
        }
      },
      {
        "box": {
          "id": "lb_bass",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            470,
            780,
            64.0,
            22
          ],
          "text": "loadbang",
          "outlettype": [
            "bang"
          ]
        }
      },
      {
        "box": {
          "id": "lbm_v_bass",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            470,
            808,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "lbs_v_bass",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            470,
            836,
            77.0,
            22
          ],
          "text": "s bass_vol"
        }
      },
      {
        "box": {
          "id": "lbm_a_bass",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            470,
            864,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "lbs_a_bass",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            470,
            892,
            96.5,
            22
          ],
          "text": "s bass_active"
        }
      },
      {
        "box": {
          "id": "lbm_p_bass",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            470,
            920,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "lbs_p_bass",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            470,
            948,
            77.0,
            22
          ],
          "text": "s bass_pan"
        }
      },
      {
        "box": {
          "id": "lb_rhythm",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            610,
            780,
            64.0,
            22
          ],
          "text": "loadbang",
          "outlettype": [
            "bang"
          ]
        }
      },
      {
        "box": {
          "id": "lbm_v_rhythm",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            610,
            808,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "lbs_v_rhythm",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            610,
            836,
            90.0,
            22
          ],
          "text": "s rhythm_vol"
        }
      },
      {
        "box": {
          "id": "lbm_a_rhythm",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            610,
            864,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "lbs_a_rhythm",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            610,
            892,
            109.5,
            22
          ],
          "text": "s rhythm_active"
        }
      },
      {
        "box": {
          "id": "lbm_p_rhythm",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            610,
            920,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "lbs_p_rhythm",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            610,
            948,
            90.0,
            22
          ],
          "text": "s rhythm_pan"
        }
      },
      {
        "box": {
          "id": "lb_pad",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            750,
            780,
            64.0,
            22
          ],
          "text": "loadbang",
          "outlettype": [
            "bang"
          ]
        }
      },
      {
        "box": {
          "id": "lbm_v_pad",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            750,
            808,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "lbs_v_pad",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            750,
            836,
            70.5,
            22
          ],
          "text": "s pad_vol"
        }
      },
      {
        "box": {
          "id": "lbm_a_pad",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            750,
            864,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "lbs_a_pad",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            750,
            892,
            90.0,
            22
          ],
          "text": "s pad_active"
        }
      },
      {
        "box": {
          "id": "lbm_p_pad",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            750,
            920,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "lbs_p_pad",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            750,
            948,
            70.5,
            22
          ],
          "text": "s pad_pan"
        }
      },
      {
        "box": {
          "id": "lb_texture",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            890,
            780,
            64.0,
            22
          ],
          "text": "loadbang",
          "outlettype": [
            "bang"
          ]
        }
      },
      {
        "box": {
          "id": "lbm_v_texture",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            890,
            808,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "lbs_v_texture",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            890,
            836,
            96.5,
            22
          ],
          "text": "s texture_vol"
        }
      },
      {
        "box": {
          "id": "lbm_a_texture",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            890,
            864,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "lbs_a_texture",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            890,
            892,
            116.0,
            22
          ],
          "text": "s texture_active"
        }
      },
      {
        "box": {
          "id": "lbm_p_texture",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            890,
            920,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "lbs_p_texture",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            890,
            948,
            96.5,
            22
          ],
          "text": "s texture_pan"
        }
      },
      {
        "box": {
          "id": "lb_arp",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            1030,
            780,
            64.0,
            22
          ],
          "text": "loadbang",
          "outlettype": [
            "bang"
          ]
        }
      },
      {
        "box": {
          "id": "lbm_v_arp",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1030,
            808,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "lbs_v_arp",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1030,
            836,
            70.5,
            22
          ],
          "text": "s arp_vol"
        }
      },
      {
        "box": {
          "id": "lbm_a_arp",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1030,
            864,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "lbs_a_arp",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1030,
            892,
            90.0,
            22
          ],
          "text": "s arp_active"
        }
      },
      {
        "box": {
          "id": "lbm_p_arp",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1030,
            920,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "lbs_p_arp",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1030,
            948,
            70.5,
            22
          ],
          "text": "s arp_pan"
        }
      },
      {
        "box": {
          "id": "lb_sparkle",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            1170,
            780,
            64.0,
            22
          ],
          "text": "loadbang",
          "outlettype": [
            "bang"
          ]
        }
      },
      {
        "box": {
          "id": "lbm_v_sparkle",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1170,
            808,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "lbs_v_sparkle",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1170,
            836,
            96.5,
            22
          ],
          "text": "s sparkle_vol"
        }
      },
      {
        "box": {
          "id": "lbm_a_sparkle",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1170,
            864,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "lbs_a_sparkle",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1170,
            892,
            116.0,
            22
          ],
          "text": "s sparkle_active"
        }
      },
      {
        "box": {
          "id": "lbm_p_sparkle",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1170,
            920,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "lbs_p_sparkle",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1170,
            948,
            96.5,
            22
          ],
          "text": "s sparkle_pan"
        }
      },
      {
        "box": {
          "id": "lb_env",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            50,
            990,
            64.0,
            22
          ],
          "text": "loadbang",
          "outlettype": [
            "bang"
          ]
        }
      },
      {
        "box": {
          "id": "lbm_bl",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            50,
            1018,
            30,
            22
          ],
          "text": "80"
        }
      },
      {
        "box": {
          "id": "lbs_bl",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            50,
            1046,
            64.0,
            22
          ],
          "text": "s blinds"
        }
      },
      {
        "box": {
          "id": "lbm_lp",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            160,
            1018,
            30,
            22
          ],
          "text": "5"
        }
      },
      {
        "box": {
          "id": "lbs_lp",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            160,
            1046,
            77.0,
            22
          ],
          "text": "s lamp_val"
        }
      },
      {
        "box": {
          "id": "lbm_we",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            270,
            1018,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "lbs_we",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            270,
            1046,
            70.5,
            22
          ],
          "text": "s weather"
        }
      },
      {
        "box": {
          "id": "lbm_tv",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            380,
            1018,
            30,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "lbs_tv",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            380,
            1046,
            77.0,
            22
          ],
          "text": "s time_val"
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "obj-1",
            0
          ],
          "destination": [
            "obj-2",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-2",
            0
          ],
          "destination": [
            "obj-5",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-2",
            1
          ],
          "destination": [
            "obj-6",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-2",
            2
          ],
          "destination": [
            "obj-7",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-2",
            3
          ],
          "destination": [
            "obj-8",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-2",
            4
          ],
          "destination": [
            "obj-10",
            0
          ]
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
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-10",
            1
          ],
          "destination": [
            "obj-12",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-10",
            2
          ],
          "destination": [
            "obj-13",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-2",
            5
          ],
          "destination": [
            "obj-14",
            0
          ]
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
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-14",
            1
          ],
          "destination": [
            "obj-16",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-14",
            2
          ],
          "destination": [
            "obj-17",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-2",
            6
          ],
          "destination": [
            "obj-18",
            0
          ]
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
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-18",
            1
          ],
          "destination": [
            "obj-20",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-18",
            2
          ],
          "destination": [
            "obj-21",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-2",
            7
          ],
          "destination": [
            "obj-22",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-22",
            0
          ],
          "destination": [
            "obj-23",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-22",
            1
          ],
          "destination": [
            "obj-24",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-22",
            2
          ],
          "destination": [
            "obj-25",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-2",
            8
          ],
          "destination": [
            "obj-26",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-26",
            0
          ],
          "destination": [
            "obj-27",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-26",
            1
          ],
          "destination": [
            "obj-28",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-26",
            2
          ],
          "destination": [
            "obj-29",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-2",
            9
          ],
          "destination": [
            "obj-30",
            0
          ]
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
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-30",
            1
          ],
          "destination": [
            "obj-32",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-30",
            2
          ],
          "destination": [
            "obj-33",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-2",
            10
          ],
          "destination": [
            "obj-34",
            0
          ]
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
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-34",
            1
          ],
          "destination": [
            "obj-36",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-34",
            2
          ],
          "destination": [
            "obj-37",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-2",
            11
          ],
          "destination": [
            "obj-38",
            0
          ]
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
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-38",
            1
          ],
          "destination": [
            "obj-40",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-38",
            2
          ],
          "destination": [
            "obj-41",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-2",
            12
          ],
          "destination": [
            "obj-42",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-42",
            0
          ],
          "destination": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-42",
            1
          ],
          "destination": [
            "obj-44",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-42",
            2
          ],
          "destination": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m700",
            0
          ],
          "destination": [
            "m701",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m701",
            0
          ],
          "destination": [
            "m702",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-406",
            0
          ],
          "destination": [
            "m703",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-407",
            0
          ],
          "destination": [
            "m704",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m702",
            0
          ],
          "destination": [
            "m703",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m702",
            0
          ],
          "destination": [
            "m704",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m710",
            0
          ],
          "destination": [
            "m711",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m711",
            0
          ],
          "destination": [
            "m712",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m711",
            1
          ],
          "destination": [
            "m713",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m703",
            0
          ],
          "destination": [
            "m714",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m704",
            0
          ],
          "destination": [
            "m715",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m712",
            0
          ],
          "destination": [
            "m714",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m713",
            0
          ],
          "destination": [
            "m714",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m712",
            0
          ],
          "destination": [
            "m715",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m713",
            0
          ],
          "destination": [
            "m715",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m720",
            0
          ],
          "destination": [
            "m721",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m714",
            0
          ],
          "destination": [
            "m722",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m715",
            0
          ],
          "destination": [
            "m723",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m721",
            0
          ],
          "destination": [
            "m722",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m721",
            0
          ],
          "destination": [
            "m723",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m730",
            0
          ],
          "destination": [
            "m731",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m731",
            0
          ],
          "destination": [
            "m732",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m732",
            0
          ],
          "destination": [
            "m733",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m732",
            0
          ],
          "destination": [
            "m734",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m722",
            0
          ],
          "destination": [
            "m735",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m723",
            0
          ],
          "destination": [
            "m736",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m733",
            0
          ],
          "destination": [
            "m735",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m734",
            0
          ],
          "destination": [
            "m736",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m735",
            0
          ],
          "destination": [
            "m740",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m736",
            0
          ],
          "destination": [
            "m741",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m740",
            0
          ],
          "destination": [
            "m742",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m741",
            0
          ],
          "destination": [
            "m742",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_melody",
            0
          ],
          "destination": [
            "lbm_v_melody",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lbm_v_melody",
            0
          ],
          "destination": [
            "lbs_v_melody",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_melody",
            0
          ],
          "destination": [
            "lbm_a_melody",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lbm_a_melody",
            0
          ],
          "destination": [
            "lbs_a_melody",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_melody",
            0
          ],
          "destination": [
            "lbm_p_melody",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lbm_p_melody",
            0
          ],
          "destination": [
            "lbs_p_melody",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_melody2",
            0
          ],
          "destination": [
            "lbm_v_melody2",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lbm_v_melody2",
            0
          ],
          "destination": [
            "lbs_v_melody2",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_melody2",
            0
          ],
          "destination": [
            "lbm_a_melody2",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lbm_a_melody2",
            0
          ],
          "destination": [
            "lbs_a_melody2",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_melody2",
            0
          ],
          "destination": [
            "lbm_p_melody2",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lbm_p_melody2",
            0
          ],
          "destination": [
            "lbs_p_melody2",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_harmony",
            0
          ],
          "destination": [
            "lbm_v_harmony",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lbm_v_harmony",
            0
          ],
          "destination": [
            "lbs_v_harmony",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_harmony",
            0
          ],
          "destination": [
            "lbm_a_harmony",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lbm_a_harmony",
            0
          ],
          "destination": [
            "lbs_a_harmony",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_harmony",
            0
          ],
          "destination": [
            "lbm_p_harmony",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lbm_p_harmony",
            0
          ],
          "destination": [
            "lbs_p_harmony",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_bass",
            0
          ],
          "destination": [
            "lbm_v_bass",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lbm_v_bass",
            0
          ],
          "destination": [
            "lbs_v_bass",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_bass",
            0
          ],
          "destination": [
            "lbm_a_bass",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lbm_a_bass",
            0
          ],
          "destination": [
            "lbs_a_bass",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_bass",
            0
          ],
          "destination": [
            "lbm_p_bass",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lbm_p_bass",
            0
          ],
          "destination": [
            "lbs_p_bass",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_rhythm",
            0
          ],
          "destination": [
            "lbm_v_rhythm",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lbm_v_rhythm",
            0
          ],
          "destination": [
            "lbs_v_rhythm",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_rhythm",
            0
          ],
          "destination": [
            "lbm_a_rhythm",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lbm_a_rhythm",
            0
          ],
          "destination": [
            "lbs_a_rhythm",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_rhythm",
            0
          ],
          "destination": [
            "lbm_p_rhythm",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lbm_p_rhythm",
            0
          ],
          "destination": [
            "lbs_p_rhythm",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_pad",
            0
          ],
          "destination": [
            "lbm_v_pad",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lbm_v_pad",
            0
          ],
          "destination": [
            "lbs_v_pad",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_pad",
            0
          ],
          "destination": [
            "lbm_a_pad",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lbm_a_pad",
            0
          ],
          "destination": [
            "lbs_a_pad",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_pad",
            0
          ],
          "destination": [
            "lbm_p_pad",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lbm_p_pad",
            0
          ],
          "destination": [
            "lbs_p_pad",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_texture",
            0
          ],
          "destination": [
            "lbm_v_texture",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lbm_v_texture",
            0
          ],
          "destination": [
            "lbs_v_texture",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_texture",
            0
          ],
          "destination": [
            "lbm_a_texture",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lbm_a_texture",
            0
          ],
          "destination": [
            "lbs_a_texture",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_texture",
            0
          ],
          "destination": [
            "lbm_p_texture",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lbm_p_texture",
            0
          ],
          "destination": [
            "lbs_p_texture",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_arp",
            0
          ],
          "destination": [
            "lbm_v_arp",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lbm_v_arp",
            0
          ],
          "destination": [
            "lbs_v_arp",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_arp",
            0
          ],
          "destination": [
            "lbm_a_arp",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lbm_a_arp",
            0
          ],
          "destination": [
            "lbs_a_arp",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_arp",
            0
          ],
          "destination": [
            "lbm_p_arp",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lbm_p_arp",
            0
          ],
          "destination": [
            "lbs_p_arp",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_sparkle",
            0
          ],
          "destination": [
            "lbm_v_sparkle",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lbm_v_sparkle",
            0
          ],
          "destination": [
            "lbs_v_sparkle",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_sparkle",
            0
          ],
          "destination": [
            "lbm_a_sparkle",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lbm_a_sparkle",
            0
          ],
          "destination": [
            "lbs_a_sparkle",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lb_sparkle",
            0
          ],
          "destination": [
            "lbm_p_sparkle",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lbm_p_sparkle",
            0
          ],
          "destination": [
            "lbs_p_sparkle",
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
            "lbm_bl",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lbm_bl",
            0
          ],
          "destination": [
            "lbs_bl",
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
            "lbm_lp",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lbm_lp",
            0
          ],
          "destination": [
            "lbs_lp",
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
            "lbm_we",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lbm_we",
            0
          ],
          "destination": [
            "lbs_we",
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
            "lbm_tv",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lbm_tv",
            0
          ],
          "destination": [
            "lbs_tv",
            0
          ]
        }
      }
    ],
    "autosave": 0
  }
}