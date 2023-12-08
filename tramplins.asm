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
global tramplin_A
global tramplin_B
global tramplin_C
global tramplin_D
global tramplin_E
global tramplin_F
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
global tramplin_1A
global tramplin_1B
global tramplin_1C
global tramplin_1D
global tramplin_1E
global tramplin_1F
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
global tramplin_2A
global tramplin_2B
global tramplin_2C
global tramplin_2D
global tramplin_2E
global tramplin_2F
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
global tramplin_3A
global tramplin_3B
global tramplin_3C
global tramplin_3D
global tramplin_3E
global tramplin_3F
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
global tramplin_4A
global tramplin_4B
global tramplin_4C
global tramplin_4D
global tramplin_4E
global tramplin_4F
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
global tramplin_5A
global tramplin_5B
global tramplin_5C
global tramplin_5D
global tramplin_5E
global tramplin_5F
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
global tramplin_6A
global tramplin_6B
global tramplin_6C
global tramplin_6D
global tramplin_6E
global tramplin_6F
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
global tramplin_7A
global tramplin_7B
global tramplin_7C
global tramplin_7D
global tramplin_7E
global tramplin_7F
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
global tramplin_8A
global tramplin_8B
global tramplin_8C
global tramplin_8D
global tramplin_8E
global tramplin_8F
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
global tramplin_9A
global tramplin_9B
global tramplin_9C
global tramplin_9D
global tramplin_9E
global tramplin_9F
global tramplin_A0
global tramplin_A1
global tramplin_A2
global tramplin_A3
global tramplin_A4
global tramplin_A5
global tramplin_A6
global tramplin_A7
global tramplin_A8
global tramplin_A9
global tramplin_AA
global tramplin_AB
global tramplin_AC
global tramplin_AD
global tramplin_AE
global tramplin_AF
global tramplin_B0
global tramplin_B1
global tramplin_B2
global tramplin_B3
global tramplin_B4
global tramplin_B5
global tramplin_B6
global tramplin_B7
global tramplin_B8
global tramplin_B9
global tramplin_BA
global tramplin_BB
global tramplin_BC
global tramplin_BD
global tramplin_BE
global tramplin_BF
global tramplin_C0
global tramplin_C1
global tramplin_C2
global tramplin_C3
global tramplin_C4
global tramplin_C5
global tramplin_C6
global tramplin_C7
global tramplin_C8
global tramplin_C9
global tramplin_CA
global tramplin_CB
global tramplin_CC
global tramplin_CD
global tramplin_CE
global tramplin_CF
global tramplin_D0
global tramplin_D1
global tramplin_D2
global tramplin_D3
global tramplin_D4
global tramplin_D5
global tramplin_D6
global tramplin_D7
global tramplin_D8
global tramplin_D9
global tramplin_DA
global tramplin_DB
global tramplin_DC
global tramplin_DD
global tramplin_DE
global tramplin_DF
global tramplin_E0
global tramplin_E1
global tramplin_E2
global tramplin_E3
global tramplin_E4
global tramplin_E5
global tramplin_E6
global tramplin_E7
global tramplin_E8
global tramplin_E9
global tramplin_EA
global tramplin_EB
global tramplin_EC
global tramplin_ED
global tramplin_EE
global tramplin_EF
global tramplin_F0
global tramplin_F1
global tramplin_F2
global tramplin_F3
global tramplin_F4
global tramplin_F5
global tramplin_F6
global tramplin_F7
global tramplin_F8
global tramplin_F9
global tramplin_FA
global tramplin_FB
global tramplin_FC
global tramplin_FD
global tramplin_FE
global tramplin_FF


tramplin_0:
push dword 0xFFFFFFFF
push dword 0x0
jmp collect_context

tramplin_1:
push dword 0xFFFFFFFF
push dword 0x1
jmp collect_context

tramplin_2:
push dword 0xFFFFFFFF
push dword 0x2
jmp collect_context

tramplin_3:
push dword 0xFFFFFFFF
push dword 0x3
jmp collect_context

tramplin_4:
push dword 0xFFFFFFFF
push dword 0x4
jmp collect_context

tramplin_5:
push dword 0xFFFFFFFF
push dword 0x5
jmp collect_context

tramplin_6:
push dword 0xFFFFFFFF
push dword 0x6
jmp collect_context

tramplin_7:
push dword 0xFFFFFFFF
push dword 0x7
jmp collect_context

tramplin_8:
push dword 0x8
jmp collect_context

tramplin_9:
push dword 0xFFFFFFFF
push dword 0x9
jmp collect_context

tramplin_A:
push dword 0xA
jmp collect_context

tramplin_B:
push dword 0xB
jmp collect_context

tramplin_C:
push dword 0xC
jmp collect_context

tramplin_D:
push dword 0xD
jmp collect_context

tramplin_E:
push dword 0xE
jmp collect_context

tramplin_F:
push dword 0xFFFFFFFF
push dword 0xF
jmp collect_context

tramplin_10:
push dword 0xFFFFFFFF
push dword 0x10
jmp collect_context

tramplin_11:
push dword 0x11
jmp collect_context

tramplin_12:
push dword 0xFFFFFFFF
push dword 0x12
jmp collect_context

tramplin_13:
push dword 0xFFFFFFFF
push dword 0x13
jmp collect_context

tramplin_14:
push dword 0xFFFFFFFF
push dword 0x14
jmp collect_context

tramplin_15:
push dword 0x15
jmp collect_context

tramplin_16:
push dword 0xFFFFFFFF
push dword 0x16
jmp collect_context

tramplin_17:
push dword 0xFFFFFFFF
push dword 0x17
jmp collect_context

tramplin_18:
push dword 0xFFFFFFFF
push dword 0x18
jmp collect_context

tramplin_19:
push dword 0xFFFFFFFF
push dword 0x19
jmp collect_context

tramplin_1A:
push dword 0xFFFFFFFF
push dword 0x1A
jmp collect_context

tramplin_1B:
push dword 0xFFFFFFFF
push dword 0x1B
jmp collect_context

tramplin_1C:
push dword 0xFFFFFFFF
push dword 0x1C
jmp collect_context

tramplin_1D:
push dword 0x1D
jmp collect_context

tramplin_1E:
push dword 0x1E
jmp collect_context

tramplin_1F:
push dword 0xFFFFFFFF
push dword 0x1F
jmp collect_context

tramplin_20:
push dword 0x20
jmp collect_context

tramplin_21:
push dword 0x21
jmp collect_context

tramplin_22:
push dword 0x22
jmp collect_context

tramplin_23:
push dword 0x23
jmp collect_context

tramplin_24:
push dword 0x24
jmp collect_context

tramplin_25:
push dword 0x25
jmp collect_context

tramplin_26:
push dword 0x26
jmp collect_context

tramplin_27:
push dword 0x27
jmp collect_context

tramplin_28:
push dword 0x28
jmp collect_context

tramplin_29:
push dword 0x29
jmp collect_context

tramplin_2A:
push dword 0x2A
jmp collect_context

tramplin_2B:
push dword 0x2B
jmp collect_context

tramplin_2C:
push dword 0x2C
jmp collect_context

tramplin_2D:
push dword 0x2D
jmp collect_context

tramplin_2E:
push dword 0x2E
jmp collect_context

tramplin_2F:
push dword 0x2F
jmp collect_context

tramplin_30:
push dword 0x30
jmp collect_context

tramplin_31:
push dword 0x31
jmp collect_context

tramplin_32:
push dword 0x32
jmp collect_context

tramplin_33:
push dword 0x33
jmp collect_context

tramplin_34:
push dword 0x34
jmp collect_context

tramplin_35:
push dword 0x35
jmp collect_context

tramplin_36:
push dword 0x36
jmp collect_context

tramplin_37:
push dword 0x37
jmp collect_context

tramplin_38:
push dword 0x38
jmp collect_context

tramplin_39:
push dword 0x39
jmp collect_context

tramplin_3A:
push dword 0x3A
jmp collect_context

tramplin_3B:
push dword 0x3B
jmp collect_context

tramplin_3C:
push dword 0x3C
jmp collect_context

tramplin_3D:
push dword 0x3D
jmp collect_context

tramplin_3E:
push dword 0x3E
jmp collect_context

tramplin_3F:
push dword 0x3F
jmp collect_context

tramplin_40:
push dword 0x40
jmp collect_context

tramplin_41:
push dword 0x41
jmp collect_context

tramplin_42:
push dword 0x42
jmp collect_context

tramplin_43:
push dword 0x43
jmp collect_context

tramplin_44:
push dword 0x44
jmp collect_context

tramplin_45:
push dword 0x45
jmp collect_context

tramplin_46:
push dword 0x46
jmp collect_context

tramplin_47:
push dword 0x47
jmp collect_context

tramplin_48:
push dword 0x48
jmp collect_context

tramplin_49:
push dword 0x49
jmp collect_context

tramplin_4A:
push dword 0x4A
jmp collect_context

tramplin_4B:
push dword 0x4B
jmp collect_context

tramplin_4C:
push dword 0x4C
jmp collect_context

tramplin_4D:
push dword 0x4D
jmp collect_context

tramplin_4E:
push dword 0x4E
jmp collect_context

tramplin_4F:
push dword 0x4F
jmp collect_context

tramplin_50:
push dword 0x50
jmp collect_context

tramplin_51:
push dword 0x51
jmp collect_context

tramplin_52:
push dword 0x52
jmp collect_context

tramplin_53:
push dword 0x53
jmp collect_context

tramplin_54:
push dword 0x54
jmp collect_context

tramplin_55:
push dword 0x55
jmp collect_context

tramplin_56:
push dword 0x56
jmp collect_context

tramplin_57:
push dword 0x57
jmp collect_context

tramplin_58:
push dword 0x58
jmp collect_context

tramplin_59:
push dword 0x59
jmp collect_context

tramplin_5A:
push dword 0x5A
jmp collect_context

tramplin_5B:
push dword 0x5B
jmp collect_context

tramplin_5C:
push dword 0x5C
jmp collect_context

tramplin_5D:
push dword 0x5D
jmp collect_context

tramplin_5E:
push dword 0x5E
jmp collect_context

tramplin_5F:
push dword 0x5F
jmp collect_context

tramplin_60:
push dword 0x60
jmp collect_context

tramplin_61:
push dword 0x61
jmp collect_context

tramplin_62:
push dword 0x62
jmp collect_context

tramplin_63:
push dword 0x63
jmp collect_context

tramplin_64:
push dword 0x64
jmp collect_context

tramplin_65:
push dword 0x65
jmp collect_context

tramplin_66:
push dword 0x66
jmp collect_context

tramplin_67:
push dword 0x67
jmp collect_context

tramplin_68:
push dword 0x68
jmp collect_context

tramplin_69:
push dword 0x69
jmp collect_context

tramplin_6A:
push dword 0x6A
jmp collect_context

tramplin_6B:
push dword 0x6B
jmp collect_context

tramplin_6C:
push dword 0x6C
jmp collect_context

tramplin_6D:
push dword 0x6D
jmp collect_context

tramplin_6E:
push dword 0x6E
jmp collect_context

tramplin_6F:
push dword 0x6F
jmp collect_context

tramplin_70:
push dword 0x70
jmp collect_context

tramplin_71:
push dword 0x71
jmp collect_context

tramplin_72:
push dword 0x72
jmp collect_context

tramplin_73:
push dword 0x73
jmp collect_context

tramplin_74:
push dword 0x74
jmp collect_context

tramplin_75:
push dword 0x75
jmp collect_context

tramplin_76:
push dword 0x76
jmp collect_context

tramplin_77:
push dword 0x77
jmp collect_context

tramplin_78:
push dword 0x78
jmp collect_context

tramplin_79:
push dword 0x79
jmp collect_context

tramplin_7A:
push dword 0x7A
jmp collect_context

tramplin_7B:
push dword 0x7B
jmp collect_context

tramplin_7C:
push dword 0x7C
jmp collect_context

tramplin_7D:
push dword 0x7D
jmp collect_context

tramplin_7E:
push dword 0x7E
jmp collect_context

tramplin_7F:
push dword 0x7F
jmp collect_context

tramplin_80:
push dword 0x80
jmp collect_context

tramplin_81:
push dword 0x81
jmp collect_context

tramplin_82:
push dword 0x82
jmp collect_context

tramplin_83:
push dword 0x83
jmp collect_context

tramplin_84:
push dword 0x84
jmp collect_context

tramplin_85:
push dword 0x85
jmp collect_context

tramplin_86:
push dword 0x86
jmp collect_context

tramplin_87:
push dword 0x87
jmp collect_context

tramplin_88:
push dword 0x88
jmp collect_context

tramplin_89:
push dword 0x89
jmp collect_context

tramplin_8A:
push dword 0x8A
jmp collect_context

tramplin_8B:
push dword 0x8B
jmp collect_context

tramplin_8C:
push dword 0x8C
jmp collect_context

tramplin_8D:
push dword 0x8D
jmp collect_context

tramplin_8E:
push dword 0x8E
jmp collect_context

tramplin_8F:
push dword 0x8F
jmp collect_context

tramplin_90:
push dword 0x90
jmp collect_context

tramplin_91:
push dword 0x91
jmp collect_context

tramplin_92:
push dword 0x92
jmp collect_context

tramplin_93:
push dword 0x93
jmp collect_context

tramplin_94:
push dword 0x94
jmp collect_context

tramplin_95:
push dword 0x95
jmp collect_context

tramplin_96:
push dword 0x96
jmp collect_context

tramplin_97:
push dword 0x97
jmp collect_context

tramplin_98:
push dword 0x98
jmp collect_context

tramplin_99:
push dword 0x99
jmp collect_context

tramplin_9A:
push dword 0x9A
jmp collect_context

tramplin_9B:
push dword 0x9B
jmp collect_context

tramplin_9C:
push dword 0x9C
jmp collect_context

tramplin_9D:
push dword 0x9D
jmp collect_context

tramplin_9E:
push dword 0x9E
jmp collect_context

tramplin_9F:
push dword 0x9F
jmp collect_context

tramplin_A0:
push dword 0xA0
jmp collect_context

tramplin_A1:
push dword 0xA1
jmp collect_context

tramplin_A2:
push dword 0xA2
jmp collect_context

tramplin_A3:
push dword 0xA3
jmp collect_context

tramplin_A4:
push dword 0xA4
jmp collect_context

tramplin_A5:
push dword 0xA5
jmp collect_context

tramplin_A6:
push dword 0xA6
jmp collect_context

tramplin_A7:
push dword 0xA7
jmp collect_context

tramplin_A8:
push dword 0xA8
jmp collect_context

tramplin_A9:
push dword 0xA9
jmp collect_context

tramplin_AA:
push dword 0xAA
jmp collect_context

tramplin_AB:
push dword 0xAB
jmp collect_context

tramplin_AC:
push dword 0xAC
jmp collect_context

tramplin_AD:
push dword 0xAD
jmp collect_context

tramplin_AE:
push dword 0xAE
jmp collect_context

tramplin_AF:
push dword 0xAF
jmp collect_context

tramplin_B0:
push dword 0xB0
jmp collect_context

tramplin_B1:
push dword 0xB1
jmp collect_context

tramplin_B2:
push dword 0xB2
jmp collect_context

tramplin_B3:
push dword 0xB3
jmp collect_context

tramplin_B4:
push dword 0xB4
jmp collect_context

tramplin_B5:
push dword 0xB5
jmp collect_context

tramplin_B6:
push dword 0xB6
jmp collect_context

tramplin_B7:
push dword 0xB7
jmp collect_context

tramplin_B8:
push dword 0xB8
jmp collect_context

tramplin_B9:
push dword 0xB9
jmp collect_context

tramplin_BA:
push dword 0xBA
jmp collect_context

tramplin_BB:
push dword 0xBB
jmp collect_context

tramplin_BC:
push dword 0xBC
jmp collect_context

tramplin_BD:
push dword 0xBD
jmp collect_context

tramplin_BE:
push dword 0xBE
jmp collect_context

tramplin_BF:
push dword 0xBF
jmp collect_context

tramplin_C0:
push dword 0xC0
jmp collect_context

tramplin_C1:
push dword 0xC1
jmp collect_context

tramplin_C2:
push dword 0xC2
jmp collect_context

tramplin_C3:
push dword 0xC3
jmp collect_context

tramplin_C4:
push dword 0xC4
jmp collect_context

tramplin_C5:
push dword 0xC5
jmp collect_context

tramplin_C6:
push dword 0xC6
jmp collect_context

tramplin_C7:
push dword 0xC7
jmp collect_context

tramplin_C8:
push dword 0xC8
jmp collect_context

tramplin_C9:
push dword 0xC9
jmp collect_context

tramplin_CA:
push dword 0xCA
jmp collect_context

tramplin_CB:
push dword 0xCB
jmp collect_context

tramplin_CC:
push dword 0xCC
jmp collect_context

tramplin_CD:
push dword 0xCD
jmp collect_context

tramplin_CE:
push dword 0xCE
jmp collect_context

tramplin_CF:
push dword 0xCF
jmp collect_context

tramplin_D0:
push dword 0xD0
jmp collect_context

tramplin_D1:
push dword 0xD1
jmp collect_context

tramplin_D2:
push dword 0xD2
jmp collect_context

tramplin_D3:
push dword 0xD3
jmp collect_context

tramplin_D4:
push dword 0xD4
jmp collect_context

tramplin_D5:
push dword 0xD5
jmp collect_context

tramplin_D6:
push dword 0xD6
jmp collect_context

tramplin_D7:
push dword 0xD7
jmp collect_context

tramplin_D8:
push dword 0xD8
jmp collect_context

tramplin_D9:
push dword 0xD9
jmp collect_context

tramplin_DA:
push dword 0xDA
jmp collect_context

tramplin_DB:
push dword 0xDB
jmp collect_context

tramplin_DC:
push dword 0xDC
jmp collect_context

tramplin_DD:
push dword 0xDD
jmp collect_context

tramplin_DE:
push dword 0xDE
jmp collect_context

tramplin_DF:
push dword 0xDF
jmp collect_context

tramplin_E0:
push dword 0xE0
jmp collect_context

tramplin_E1:
push dword 0xE1
jmp collect_context

tramplin_E2:
push dword 0xE2
jmp collect_context

tramplin_E3:
push dword 0xE3
jmp collect_context

tramplin_E4:
push dword 0xE4
jmp collect_context

tramplin_E5:
push dword 0xE5
jmp collect_context

tramplin_E6:
push dword 0xE6
jmp collect_context

tramplin_E7:
push dword 0xE7
jmp collect_context

tramplin_E8:
push dword 0xE8
jmp collect_context

tramplin_E9:
push dword 0xE9
jmp collect_context

tramplin_EA:
push dword 0xEA
jmp collect_context

tramplin_EB:
push dword 0xEB
jmp collect_context

tramplin_EC:
push dword 0xEC
jmp collect_context

tramplin_ED:
push dword 0xED
jmp collect_context

tramplin_EE:
push dword 0xEE
jmp collect_context

tramplin_EF:
push dword 0xEF
jmp collect_context

tramplin_F0:
push dword 0xF0
jmp collect_context

tramplin_F1:
push dword 0xF1
jmp collect_context

tramplin_F2:
push dword 0xF2
jmp collect_context

tramplin_F3:
push dword 0xF3
jmp collect_context

tramplin_F4:
push dword 0xF4
jmp collect_context

tramplin_F5:
push dword 0xF5
jmp collect_context

tramplin_F6:
push dword 0xF6
jmp collect_context

tramplin_F7:
push dword 0xF7
jmp collect_context

tramplin_F8:
push dword 0xF8
jmp collect_context

tramplin_F9:
push dword 0xF9
jmp collect_context

tramplin_FA:
push dword 0xFA
jmp collect_context

tramplin_FB:
push dword 0xFB
jmp collect_context

tramplin_FC:
push dword 0xFC
jmp collect_context

tramplin_FD:
push dword 0xFD
jmp collect_context

tramplin_FE:
push dword 0xFE
jmp collect_context

tramplin_FF:
push dword 0xFF
jmp collect_context


extern interrupt_handler


collect_context:
push ds
push es
push fs
push gs
pusha
push esp
call interrupt_handler
pop esp
popa
pop gs
pop fs
pop es
pop ds
add esp, 8
iretd