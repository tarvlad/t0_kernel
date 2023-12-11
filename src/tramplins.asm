[bits 32]

global tramplin_0
global tramplin_1
global tramplin_2
global tramplin_3
global tramplin_4
global tramplin_5
global tramplin_6
global tramplin_7
global tramplin_8
global tramplin_9
global tramplin_a
global tramplin_b
global tramplin_c
global tramplin_d
global tramplin_e
global tramplin_f
global tramplin_10
global tramplin_11
global tramplin_12
global tramplin_13
global tramplin_14
global tramplin_15
global tramplin_16
global tramplin_17
global tramplin_18
global tramplin_19
global tramplin_1a
global tramplin_1b
global tramplin_1c
global tramplin_1d
global tramplin_1e
global tramplin_1f
global tramplin_20
global tramplin_21
global tramplin_22
global tramplin_23
global tramplin_24
global tramplin_25
global tramplin_26
global tramplin_27
global tramplin_28
global tramplin_29
global tramplin_2a
global tramplin_2b
global tramplin_2c
global tramplin_2d
global tramplin_2e
global tramplin_2f
global tramplin_30
global tramplin_31
global tramplin_32
global tramplin_33
global tramplin_34
global tramplin_35
global tramplin_36
global tramplin_37
global tramplin_38
global tramplin_39
global tramplin_3a
global tramplin_3b
global tramplin_3c
global tramplin_3d
global tramplin_3e
global tramplin_3f
global tramplin_40
global tramplin_41
global tramplin_42
global tramplin_43
global tramplin_44
global tramplin_45
global tramplin_46
global tramplin_47
global tramplin_48
global tramplin_49
global tramplin_4a
global tramplin_4b
global tramplin_4c
global tramplin_4d
global tramplin_4e
global tramplin_4f
global tramplin_50
global tramplin_51
global tramplin_52
global tramplin_53
global tramplin_54
global tramplin_55
global tramplin_56
global tramplin_57
global tramplin_58
global tramplin_59
global tramplin_5a
global tramplin_5b
global tramplin_5c
global tramplin_5d
global tramplin_5e
global tramplin_5f
global tramplin_60
global tramplin_61
global tramplin_62
global tramplin_63
global tramplin_64
global tramplin_65
global tramplin_66
global tramplin_67
global tramplin_68
global tramplin_69
global tramplin_6a
global tramplin_6b
global tramplin_6c
global tramplin_6d
global tramplin_6e
global tramplin_6f
global tramplin_70
global tramplin_71
global tramplin_72
global tramplin_73
global tramplin_74
global tramplin_75
global tramplin_76
global tramplin_77
global tramplin_78
global tramplin_79
global tramplin_7a
global tramplin_7b
global tramplin_7c
global tramplin_7d
global tramplin_7e
global tramplin_7f
global tramplin_80
global tramplin_81
global tramplin_82
global tramplin_83
global tramplin_84
global tramplin_85
global tramplin_86
global tramplin_87
global tramplin_88
global tramplin_89
global tramplin_8a
global tramplin_8b
global tramplin_8c
global tramplin_8d
global tramplin_8e
global tramplin_8f
global tramplin_90
global tramplin_91
global tramplin_92
global tramplin_93
global tramplin_94
global tramplin_95
global tramplin_96
global tramplin_97
global tramplin_98
global tramplin_99
global tramplin_9a
global tramplin_9b
global tramplin_9c
global tramplin_9d
global tramplin_9e
global tramplin_9f
global tramplin_a0
global tramplin_a1
global tramplin_a2
global tramplin_a3
global tramplin_a4
global tramplin_a5
global tramplin_a6
global tramplin_a7
global tramplin_a8
global tramplin_a9
global tramplin_aa
global tramplin_ab
global tramplin_ac
global tramplin_ad
global tramplin_ae
global tramplin_af
global tramplin_b0
global tramplin_b1
global tramplin_b2
global tramplin_b3
global tramplin_b4
global tramplin_b5
global tramplin_b6
global tramplin_b7
global tramplin_b8
global tramplin_b9
global tramplin_ba
global tramplin_bb
global tramplin_bc
global tramplin_bd
global tramplin_be
global tramplin_bf
global tramplin_c0
global tramplin_c1
global tramplin_c2
global tramplin_c3
global tramplin_c4
global tramplin_c5
global tramplin_c6
global tramplin_c7
global tramplin_c8
global tramplin_c9
global tramplin_ca
global tramplin_cb
global tramplin_cc
global tramplin_cd
global tramplin_ce
global tramplin_cf
global tramplin_d0
global tramplin_d1
global tramplin_d2
global tramplin_d3
global tramplin_d4
global tramplin_d5
global tramplin_d6
global tramplin_d7
global tramplin_d8
global tramplin_d9
global tramplin_da
global tramplin_db
global tramplin_dc
global tramplin_dd
global tramplin_de
global tramplin_df
global tramplin_e0
global tramplin_e1
global tramplin_e2
global tramplin_e3
global tramplin_e4
global tramplin_e5
global tramplin_e6
global tramplin_e7
global tramplin_e8
global tramplin_e9
global tramplin_ea
global tramplin_eb
global tramplin_ec
global tramplin_ed
global tramplin_ee
global tramplin_ef
global tramplin_f0
global tramplin_f1
global tramplin_f2
global tramplin_f3
global tramplin_f4
global tramplin_f5
global tramplin_f6
global tramplin_f7
global tramplin_f8
global tramplin_f9
global tramplin_fa
global tramplin_fb
global tramplin_fc
global tramplin_fd
global tramplin_fe
global tramplin_ff


tramplin_0:
push 0x0
jmp collect_context

tramplin_1:
push 0x1
jmp collect_context

tramplin_2:
push 0x2
jmp collect_context

tramplin_3:
push 0x3
jmp collect_context

tramplin_4:
push 0x4
jmp collect_context

tramplin_5:
push 0x5
jmp collect_context

tramplin_6:
push 0x6
jmp collect_context

tramplin_7:
push 0x7
jmp collect_context

tramplin_8:
push 0x8
jmp collect_context

tramplin_9:
push 0x9
jmp collect_context

tramplin_a:
push 0xa
jmp collect_context

tramplin_b:
push 0xb
jmp collect_context

tramplin_c:
push 0xc
jmp collect_context

tramplin_d:
push 0xd
jmp collect_context

tramplin_e:
push 0xe
jmp collect_context

tramplin_f:
push 0xf
jmp collect_context

tramplin_10:
push 0x10
jmp collect_context

tramplin_11:
push 0x11
jmp collect_context

tramplin_12:
push 0x12
jmp collect_context

tramplin_13:
push 0x13
jmp collect_context

tramplin_14:
push 0x14
jmp collect_context

tramplin_15:
push 0x15
jmp collect_context

tramplin_16:
push 0x16
jmp collect_context

tramplin_17:
push 0x17
jmp collect_context

tramplin_18:
push 0x18
jmp collect_context

tramplin_19:
push 0x19
jmp collect_context

tramplin_1a:
push 0x1a
jmp collect_context

tramplin_1b:
push 0x1b
jmp collect_context

tramplin_1c:
push 0x1c
jmp collect_context

tramplin_1d:
push 0x1d
jmp collect_context

tramplin_1e:
push 0x1e
jmp collect_context

tramplin_1f:
push 0x1f
jmp collect_context

tramplin_20:
push 0x20
jmp collect_context

tramplin_21:
push 0x21
jmp collect_context

tramplin_22:
push 0x22
jmp collect_context

tramplin_23:
push 0x23
jmp collect_context

tramplin_24:
push 0x24
jmp collect_context

tramplin_25:
push 0x25
jmp collect_context

tramplin_26:
push 0x26
jmp collect_context

tramplin_27:
push 0x27
jmp collect_context

tramplin_28:
push 0x28
jmp collect_context

tramplin_29:
push 0x29
jmp collect_context

tramplin_2a:
push 0x2a
jmp collect_context

tramplin_2b:
push 0x2b
jmp collect_context

tramplin_2c:
push 0x2c
jmp collect_context

tramplin_2d:
push 0x2d
jmp collect_context

tramplin_2e:
push 0x2e
jmp collect_context

tramplin_2f:
push 0x2f
jmp collect_context

tramplin_30:
push 0x30
jmp collect_context

tramplin_31:
push 0x31
jmp collect_context

tramplin_32:
push 0x32
jmp collect_context

tramplin_33:
push 0x33
jmp collect_context

tramplin_34:
push 0x34
jmp collect_context

tramplin_35:
push 0x35
jmp collect_context

tramplin_36:
push 0x36
jmp collect_context

tramplin_37:
push 0x37
jmp collect_context

tramplin_38:
push 0x38
jmp collect_context

tramplin_39:
push 0x39
jmp collect_context

tramplin_3a:
push 0x3a
jmp collect_context

tramplin_3b:
push 0x3b
jmp collect_context

tramplin_3c:
push 0x3c
jmp collect_context

tramplin_3d:
push 0x3d
jmp collect_context

tramplin_3e:
push 0x3e
jmp collect_context

tramplin_3f:
push 0x3f
jmp collect_context

tramplin_40:
push 0x40
jmp collect_context

tramplin_41:
push 0x41
jmp collect_context

tramplin_42:
push 0x42
jmp collect_context

tramplin_43:
push 0x43
jmp collect_context

tramplin_44:
push 0x44
jmp collect_context

tramplin_45:
push 0x45
jmp collect_context

tramplin_46:
push 0x46
jmp collect_context

tramplin_47:
push 0x47
jmp collect_context

tramplin_48:
push 0x48
jmp collect_context

tramplin_49:
push 0x49
jmp collect_context

tramplin_4a:
push 0x4a
jmp collect_context

tramplin_4b:
push 0x4b
jmp collect_context

tramplin_4c:
push 0x4c
jmp collect_context

tramplin_4d:
push 0x4d
jmp collect_context

tramplin_4e:
push 0x4e
jmp collect_context

tramplin_4f:
push 0x4f
jmp collect_context

tramplin_50:
push 0x50
jmp collect_context

tramplin_51:
push 0x51
jmp collect_context

tramplin_52:
push 0x52
jmp collect_context

tramplin_53:
push 0x53
jmp collect_context

tramplin_54:
push 0x54
jmp collect_context

tramplin_55:
push 0x55
jmp collect_context

tramplin_56:
push 0x56
jmp collect_context

tramplin_57:
push 0x57
jmp collect_context

tramplin_58:
push 0x58
jmp collect_context

tramplin_59:
push 0x59
jmp collect_context

tramplin_5a:
push 0x5a
jmp collect_context

tramplin_5b:
push 0x5b
jmp collect_context

tramplin_5c:
push 0x5c
jmp collect_context

tramplin_5d:
push 0x5d
jmp collect_context

tramplin_5e:
push 0x5e
jmp collect_context

tramplin_5f:
push 0x5f
jmp collect_context

tramplin_60:
push 0x60
jmp collect_context

tramplin_61:
push 0x61
jmp collect_context

tramplin_62:
push 0x62
jmp collect_context

tramplin_63:
push 0x63
jmp collect_context

tramplin_64:
push 0x64
jmp collect_context

tramplin_65:
push 0x65
jmp collect_context

tramplin_66:
push 0x66
jmp collect_context

tramplin_67:
push 0x67
jmp collect_context

tramplin_68:
push 0x68
jmp collect_context

tramplin_69:
push 0x69
jmp collect_context

tramplin_6a:
push 0x6a
jmp collect_context

tramplin_6b:
push 0x6b
jmp collect_context

tramplin_6c:
push 0x6c
jmp collect_context

tramplin_6d:
push 0x6d
jmp collect_context

tramplin_6e:
push 0x6e
jmp collect_context

tramplin_6f:
push 0x6f
jmp collect_context

tramplin_70:
push 0x70
jmp collect_context

tramplin_71:
push 0x71
jmp collect_context

tramplin_72:
push 0x72
jmp collect_context

tramplin_73:
push 0x73
jmp collect_context

tramplin_74:
push 0x74
jmp collect_context

tramplin_75:
push 0x75
jmp collect_context

tramplin_76:
push 0x76
jmp collect_context

tramplin_77:
push 0x77
jmp collect_context

tramplin_78:
push 0x78
jmp collect_context

tramplin_79:
push 0x79
jmp collect_context

tramplin_7a:
push 0x7a
jmp collect_context

tramplin_7b:
push 0x7b
jmp collect_context

tramplin_7c:
push 0x7c
jmp collect_context

tramplin_7d:
push 0x7d
jmp collect_context

tramplin_7e:
push 0x7e
jmp collect_context

tramplin_7f:
push 0x7f
jmp collect_context

tramplin_80:
push 0x80
jmp collect_context

tramplin_81:
push 0x81
jmp collect_context

tramplin_82:
push 0x82
jmp collect_context

tramplin_83:
push 0x83
jmp collect_context

tramplin_84:
push 0x84
jmp collect_context

tramplin_85:
push 0x85
jmp collect_context

tramplin_86:
push 0x86
jmp collect_context

tramplin_87:
push 0x87
jmp collect_context

tramplin_88:
push 0x88
jmp collect_context

tramplin_89:
push 0x89
jmp collect_context

tramplin_8a:
push 0x8a
jmp collect_context

tramplin_8b:
push 0x8b
jmp collect_context

tramplin_8c:
push 0x8c
jmp collect_context

tramplin_8d:
push 0x8d
jmp collect_context

tramplin_8e:
push 0x8e
jmp collect_context

tramplin_8f:
push 0x8f
jmp collect_context

tramplin_90:
push 0x90
jmp collect_context

tramplin_91:
push 0x91
jmp collect_context

tramplin_92:
push 0x92
jmp collect_context

tramplin_93:
push 0x93
jmp collect_context

tramplin_94:
push 0x94
jmp collect_context

tramplin_95:
push 0x95
jmp collect_context

tramplin_96:
push 0x96
jmp collect_context

tramplin_97:
push 0x97
jmp collect_context

tramplin_98:
push 0x98
jmp collect_context

tramplin_99:
push 0x99
jmp collect_context

tramplin_9a:
push 0x9a
jmp collect_context

tramplin_9b:
push 0x9b
jmp collect_context

tramplin_9c:
push 0x9c
jmp collect_context

tramplin_9d:
push 0x9d
jmp collect_context

tramplin_9e:
push 0x9e
jmp collect_context

tramplin_9f:
push 0x9f
jmp collect_context

tramplin_a0:
push 0xa0
jmp collect_context

tramplin_a1:
push 0xa1
jmp collect_context

tramplin_a2:
push 0xa2
jmp collect_context

tramplin_a3:
push 0xa3
jmp collect_context

tramplin_a4:
push 0xa4
jmp collect_context

tramplin_a5:
push 0xa5
jmp collect_context

tramplin_a6:
push 0xa6
jmp collect_context

tramplin_a7:
push 0xa7
jmp collect_context

tramplin_a8:
push 0xa8
jmp collect_context

tramplin_a9:
push 0xa9
jmp collect_context

tramplin_aa:
push 0xaa
jmp collect_context

tramplin_ab:
push 0xab
jmp collect_context

tramplin_ac:
push 0xac
jmp collect_context

tramplin_ad:
push 0xad
jmp collect_context

tramplin_ae:
push 0xae
jmp collect_context

tramplin_af:
push 0xaf
jmp collect_context

tramplin_b0:
push 0xb0
jmp collect_context

tramplin_b1:
push 0xb1
jmp collect_context

tramplin_b2:
push 0xb2
jmp collect_context

tramplin_b3:
push 0xb3
jmp collect_context

tramplin_b4:
push 0xb4
jmp collect_context

tramplin_b5:
push 0xb5
jmp collect_context

tramplin_b6:
push 0xb6
jmp collect_context

tramplin_b7:
push 0xb7
jmp collect_context

tramplin_b8:
push 0xb8
jmp collect_context

tramplin_b9:
push 0xb9
jmp collect_context

tramplin_ba:
push 0xba
jmp collect_context

tramplin_bb:
push 0xbb
jmp collect_context

tramplin_bc:
push 0xbc
jmp collect_context

tramplin_bd:
push 0xbd
jmp collect_context

tramplin_be:
push 0xbe
jmp collect_context

tramplin_bf:
push 0xbf
jmp collect_context

tramplin_c0:
push 0xc0
jmp collect_context

tramplin_c1:
push 0xc1
jmp collect_context

tramplin_c2:
push 0xc2
jmp collect_context

tramplin_c3:
push 0xc3
jmp collect_context

tramplin_c4:
push 0xc4
jmp collect_context

tramplin_c5:
push 0xc5
jmp collect_context

tramplin_c6:
push 0xc6
jmp collect_context

tramplin_c7:
push 0xc7
jmp collect_context

tramplin_c8:
push 0xc8
jmp collect_context

tramplin_c9:
push 0xc9
jmp collect_context

tramplin_ca:
push 0xca
jmp collect_context

tramplin_cb:
push 0xcb
jmp collect_context

tramplin_cc:
push 0xcc
jmp collect_context

tramplin_cd:
push 0xcd
jmp collect_context

tramplin_ce:
push 0xce
jmp collect_context

tramplin_cf:
push 0xcf
jmp collect_context

tramplin_d0:
push 0xd0
jmp collect_context

tramplin_d1:
push 0xd1
jmp collect_context

tramplin_d2:
push 0xd2
jmp collect_context

tramplin_d3:
push 0xd3
jmp collect_context

tramplin_d4:
push 0xd4
jmp collect_context

tramplin_d5:
push 0xd5
jmp collect_context

tramplin_d6:
push 0xd6
jmp collect_context

tramplin_d7:
push 0xd7
jmp collect_context

tramplin_d8:
push 0xd8
jmp collect_context

tramplin_d9:
push 0xd9
jmp collect_context

tramplin_da:
push 0xda
jmp collect_context

tramplin_db:
push 0xdb
jmp collect_context

tramplin_dc:
push 0xdc
jmp collect_context

tramplin_dd:
push 0xdd
jmp collect_context

tramplin_de:
push 0xde
jmp collect_context

tramplin_df:
push 0xdf
jmp collect_context

tramplin_e0:
push 0xe0
jmp collect_context

tramplin_e1:
push 0xe1
jmp collect_context

tramplin_e2:
push 0xe2
jmp collect_context

tramplin_e3:
push 0xe3
jmp collect_context

tramplin_e4:
push 0xe4
jmp collect_context

tramplin_e5:
push 0xe5
jmp collect_context

tramplin_e6:
push 0xe6
jmp collect_context

tramplin_e7:
push 0xe7
jmp collect_context

tramplin_e8:
push 0xe8
jmp collect_context

tramplin_e9:
push 0xe9
jmp collect_context

tramplin_ea:
push 0xea
jmp collect_context

tramplin_eb:
push 0xeb
jmp collect_context

tramplin_ec:
push 0xec
jmp collect_context

tramplin_ed:
push 0xed
jmp collect_context

tramplin_ee:
push 0xee
jmp collect_context

tramplin_ef:
push 0xef
jmp collect_context

tramplin_f0:
push 0xf0
jmp collect_context

tramplin_f1:
push 0xf1
jmp collect_context

tramplin_f2:
push 0xf2
jmp collect_context

tramplin_f3:
push 0xf3
jmp collect_context

tramplin_f4:
push 0xf4
jmp collect_context

tramplin_f5:
push 0xf5
jmp collect_context

tramplin_f6:
push 0xf6
jmp collect_context

tramplin_f7:
push 0xf7
jmp collect_context

tramplin_f8:
push 0xf8
jmp collect_context

tramplin_f9:
push 0xf9
jmp collect_context

tramplin_fa:
push 0xfa
jmp collect_context

tramplin_fb:
push 0xfb
jmp collect_context

tramplin_fc:
push 0xfc
jmp collect_context

tramplin_fd:
push 0xfd
jmp collect_context

tramplin_fe:
push 0xfe
jmp collect_context

tramplin_ff:
push 0xff
jmp collect_context


collect_context:
hlt
;TODO
