[bits 32]


extern tramplin_0
extern tramplin_1
extern tramplin_2
extern tramplin_3
extern tramplin_4
extern tramplin_5
extern tramplin_6
extern tramplin_7
extern tramplin_8
extern tramplin_9
extern tramplin_a
extern tramplin_b
extern tramplin_c
extern tramplin_d
extern tramplin_e
extern tramplin_f
extern tramplin_10
extern tramplin_11
extern tramplin_12
extern tramplin_13
extern tramplin_14
extern tramplin_15
extern tramplin_16
extern tramplin_17
extern tramplin_18
extern tramplin_19
extern tramplin_1a
extern tramplin_1b
extern tramplin_1c
extern tramplin_1d
extern tramplin_1e
extern tramplin_1f
extern tramplin_20
extern tramplin_21
extern tramplin_22
extern tramplin_23
extern tramplin_24
extern tramplin_25
extern tramplin_26
extern tramplin_27
extern tramplin_28
extern tramplin_29
extern tramplin_2a
extern tramplin_2b
extern tramplin_2c
extern tramplin_2d
extern tramplin_2e
extern tramplin_2f
extern tramplin_30
extern tramplin_31
extern tramplin_32
extern tramplin_33
extern tramplin_34
extern tramplin_35
extern tramplin_36
extern tramplin_37
extern tramplin_38
extern tramplin_39
extern tramplin_3a
extern tramplin_3b
extern tramplin_3c
extern tramplin_3d
extern tramplin_3e
extern tramplin_3f
extern tramplin_40
extern tramplin_41
extern tramplin_42
extern tramplin_43
extern tramplin_44
extern tramplin_45
extern tramplin_46
extern tramplin_47
extern tramplin_48
extern tramplin_49
extern tramplin_4a
extern tramplin_4b
extern tramplin_4c
extern tramplin_4d
extern tramplin_4e
extern tramplin_4f
extern tramplin_50
extern tramplin_51
extern tramplin_52
extern tramplin_53
extern tramplin_54
extern tramplin_55
extern tramplin_56
extern tramplin_57
extern tramplin_58
extern tramplin_59
extern tramplin_5a
extern tramplin_5b
extern tramplin_5c
extern tramplin_5d
extern tramplin_5e
extern tramplin_5f
extern tramplin_60
extern tramplin_61
extern tramplin_62
extern tramplin_63
extern tramplin_64
extern tramplin_65
extern tramplin_66
extern tramplin_67
extern tramplin_68
extern tramplin_69
extern tramplin_6a
extern tramplin_6b
extern tramplin_6c
extern tramplin_6d
extern tramplin_6e
extern tramplin_6f
extern tramplin_70
extern tramplin_71
extern tramplin_72
extern tramplin_73
extern tramplin_74
extern tramplin_75
extern tramplin_76
extern tramplin_77
extern tramplin_78
extern tramplin_79
extern tramplin_7a
extern tramplin_7b
extern tramplin_7c
extern tramplin_7d
extern tramplin_7e
extern tramplin_7f
extern tramplin_80
extern tramplin_81
extern tramplin_82
extern tramplin_83
extern tramplin_84
extern tramplin_85
extern tramplin_86
extern tramplin_87
extern tramplin_88
extern tramplin_89
extern tramplin_8a
extern tramplin_8b
extern tramplin_8c
extern tramplin_8d
extern tramplin_8e
extern tramplin_8f
extern tramplin_90
extern tramplin_91
extern tramplin_92
extern tramplin_93
extern tramplin_94
extern tramplin_95
extern tramplin_96
extern tramplin_97
extern tramplin_98
extern tramplin_99
extern tramplin_9a
extern tramplin_9b
extern tramplin_9c
extern tramplin_9d
extern tramplin_9e
extern tramplin_9f
extern tramplin_a0
extern tramplin_a1
extern tramplin_a2
extern tramplin_a3
extern tramplin_a4
extern tramplin_a5
extern tramplin_a6
extern tramplin_a7
extern tramplin_a8
extern tramplin_a9
extern tramplin_aa
extern tramplin_ab
extern tramplin_ac
extern tramplin_ad
extern tramplin_ae
extern tramplin_af
extern tramplin_b0
extern tramplin_b1
extern tramplin_b2
extern tramplin_b3
extern tramplin_b4
extern tramplin_b5
extern tramplin_b6
extern tramplin_b7
extern tramplin_b8
extern tramplin_b9
extern tramplin_ba
extern tramplin_bb
extern tramplin_bc
extern tramplin_bd
extern tramplin_be
extern tramplin_bf
extern tramplin_c0
extern tramplin_c1
extern tramplin_c2
extern tramplin_c3
extern tramplin_c4
extern tramplin_c5
extern tramplin_c6
extern tramplin_c7
extern tramplin_c8
extern tramplin_c9
extern tramplin_ca
extern tramplin_cb
extern tramplin_cc
extern tramplin_cd
extern tramplin_ce
extern tramplin_cf
extern tramplin_d0
extern tramplin_d1
extern tramplin_d2
extern tramplin_d3
extern tramplin_d4
extern tramplin_d5
extern tramplin_d6
extern tramplin_d7
extern tramplin_d8
extern tramplin_d9
extern tramplin_da
extern tramplin_db
extern tramplin_dc
extern tramplin_dd
extern tramplin_de
extern tramplin_df
extern tramplin_e0
extern tramplin_e1
extern tramplin_e2
extern tramplin_e3
extern tramplin_e4
extern tramplin_e5
extern tramplin_e6
extern tramplin_e7
extern tramplin_e8
extern tramplin_e9
extern tramplin_ea
extern tramplin_eb
extern tramplin_ec
extern tramplin_ed
extern tramplin_ee
extern tramplin_ef
extern tramplin_f0
extern tramplin_f1
extern tramplin_f2
extern tramplin_f3
extern tramplin_f4
extern tramplin_f5
extern tramplin_f6
extern tramplin_f7
extern tramplin_f8
extern tramplin_f9
extern tramplin_fa
extern tramplin_fb
extern tramplin_fc
extern tramplin_fd
extern tramplin_fe
extern tramplin_ff


global init_idt

extern allocate_blocks


; void init_idt();
; initialize interrupt descriptor table in heap
init_idt:
push 4
call allocate_blocks        ; get 2 KiB for idt (256 * 8 bytes per entity)
pop ecx
mov ecx, eax                ; addr of allocaed space

mov eax, tramplin_0         ; get addr
mov word [ecx + 0], ax      ; low addr bits
mov word [ecx + 2], 8       ; offset in gdt
mov byte [ecx + 4], 0       ; gap
mov byte [ecx + 5], 0x8e    ; interrupt gate
shr eax, 16                 ; get high addr bits
mov word [ecx + 6], ax      ; high addr bits

mov eax, tramplin_1
mov word [ecx + 8], ax
mov word [ecx + 10], 8
mov byte [ecx + 12], 0
mov byte [ecx + 13], 0x8e
shr eax, 16
mov word [ecx + 14], ax

mov eax, tramplin_2
mov word [ecx + 16], ax
mov word [ecx + 18], 8
mov byte [ecx + 20], 0
mov byte [ecx + 21], 0x8e
shr eax, 16
mov word [ecx + 22], ax

mov eax, tramplin_3
mov word [ecx + 24], ax
mov word [ecx + 26], 8
mov byte [ecx + 28], 0
mov byte [ecx + 29], 0x8e
shr eax, 16
mov word [ecx + 30], ax

mov eax, tramplin_4
mov word [ecx + 32], ax
mov word [ecx + 34], 8
mov byte [ecx + 36], 0
mov byte [ecx + 37], 0x8e
shr eax, 16
mov word [ecx + 38], ax

mov eax, tramplin_5
mov word [ecx + 40], ax
mov word [ecx + 42], 8
mov byte [ecx + 44], 0
mov byte [ecx + 45], 0x8e
shr eax, 16
mov word [ecx + 46], ax

mov eax, tramplin_6
mov word [ecx + 48], ax
mov word [ecx + 50], 8
mov byte [ecx + 52], 0
mov byte [ecx + 53], 0x8e
shr eax, 16
mov word [ecx + 54], ax

mov eax, tramplin_7
mov word [ecx + 56], ax
mov word [ecx + 58], 8
mov byte [ecx + 60], 0
mov byte [ecx + 61], 0x8e
shr eax, 16
mov word [ecx + 62], ax

mov eax, tramplin_8
mov word [ecx + 64], ax
mov word [ecx + 66], 8
mov byte [ecx + 68], 0
mov byte [ecx + 69], 0x8e
shr eax, 16
mov word [ecx + 70], ax

mov eax, tramplin_9
mov word [ecx + 72], ax
mov word [ecx + 74], 8
mov byte [ecx + 76], 0
mov byte [ecx + 77], 0x8e
shr eax, 16
mov word [ecx + 78], ax

mov eax, tramplin_a
mov word [ecx + 80], ax
mov word [ecx + 82], 8
mov byte [ecx + 84], 0
mov byte [ecx + 85], 0x8e
shr eax, 16
mov word [ecx + 86], ax

mov eax, tramplin_b
mov word [ecx + 88], ax
mov word [ecx + 90], 8
mov byte [ecx + 92], 0
mov byte [ecx + 93], 0x8e
shr eax, 16
mov word [ecx + 94], ax

mov eax, tramplin_c
mov word [ecx + 96], ax
mov word [ecx + 98], 8
mov byte [ecx + 100], 0
mov byte [ecx + 101], 0x8e
shr eax, 16
mov word [ecx + 102], ax

mov eax, tramplin_d
mov word [ecx + 104], ax
mov word [ecx + 106], 8
mov byte [ecx + 108], 0
mov byte [ecx + 109], 0x8e
shr eax, 16
mov word [ecx + 110], ax

mov eax, tramplin_e
mov word [ecx + 112], ax
mov word [ecx + 114], 8
mov byte [ecx + 116], 0
mov byte [ecx + 117], 0x8e
shr eax, 16
mov word [ecx + 118], ax

mov eax, tramplin_f
mov word [ecx + 120], ax
mov word [ecx + 122], 8
mov byte [ecx + 124], 0
mov byte [ecx + 125], 0x8e
shr eax, 16
mov word [ecx + 126], ax

mov eax, tramplin_10
mov word [ecx + 128], ax
mov word [ecx + 130], 8
mov byte [ecx + 132], 0
mov byte [ecx + 133], 0x8e
shr eax, 16
mov word [ecx + 134], ax

mov eax, tramplin_11
mov word [ecx + 136], ax
mov word [ecx + 138], 8
mov byte [ecx + 140], 0
mov byte [ecx + 141], 0x8e
shr eax, 16
mov word [ecx + 142], ax

mov eax, tramplin_12
mov word [ecx + 144], ax
mov word [ecx + 146], 8
mov byte [ecx + 148], 0
mov byte [ecx + 149], 0x8e
shr eax, 16
mov word [ecx + 150], ax

mov eax, tramplin_13
mov word [ecx + 152], ax
mov word [ecx + 154], 8
mov byte [ecx + 156], 0
mov byte [ecx + 157], 0x8e
shr eax, 16
mov word [ecx + 158], ax

mov eax, tramplin_14
mov word [ecx + 160], ax
mov word [ecx + 162], 8
mov byte [ecx + 164], 0
mov byte [ecx + 165], 0x8e
shr eax, 16
mov word [ecx + 166], ax

mov eax, tramplin_15
mov word [ecx + 168], ax
mov word [ecx + 170], 8
mov byte [ecx + 172], 0
mov byte [ecx + 173], 0x8e
shr eax, 16
mov word [ecx + 174], ax

mov eax, tramplin_16
mov word [ecx + 176], ax
mov word [ecx + 178], 8
mov byte [ecx + 180], 0
mov byte [ecx + 181], 0x8e
shr eax, 16
mov word [ecx + 182], ax

mov eax, tramplin_17
mov word [ecx + 184], ax
mov word [ecx + 186], 8
mov byte [ecx + 188], 0
mov byte [ecx + 189], 0x8e
shr eax, 16
mov word [ecx + 190], ax

mov eax, tramplin_18
mov word [ecx + 192], ax
mov word [ecx + 194], 8
mov byte [ecx + 196], 0
mov byte [ecx + 197], 0x8e
shr eax, 16
mov word [ecx + 198], ax

mov eax, tramplin_19
mov word [ecx + 200], ax
mov word [ecx + 202], 8
mov byte [ecx + 204], 0
mov byte [ecx + 205], 0x8e
shr eax, 16
mov word [ecx + 206], ax

mov eax, tramplin_1a
mov word [ecx + 208], ax
mov word [ecx + 210], 8
mov byte [ecx + 212], 0
mov byte [ecx + 213], 0x8e
shr eax, 16
mov word [ecx + 214], ax

mov eax, tramplin_1b
mov word [ecx + 216], ax
mov word [ecx + 218], 8
mov byte [ecx + 220], 0
mov byte [ecx + 221], 0x8e
shr eax, 16
mov word [ecx + 222], ax

mov eax, tramplin_1c
mov word [ecx + 224], ax
mov word [ecx + 226], 8
mov byte [ecx + 228], 0
mov byte [ecx + 229], 0x8e
shr eax, 16
mov word [ecx + 230], ax

mov eax, tramplin_1d
mov word [ecx + 232], ax
mov word [ecx + 234], 8
mov byte [ecx + 236], 0
mov byte [ecx + 237], 0x8e
shr eax, 16
mov word [ecx + 238], ax

mov eax, tramplin_1e
mov word [ecx + 240], ax
mov word [ecx + 242], 8
mov byte [ecx + 244], 0
mov byte [ecx + 245], 0x8e
shr eax, 16
mov word [ecx + 246], ax

mov eax, tramplin_1f
mov word [ecx + 248], ax
mov word [ecx + 250], 8
mov byte [ecx + 252], 0
mov byte [ecx + 253], 0x8e
shr eax, 16
mov word [ecx + 254], ax

mov eax, tramplin_20
mov word [ecx + 256], ax
mov word [ecx + 258], 8
mov byte [ecx + 260], 0
mov byte [ecx + 261], 0x8e
shr eax, 16
mov word [ecx + 262], ax

mov eax, tramplin_21
mov word [ecx + 264], ax
mov word [ecx + 266], 8
mov byte [ecx + 268], 0
mov byte [ecx + 269], 0x8e
shr eax, 16
mov word [ecx + 270], ax

mov eax, tramplin_22
mov word [ecx + 272], ax
mov word [ecx + 274], 8
mov byte [ecx + 276], 0
mov byte [ecx + 277], 0x8e
shr eax, 16
mov word [ecx + 278], ax

mov eax, tramplin_23
mov word [ecx + 280], ax
mov word [ecx + 282], 8
mov byte [ecx + 284], 0
mov byte [ecx + 285], 0x8e
shr eax, 16
mov word [ecx + 286], ax

mov eax, tramplin_24
mov word [ecx + 288], ax
mov word [ecx + 290], 8
mov byte [ecx + 292], 0
mov byte [ecx + 293], 0x8e
shr eax, 16
mov word [ecx + 294], ax

mov eax, tramplin_25
mov word [ecx + 296], ax
mov word [ecx + 298], 8
mov byte [ecx + 300], 0
mov byte [ecx + 301], 0x8e
shr eax, 16
mov word [ecx + 302], ax

mov eax, tramplin_26
mov word [ecx + 304], ax
mov word [ecx + 306], 8
mov byte [ecx + 308], 0
mov byte [ecx + 309], 0x8e
shr eax, 16
mov word [ecx + 310], ax

mov eax, tramplin_27
mov word [ecx + 312], ax
mov word [ecx + 314], 8
mov byte [ecx + 316], 0
mov byte [ecx + 317], 0x8e
shr eax, 16
mov word [ecx + 318], ax

mov eax, tramplin_28
mov word [ecx + 320], ax
mov word [ecx + 322], 8
mov byte [ecx + 324], 0
mov byte [ecx + 325], 0x8e
shr eax, 16
mov word [ecx + 326], ax

mov eax, tramplin_29
mov word [ecx + 328], ax
mov word [ecx + 330], 8
mov byte [ecx + 332], 0
mov byte [ecx + 333], 0x8e
shr eax, 16
mov word [ecx + 334], ax

mov eax, tramplin_2a
mov word [ecx + 336], ax
mov word [ecx + 338], 8
mov byte [ecx + 340], 0
mov byte [ecx + 341], 0x8e
shr eax, 16
mov word [ecx + 342], ax

mov eax, tramplin_2b
mov word [ecx + 344], ax
mov word [ecx + 346], 8
mov byte [ecx + 348], 0
mov byte [ecx + 349], 0x8e
shr eax, 16
mov word [ecx + 350], ax

mov eax, tramplin_2c
mov word [ecx + 352], ax
mov word [ecx + 354], 8
mov byte [ecx + 356], 0
mov byte [ecx + 357], 0x8e
shr eax, 16
mov word [ecx + 358], ax

mov eax, tramplin_2d
mov word [ecx + 360], ax
mov word [ecx + 362], 8
mov byte [ecx + 364], 0
mov byte [ecx + 365], 0x8e
shr eax, 16
mov word [ecx + 366], ax

mov eax, tramplin_2e
mov word [ecx + 368], ax
mov word [ecx + 370], 8
mov byte [ecx + 372], 0
mov byte [ecx + 373], 0x8e
shr eax, 16
mov word [ecx + 374], ax

mov eax, tramplin_2f
mov word [ecx + 376], ax
mov word [ecx + 378], 8
mov byte [ecx + 380], 0
mov byte [ecx + 381], 0x8e
shr eax, 16
mov word [ecx + 382], ax

mov eax, tramplin_30
mov word [ecx + 384], ax
mov word [ecx + 386], 8
mov byte [ecx + 388], 0
mov byte [ecx + 389], 0x8e
shr eax, 16
mov word [ecx + 390], ax

mov eax, tramplin_31
mov word [ecx + 392], ax
mov word [ecx + 394], 8
mov byte [ecx + 396], 0
mov byte [ecx + 397], 0x8e
shr eax, 16
mov word [ecx + 398], ax

mov eax, tramplin_32
mov word [ecx + 400], ax
mov word [ecx + 402], 8
mov byte [ecx + 404], 0
mov byte [ecx + 405], 0x8e
shr eax, 16
mov word [ecx + 406], ax

mov eax, tramplin_33
mov word [ecx + 408], ax
mov word [ecx + 410], 8
mov byte [ecx + 412], 0
mov byte [ecx + 413], 0x8e
shr eax, 16
mov word [ecx + 414], ax

mov eax, tramplin_34
mov word [ecx + 416], ax
mov word [ecx + 418], 8
mov byte [ecx + 420], 0
mov byte [ecx + 421], 0x8e
shr eax, 16
mov word [ecx + 422], ax

mov eax, tramplin_35
mov word [ecx + 424], ax
mov word [ecx + 426], 8
mov byte [ecx + 428], 0
mov byte [ecx + 429], 0x8e
shr eax, 16
mov word [ecx + 430], ax

mov eax, tramplin_36
mov word [ecx + 432], ax
mov word [ecx + 434], 8
mov byte [ecx + 436], 0
mov byte [ecx + 437], 0x8e
shr eax, 16
mov word [ecx + 438], ax

mov eax, tramplin_37
mov word [ecx + 440], ax
mov word [ecx + 442], 8
mov byte [ecx + 444], 0
mov byte [ecx + 445], 0x8e
shr eax, 16
mov word [ecx + 446], ax

mov eax, tramplin_38
mov word [ecx + 448], ax
mov word [ecx + 450], 8
mov byte [ecx + 452], 0
mov byte [ecx + 453], 0x8e
shr eax, 16
mov word [ecx + 454], ax

mov eax, tramplin_39
mov word [ecx + 456], ax
mov word [ecx + 458], 8
mov byte [ecx + 460], 0
mov byte [ecx + 461], 0x8e
shr eax, 16
mov word [ecx + 462], ax

mov eax, tramplin_3a
mov word [ecx + 464], ax
mov word [ecx + 466], 8
mov byte [ecx + 468], 0
mov byte [ecx + 469], 0x8e
shr eax, 16
mov word [ecx + 470], ax

mov eax, tramplin_3b
mov word [ecx + 472], ax
mov word [ecx + 474], 8
mov byte [ecx + 476], 0
mov byte [ecx + 477], 0x8e
shr eax, 16
mov word [ecx + 478], ax

mov eax, tramplin_3c
mov word [ecx + 480], ax
mov word [ecx + 482], 8
mov byte [ecx + 484], 0
mov byte [ecx + 485], 0x8e
shr eax, 16
mov word [ecx + 486], ax

mov eax, tramplin_3d
mov word [ecx + 488], ax
mov word [ecx + 490], 8
mov byte [ecx + 492], 0
mov byte [ecx + 493], 0x8e
shr eax, 16
mov word [ecx + 494], ax

mov eax, tramplin_3e
mov word [ecx + 496], ax
mov word [ecx + 498], 8
mov byte [ecx + 500], 0
mov byte [ecx + 501], 0x8e
shr eax, 16
mov word [ecx + 502], ax

mov eax, tramplin_3f
mov word [ecx + 504], ax
mov word [ecx + 506], 8
mov byte [ecx + 508], 0
mov byte [ecx + 509], 0x8e
shr eax, 16
mov word [ecx + 510], ax

mov eax, tramplin_40
mov word [ecx + 512], ax
mov word [ecx + 514], 8
mov byte [ecx + 516], 0
mov byte [ecx + 517], 0x8e
shr eax, 16
mov word [ecx + 518], ax

mov eax, tramplin_41
mov word [ecx + 520], ax
mov word [ecx + 522], 8
mov byte [ecx + 524], 0
mov byte [ecx + 525], 0x8e
shr eax, 16
mov word [ecx + 526], ax

mov eax, tramplin_42
mov word [ecx + 528], ax
mov word [ecx + 530], 8
mov byte [ecx + 532], 0
mov byte [ecx + 533], 0x8e
shr eax, 16
mov word [ecx + 534], ax

mov eax, tramplin_43
mov word [ecx + 536], ax
mov word [ecx + 538], 8
mov byte [ecx + 540], 0
mov byte [ecx + 541], 0x8e
shr eax, 16
mov word [ecx + 542], ax

mov eax, tramplin_44
mov word [ecx + 544], ax
mov word [ecx + 546], 8
mov byte [ecx + 548], 0
mov byte [ecx + 549], 0x8e
shr eax, 16
mov word [ecx + 550], ax

mov eax, tramplin_45
mov word [ecx + 552], ax
mov word [ecx + 554], 8
mov byte [ecx + 556], 0
mov byte [ecx + 557], 0x8e
shr eax, 16
mov word [ecx + 558], ax

mov eax, tramplin_46
mov word [ecx + 560], ax
mov word [ecx + 562], 8
mov byte [ecx + 564], 0
mov byte [ecx + 565], 0x8e
shr eax, 16
mov word [ecx + 566], ax

mov eax, tramplin_47
mov word [ecx + 568], ax
mov word [ecx + 570], 8
mov byte [ecx + 572], 0
mov byte [ecx + 573], 0x8e
shr eax, 16
mov word [ecx + 574], ax

mov eax, tramplin_48
mov word [ecx + 576], ax
mov word [ecx + 578], 8
mov byte [ecx + 580], 0
mov byte [ecx + 581], 0x8e
shr eax, 16
mov word [ecx + 582], ax

mov eax, tramplin_49
mov word [ecx + 584], ax
mov word [ecx + 586], 8
mov byte [ecx + 588], 0
mov byte [ecx + 589], 0x8e
shr eax, 16
mov word [ecx + 590], ax

mov eax, tramplin_4a
mov word [ecx + 592], ax
mov word [ecx + 594], 8
mov byte [ecx + 596], 0
mov byte [ecx + 597], 0x8e
shr eax, 16
mov word [ecx + 598], ax

mov eax, tramplin_4b
mov word [ecx + 600], ax
mov word [ecx + 602], 8
mov byte [ecx + 604], 0
mov byte [ecx + 605], 0x8e
shr eax, 16
mov word [ecx + 606], ax

mov eax, tramplin_4c
mov word [ecx + 608], ax
mov word [ecx + 610], 8
mov byte [ecx + 612], 0
mov byte [ecx + 613], 0x8e
shr eax, 16
mov word [ecx + 614], ax

mov eax, tramplin_4d
mov word [ecx + 616], ax
mov word [ecx + 618], 8
mov byte [ecx + 620], 0
mov byte [ecx + 621], 0x8e
shr eax, 16
mov word [ecx + 622], ax

mov eax, tramplin_4e
mov word [ecx + 624], ax
mov word [ecx + 626], 8
mov byte [ecx + 628], 0
mov byte [ecx + 629], 0x8e
shr eax, 16
mov word [ecx + 630], ax

mov eax, tramplin_4f
mov word [ecx + 632], ax
mov word [ecx + 634], 8
mov byte [ecx + 636], 0
mov byte [ecx + 637], 0x8e
shr eax, 16
mov word [ecx + 638], ax

mov eax, tramplin_50
mov word [ecx + 640], ax
mov word [ecx + 642], 8
mov byte [ecx + 644], 0
mov byte [ecx + 645], 0x8e
shr eax, 16
mov word [ecx + 646], ax

mov eax, tramplin_51
mov word [ecx + 648], ax
mov word [ecx + 650], 8
mov byte [ecx + 652], 0
mov byte [ecx + 653], 0x8e
shr eax, 16
mov word [ecx + 654], ax

mov eax, tramplin_52
mov word [ecx + 656], ax
mov word [ecx + 658], 8
mov byte [ecx + 660], 0
mov byte [ecx + 661], 0x8e
shr eax, 16
mov word [ecx + 662], ax

mov eax, tramplin_53
mov word [ecx + 664], ax
mov word [ecx + 666], 8
mov byte [ecx + 668], 0
mov byte [ecx + 669], 0x8e
shr eax, 16
mov word [ecx + 670], ax

mov eax, tramplin_54
mov word [ecx + 672], ax
mov word [ecx + 674], 8
mov byte [ecx + 676], 0
mov byte [ecx + 677], 0x8e
shr eax, 16
mov word [ecx + 678], ax

mov eax, tramplin_55
mov word [ecx + 680], ax
mov word [ecx + 682], 8
mov byte [ecx + 684], 0
mov byte [ecx + 685], 0x8e
shr eax, 16
mov word [ecx + 686], ax

mov eax, tramplin_56
mov word [ecx + 688], ax
mov word [ecx + 690], 8
mov byte [ecx + 692], 0
mov byte [ecx + 693], 0x8e
shr eax, 16
mov word [ecx + 694], ax

mov eax, tramplin_57
mov word [ecx + 696], ax
mov word [ecx + 698], 8
mov byte [ecx + 700], 0
mov byte [ecx + 701], 0x8e
shr eax, 16
mov word [ecx + 702], ax

mov eax, tramplin_58
mov word [ecx + 704], ax
mov word [ecx + 706], 8
mov byte [ecx + 708], 0
mov byte [ecx + 709], 0x8e
shr eax, 16
mov word [ecx + 710], ax

mov eax, tramplin_59
mov word [ecx + 712], ax
mov word [ecx + 714], 8
mov byte [ecx + 716], 0
mov byte [ecx + 717], 0x8e
shr eax, 16
mov word [ecx + 718], ax

mov eax, tramplin_5a
mov word [ecx + 720], ax
mov word [ecx + 722], 8
mov byte [ecx + 724], 0
mov byte [ecx + 725], 0x8e
shr eax, 16
mov word [ecx + 726], ax

mov eax, tramplin_5b
mov word [ecx + 728], ax
mov word [ecx + 730], 8
mov byte [ecx + 732], 0
mov byte [ecx + 733], 0x8e
shr eax, 16
mov word [ecx + 734], ax

mov eax, tramplin_5c
mov word [ecx + 736], ax
mov word [ecx + 738], 8
mov byte [ecx + 740], 0
mov byte [ecx + 741], 0x8e
shr eax, 16
mov word [ecx + 742], ax

mov eax, tramplin_5d
mov word [ecx + 744], ax
mov word [ecx + 746], 8
mov byte [ecx + 748], 0
mov byte [ecx + 749], 0x8e
shr eax, 16
mov word [ecx + 750], ax

mov eax, tramplin_5e
mov word [ecx + 752], ax
mov word [ecx + 754], 8
mov byte [ecx + 756], 0
mov byte [ecx + 757], 0x8e
shr eax, 16
mov word [ecx + 758], ax

mov eax, tramplin_5f
mov word [ecx + 760], ax
mov word [ecx + 762], 8
mov byte [ecx + 764], 0
mov byte [ecx + 765], 0x8e
shr eax, 16
mov word [ecx + 766], ax

mov eax, tramplin_60
mov word [ecx + 768], ax
mov word [ecx + 770], 8
mov byte [ecx + 772], 0
mov byte [ecx + 773], 0x8e
shr eax, 16
mov word [ecx + 774], ax

mov eax, tramplin_61
mov word [ecx + 776], ax
mov word [ecx + 778], 8
mov byte [ecx + 780], 0
mov byte [ecx + 781], 0x8e
shr eax, 16
mov word [ecx + 782], ax

mov eax, tramplin_62
mov word [ecx + 784], ax
mov word [ecx + 786], 8
mov byte [ecx + 788], 0
mov byte [ecx + 789], 0x8e
shr eax, 16
mov word [ecx + 790], ax

mov eax, tramplin_63
mov word [ecx + 792], ax
mov word [ecx + 794], 8
mov byte [ecx + 796], 0
mov byte [ecx + 797], 0x8e
shr eax, 16
mov word [ecx + 798], ax

mov eax, tramplin_64
mov word [ecx + 800], ax
mov word [ecx + 802], 8
mov byte [ecx + 804], 0
mov byte [ecx + 805], 0x8e
shr eax, 16
mov word [ecx + 806], ax

mov eax, tramplin_65
mov word [ecx + 808], ax
mov word [ecx + 810], 8
mov byte [ecx + 812], 0
mov byte [ecx + 813], 0x8e
shr eax, 16
mov word [ecx + 814], ax

mov eax, tramplin_66
mov word [ecx + 816], ax
mov word [ecx + 818], 8
mov byte [ecx + 820], 0
mov byte [ecx + 821], 0x8e
shr eax, 16
mov word [ecx + 822], ax

mov eax, tramplin_67
mov word [ecx + 824], ax
mov word [ecx + 826], 8
mov byte [ecx + 828], 0
mov byte [ecx + 829], 0x8e
shr eax, 16
mov word [ecx + 830], ax

mov eax, tramplin_68
mov word [ecx + 832], ax
mov word [ecx + 834], 8
mov byte [ecx + 836], 0
mov byte [ecx + 837], 0x8e
shr eax, 16
mov word [ecx + 838], ax

mov eax, tramplin_69
mov word [ecx + 840], ax
mov word [ecx + 842], 8
mov byte [ecx + 844], 0
mov byte [ecx + 845], 0x8e
shr eax, 16
mov word [ecx + 846], ax

mov eax, tramplin_6a
mov word [ecx + 848], ax
mov word [ecx + 850], 8
mov byte [ecx + 852], 0
mov byte [ecx + 853], 0x8e
shr eax, 16
mov word [ecx + 854], ax

mov eax, tramplin_6b
mov word [ecx + 856], ax
mov word [ecx + 858], 8
mov byte [ecx + 860], 0
mov byte [ecx + 861], 0x8e
shr eax, 16
mov word [ecx + 862], ax

mov eax, tramplin_6c
mov word [ecx + 864], ax
mov word [ecx + 866], 8
mov byte [ecx + 868], 0
mov byte [ecx + 869], 0x8e
shr eax, 16
mov word [ecx + 870], ax

mov eax, tramplin_6d
mov word [ecx + 872], ax
mov word [ecx + 874], 8
mov byte [ecx + 876], 0
mov byte [ecx + 877], 0x8e
shr eax, 16
mov word [ecx + 878], ax

mov eax, tramplin_6e
mov word [ecx + 880], ax
mov word [ecx + 882], 8
mov byte [ecx + 884], 0
mov byte [ecx + 885], 0x8e
shr eax, 16
mov word [ecx + 886], ax

mov eax, tramplin_6f
mov word [ecx + 888], ax
mov word [ecx + 890], 8
mov byte [ecx + 892], 0
mov byte [ecx + 893], 0x8e
shr eax, 16
mov word [ecx + 894], ax

mov eax, tramplin_70
mov word [ecx + 896], ax
mov word [ecx + 898], 8
mov byte [ecx + 900], 0
mov byte [ecx + 901], 0x8e
shr eax, 16
mov word [ecx + 902], ax

mov eax, tramplin_71
mov word [ecx + 904], ax
mov word [ecx + 906], 8
mov byte [ecx + 908], 0
mov byte [ecx + 909], 0x8e
shr eax, 16
mov word [ecx + 910], ax

mov eax, tramplin_72
mov word [ecx + 912], ax
mov word [ecx + 914], 8
mov byte [ecx + 916], 0
mov byte [ecx + 917], 0x8e
shr eax, 16
mov word [ecx + 918], ax

mov eax, tramplin_73
mov word [ecx + 920], ax
mov word [ecx + 922], 8
mov byte [ecx + 924], 0
mov byte [ecx + 925], 0x8e
shr eax, 16
mov word [ecx + 926], ax

mov eax, tramplin_74
mov word [ecx + 928], ax
mov word [ecx + 930], 8
mov byte [ecx + 932], 0
mov byte [ecx + 933], 0x8e
shr eax, 16
mov word [ecx + 934], ax

mov eax, tramplin_75
mov word [ecx + 936], ax
mov word [ecx + 938], 8
mov byte [ecx + 940], 0
mov byte [ecx + 941], 0x8e
shr eax, 16
mov word [ecx + 942], ax

mov eax, tramplin_76
mov word [ecx + 944], ax
mov word [ecx + 946], 8
mov byte [ecx + 948], 0
mov byte [ecx + 949], 0x8e
shr eax, 16
mov word [ecx + 950], ax

mov eax, tramplin_77
mov word [ecx + 952], ax
mov word [ecx + 954], 8
mov byte [ecx + 956], 0
mov byte [ecx + 957], 0x8e
shr eax, 16
mov word [ecx + 958], ax

mov eax, tramplin_78
mov word [ecx + 960], ax
mov word [ecx + 962], 8
mov byte [ecx + 964], 0
mov byte [ecx + 965], 0x8e
shr eax, 16
mov word [ecx + 966], ax

mov eax, tramplin_79
mov word [ecx + 968], ax
mov word [ecx + 970], 8
mov byte [ecx + 972], 0
mov byte [ecx + 973], 0x8e
shr eax, 16
mov word [ecx + 974], ax

mov eax, tramplin_7a
mov word [ecx + 976], ax
mov word [ecx + 978], 8
mov byte [ecx + 980], 0
mov byte [ecx + 981], 0x8e
shr eax, 16
mov word [ecx + 982], ax

mov eax, tramplin_7b
mov word [ecx + 984], ax
mov word [ecx + 986], 8
mov byte [ecx + 988], 0
mov byte [ecx + 989], 0x8e
shr eax, 16
mov word [ecx + 990], ax

mov eax, tramplin_7c
mov word [ecx + 992], ax
mov word [ecx + 994], 8
mov byte [ecx + 996], 0
mov byte [ecx + 997], 0x8e
shr eax, 16
mov word [ecx + 998], ax

mov eax, tramplin_7d
mov word [ecx + 1000], ax
mov word [ecx + 1002], 8
mov byte [ecx + 1004], 0
mov byte [ecx + 1005], 0x8e
shr eax, 16
mov word [ecx + 1006], ax

mov eax, tramplin_7e
mov word [ecx + 1008], ax
mov word [ecx + 1010], 8
mov byte [ecx + 1012], 0
mov byte [ecx + 1013], 0x8e
shr eax, 16
mov word [ecx + 1014], ax

mov eax, tramplin_7f
mov word [ecx + 1016], ax
mov word [ecx + 1018], 8
mov byte [ecx + 1020], 0
mov byte [ecx + 1021], 0x8e
shr eax, 16
mov word [ecx + 1022], ax

mov eax, tramplin_80
mov word [ecx + 1024], ax
mov word [ecx + 1026], 8
mov byte [ecx + 1028], 0
mov byte [ecx + 1029], 0x8e
shr eax, 16
mov word [ecx + 1030], ax

mov eax, tramplin_81
mov word [ecx + 1032], ax
mov word [ecx + 1034], 8
mov byte [ecx + 1036], 0
mov byte [ecx + 1037], 0x8e
shr eax, 16
mov word [ecx + 1038], ax

mov eax, tramplin_82
mov word [ecx + 1040], ax
mov word [ecx + 1042], 8
mov byte [ecx + 1044], 0
mov byte [ecx + 1045], 0x8e
shr eax, 16
mov word [ecx + 1046], ax

mov eax, tramplin_83
mov word [ecx + 1048], ax
mov word [ecx + 1050], 8
mov byte [ecx + 1052], 0
mov byte [ecx + 1053], 0x8e
shr eax, 16
mov word [ecx + 1054], ax

mov eax, tramplin_84
mov word [ecx + 1056], ax
mov word [ecx + 1058], 8
mov byte [ecx + 1060], 0
mov byte [ecx + 1061], 0x8e
shr eax, 16
mov word [ecx + 1062], ax

mov eax, tramplin_85
mov word [ecx + 1064], ax
mov word [ecx + 1066], 8
mov byte [ecx + 1068], 0
mov byte [ecx + 1069], 0x8e
shr eax, 16
mov word [ecx + 1070], ax

mov eax, tramplin_86
mov word [ecx + 1072], ax
mov word [ecx + 1074], 8
mov byte [ecx + 1076], 0
mov byte [ecx + 1077], 0x8e
shr eax, 16
mov word [ecx + 1078], ax

mov eax, tramplin_87
mov word [ecx + 1080], ax
mov word [ecx + 1082], 8
mov byte [ecx + 1084], 0
mov byte [ecx + 1085], 0x8e
shr eax, 16
mov word [ecx + 1086], ax

mov eax, tramplin_88
mov word [ecx + 1088], ax
mov word [ecx + 1090], 8
mov byte [ecx + 1092], 0
mov byte [ecx + 1093], 0x8e
shr eax, 16
mov word [ecx + 1094], ax

mov eax, tramplin_89
mov word [ecx + 1096], ax
mov word [ecx + 1098], 8
mov byte [ecx + 1100], 0
mov byte [ecx + 1101], 0x8e
shr eax, 16
mov word [ecx + 1102], ax

mov eax, tramplin_8a
mov word [ecx + 1104], ax
mov word [ecx + 1106], 8
mov byte [ecx + 1108], 0
mov byte [ecx + 1109], 0x8e
shr eax, 16
mov word [ecx + 1110], ax

mov eax, tramplin_8b
mov word [ecx + 1112], ax
mov word [ecx + 1114], 8
mov byte [ecx + 1116], 0
mov byte [ecx + 1117], 0x8e
shr eax, 16
mov word [ecx + 1118], ax

mov eax, tramplin_8c
mov word [ecx + 1120], ax
mov word [ecx + 1122], 8
mov byte [ecx + 1124], 0
mov byte [ecx + 1125], 0x8e
shr eax, 16
mov word [ecx + 1126], ax

mov eax, tramplin_8d
mov word [ecx + 1128], ax
mov word [ecx + 1130], 8
mov byte [ecx + 1132], 0
mov byte [ecx + 1133], 0x8e
shr eax, 16
mov word [ecx + 1134], ax

mov eax, tramplin_8e
mov word [ecx + 1136], ax
mov word [ecx + 1138], 8
mov byte [ecx + 1140], 0
mov byte [ecx + 1141], 0x8e
shr eax, 16
mov word [ecx + 1142], ax

mov eax, tramplin_8f
mov word [ecx + 1144], ax
mov word [ecx + 1146], 8
mov byte [ecx + 1148], 0
mov byte [ecx + 1149], 0x8e
shr eax, 16
mov word [ecx + 1150], ax

mov eax, tramplin_90
mov word [ecx + 1152], ax
mov word [ecx + 1154], 8
mov byte [ecx + 1156], 0
mov byte [ecx + 1157], 0x8e
shr eax, 16
mov word [ecx + 1158], ax

mov eax, tramplin_91
mov word [ecx + 1160], ax
mov word [ecx + 1162], 8
mov byte [ecx + 1164], 0
mov byte [ecx + 1165], 0x8e
shr eax, 16
mov word [ecx + 1166], ax

mov eax, tramplin_92
mov word [ecx + 1168], ax
mov word [ecx + 1170], 8
mov byte [ecx + 1172], 0
mov byte [ecx + 1173], 0x8e
shr eax, 16
mov word [ecx + 1174], ax

mov eax, tramplin_93
mov word [ecx + 1176], ax
mov word [ecx + 1178], 8
mov byte [ecx + 1180], 0
mov byte [ecx + 1181], 0x8e
shr eax, 16
mov word [ecx + 1182], ax

mov eax, tramplin_94
mov word [ecx + 1184], ax
mov word [ecx + 1186], 8
mov byte [ecx + 1188], 0
mov byte [ecx + 1189], 0x8e
shr eax, 16
mov word [ecx + 1190], ax

mov eax, tramplin_95
mov word [ecx + 1192], ax
mov word [ecx + 1194], 8
mov byte [ecx + 1196], 0
mov byte [ecx + 1197], 0x8e
shr eax, 16
mov word [ecx + 1198], ax

mov eax, tramplin_96
mov word [ecx + 1200], ax
mov word [ecx + 1202], 8
mov byte [ecx + 1204], 0
mov byte [ecx + 1205], 0x8e
shr eax, 16
mov word [ecx + 1206], ax

mov eax, tramplin_97
mov word [ecx + 1208], ax
mov word [ecx + 1210], 8
mov byte [ecx + 1212], 0
mov byte [ecx + 1213], 0x8e
shr eax, 16
mov word [ecx + 1214], ax

mov eax, tramplin_98
mov word [ecx + 1216], ax
mov word [ecx + 1218], 8
mov byte [ecx + 1220], 0
mov byte [ecx + 1221], 0x8e
shr eax, 16
mov word [ecx + 1222], ax

mov eax, tramplin_99
mov word [ecx + 1224], ax
mov word [ecx + 1226], 8
mov byte [ecx + 1228], 0
mov byte [ecx + 1229], 0x8e
shr eax, 16
mov word [ecx + 1230], ax

mov eax, tramplin_9a
mov word [ecx + 1232], ax
mov word [ecx + 1234], 8
mov byte [ecx + 1236], 0
mov byte [ecx + 1237], 0x8e
shr eax, 16
mov word [ecx + 1238], ax

mov eax, tramplin_9b
mov word [ecx + 1240], ax
mov word [ecx + 1242], 8
mov byte [ecx + 1244], 0
mov byte [ecx + 1245], 0x8e
shr eax, 16
mov word [ecx + 1246], ax

mov eax, tramplin_9c
mov word [ecx + 1248], ax
mov word [ecx + 1250], 8
mov byte [ecx + 1252], 0
mov byte [ecx + 1253], 0x8e
shr eax, 16
mov word [ecx + 1254], ax

mov eax, tramplin_9d
mov word [ecx + 1256], ax
mov word [ecx + 1258], 8
mov byte [ecx + 1260], 0
mov byte [ecx + 1261], 0x8e
shr eax, 16
mov word [ecx + 1262], ax

mov eax, tramplin_9e
mov word [ecx + 1264], ax
mov word [ecx + 1266], 8
mov byte [ecx + 1268], 0
mov byte [ecx + 1269], 0x8e
shr eax, 16
mov word [ecx + 1270], ax

mov eax, tramplin_9f
mov word [ecx + 1272], ax
mov word [ecx + 1274], 8
mov byte [ecx + 1276], 0
mov byte [ecx + 1277], 0x8e
shr eax, 16
mov word [ecx + 1278], ax

mov eax, tramplin_a0
mov word [ecx + 1280], ax
mov word [ecx + 1282], 8
mov byte [ecx + 1284], 0
mov byte [ecx + 1285], 0x8e
shr eax, 16
mov word [ecx + 1286], ax

mov eax, tramplin_a1
mov word [ecx + 1288], ax
mov word [ecx + 1290], 8
mov byte [ecx + 1292], 0
mov byte [ecx + 1293], 0x8e
shr eax, 16
mov word [ecx + 1294], ax

mov eax, tramplin_a2
mov word [ecx + 1296], ax
mov word [ecx + 1298], 8
mov byte [ecx + 1300], 0
mov byte [ecx + 1301], 0x8e
shr eax, 16
mov word [ecx + 1302], ax

mov eax, tramplin_a3
mov word [ecx + 1304], ax
mov word [ecx + 1306], 8
mov byte [ecx + 1308], 0
mov byte [ecx + 1309], 0x8e
shr eax, 16
mov word [ecx + 1310], ax

mov eax, tramplin_a4
mov word [ecx + 1312], ax
mov word [ecx + 1314], 8
mov byte [ecx + 1316], 0
mov byte [ecx + 1317], 0x8e
shr eax, 16
mov word [ecx + 1318], ax

mov eax, tramplin_a5
mov word [ecx + 1320], ax
mov word [ecx + 1322], 8
mov byte [ecx + 1324], 0
mov byte [ecx + 1325], 0x8e
shr eax, 16
mov word [ecx + 1326], ax

mov eax, tramplin_a6
mov word [ecx + 1328], ax
mov word [ecx + 1330], 8
mov byte [ecx + 1332], 0
mov byte [ecx + 1333], 0x8e
shr eax, 16
mov word [ecx + 1334], ax

mov eax, tramplin_a7
mov word [ecx + 1336], ax
mov word [ecx + 1338], 8
mov byte [ecx + 1340], 0
mov byte [ecx + 1341], 0x8e
shr eax, 16
mov word [ecx + 1342], ax

mov eax, tramplin_a8
mov word [ecx + 1344], ax
mov word [ecx + 1346], 8
mov byte [ecx + 1348], 0
mov byte [ecx + 1349], 0x8e
shr eax, 16
mov word [ecx + 1350], ax

mov eax, tramplin_a9
mov word [ecx + 1352], ax
mov word [ecx + 1354], 8
mov byte [ecx + 1356], 0
mov byte [ecx + 1357], 0x8e
shr eax, 16
mov word [ecx + 1358], ax

mov eax, tramplin_aa
mov word [ecx + 1360], ax
mov word [ecx + 1362], 8
mov byte [ecx + 1364], 0
mov byte [ecx + 1365], 0x8e
shr eax, 16
mov word [ecx + 1366], ax

mov eax, tramplin_ab
mov word [ecx + 1368], ax
mov word [ecx + 1370], 8
mov byte [ecx + 1372], 0
mov byte [ecx + 1373], 0x8e
shr eax, 16
mov word [ecx + 1374], ax

mov eax, tramplin_ac
mov word [ecx + 1376], ax
mov word [ecx + 1378], 8
mov byte [ecx + 1380], 0
mov byte [ecx + 1381], 0x8e
shr eax, 16
mov word [ecx + 1382], ax

mov eax, tramplin_ad
mov word [ecx + 1384], ax
mov word [ecx + 1386], 8
mov byte [ecx + 1388], 0
mov byte [ecx + 1389], 0x8e
shr eax, 16
mov word [ecx + 1390], ax

mov eax, tramplin_ae
mov word [ecx + 1392], ax
mov word [ecx + 1394], 8
mov byte [ecx + 1396], 0
mov byte [ecx + 1397], 0x8e
shr eax, 16
mov word [ecx + 1398], ax

mov eax, tramplin_af
mov word [ecx + 1400], ax
mov word [ecx + 1402], 8
mov byte [ecx + 1404], 0
mov byte [ecx + 1405], 0x8e
shr eax, 16
mov word [ecx + 1406], ax

mov eax, tramplin_b0
mov word [ecx + 1408], ax
mov word [ecx + 1410], 8
mov byte [ecx + 1412], 0
mov byte [ecx + 1413], 0x8e
shr eax, 16
mov word [ecx + 1414], ax

mov eax, tramplin_b1
mov word [ecx + 1416], ax
mov word [ecx + 1418], 8
mov byte [ecx + 1420], 0
mov byte [ecx + 1421], 0x8e
shr eax, 16
mov word [ecx + 1422], ax

mov eax, tramplin_b2
mov word [ecx + 1424], ax
mov word [ecx + 1426], 8
mov byte [ecx + 1428], 0
mov byte [ecx + 1429], 0x8e
shr eax, 16
mov word [ecx + 1430], ax

mov eax, tramplin_b3
mov word [ecx + 1432], ax
mov word [ecx + 1434], 8
mov byte [ecx + 1436], 0
mov byte [ecx + 1437], 0x8e
shr eax, 16
mov word [ecx + 1438], ax

mov eax, tramplin_b4
mov word [ecx + 1440], ax
mov word [ecx + 1442], 8
mov byte [ecx + 1444], 0
mov byte [ecx + 1445], 0x8e
shr eax, 16
mov word [ecx + 1446], ax

mov eax, tramplin_b5
mov word [ecx + 1448], ax
mov word [ecx + 1450], 8
mov byte [ecx + 1452], 0
mov byte [ecx + 1453], 0x8e
shr eax, 16
mov word [ecx + 1454], ax

mov eax, tramplin_b6
mov word [ecx + 1456], ax
mov word [ecx + 1458], 8
mov byte [ecx + 1460], 0
mov byte [ecx + 1461], 0x8e
shr eax, 16
mov word [ecx + 1462], ax

mov eax, tramplin_b7
mov word [ecx + 1464], ax
mov word [ecx + 1466], 8
mov byte [ecx + 1468], 0
mov byte [ecx + 1469], 0x8e
shr eax, 16
mov word [ecx + 1470], ax

mov eax, tramplin_b8
mov word [ecx + 1472], ax
mov word [ecx + 1474], 8
mov byte [ecx + 1476], 0
mov byte [ecx + 1477], 0x8e
shr eax, 16
mov word [ecx + 1478], ax

mov eax, tramplin_b9
mov word [ecx + 1480], ax
mov word [ecx + 1482], 8
mov byte [ecx + 1484], 0
mov byte [ecx + 1485], 0x8e
shr eax, 16
mov word [ecx + 1486], ax

mov eax, tramplin_ba
mov word [ecx + 1488], ax
mov word [ecx + 1490], 8
mov byte [ecx + 1492], 0
mov byte [ecx + 1493], 0x8e
shr eax, 16
mov word [ecx + 1494], ax

mov eax, tramplin_bb
mov word [ecx + 1496], ax
mov word [ecx + 1498], 8
mov byte [ecx + 1500], 0
mov byte [ecx + 1501], 0x8e
shr eax, 16
mov word [ecx + 1502], ax

mov eax, tramplin_bc
mov word [ecx + 1504], ax
mov word [ecx + 1506], 8
mov byte [ecx + 1508], 0
mov byte [ecx + 1509], 0x8e
shr eax, 16
mov word [ecx + 1510], ax

mov eax, tramplin_bd
mov word [ecx + 1512], ax
mov word [ecx + 1514], 8
mov byte [ecx + 1516], 0
mov byte [ecx + 1517], 0x8e
shr eax, 16
mov word [ecx + 1518], ax

mov eax, tramplin_be
mov word [ecx + 1520], ax
mov word [ecx + 1522], 8
mov byte [ecx + 1524], 0
mov byte [ecx + 1525], 0x8e
shr eax, 16
mov word [ecx + 1526], ax

mov eax, tramplin_bf
mov word [ecx + 1528], ax
mov word [ecx + 1530], 8
mov byte [ecx + 1532], 0
mov byte [ecx + 1533], 0x8e
shr eax, 16
mov word [ecx + 1534], ax

mov eax, tramplin_c0
mov word [ecx + 1536], ax
mov word [ecx + 1538], 8
mov byte [ecx + 1540], 0
mov byte [ecx + 1541], 0x8e
shr eax, 16
mov word [ecx + 1542], ax

mov eax, tramplin_c1
mov word [ecx + 1544], ax
mov word [ecx + 1546], 8
mov byte [ecx + 1548], 0
mov byte [ecx + 1549], 0x8e
shr eax, 16
mov word [ecx + 1550], ax

mov eax, tramplin_c2
mov word [ecx + 1552], ax
mov word [ecx + 1554], 8
mov byte [ecx + 1556], 0
mov byte [ecx + 1557], 0x8e
shr eax, 16
mov word [ecx + 1558], ax

mov eax, tramplin_c3
mov word [ecx + 1560], ax
mov word [ecx + 1562], 8
mov byte [ecx + 1564], 0
mov byte [ecx + 1565], 0x8e
shr eax, 16
mov word [ecx + 1566], ax

mov eax, tramplin_c4
mov word [ecx + 1568], ax
mov word [ecx + 1570], 8
mov byte [ecx + 1572], 0
mov byte [ecx + 1573], 0x8e
shr eax, 16
mov word [ecx + 1574], ax

mov eax, tramplin_c5
mov word [ecx + 1576], ax
mov word [ecx + 1578], 8
mov byte [ecx + 1580], 0
mov byte [ecx + 1581], 0x8e
shr eax, 16
mov word [ecx + 1582], ax

mov eax, tramplin_c6
mov word [ecx + 1584], ax
mov word [ecx + 1586], 8
mov byte [ecx + 1588], 0
mov byte [ecx + 1589], 0x8e
shr eax, 16
mov word [ecx + 1590], ax

mov eax, tramplin_c7
mov word [ecx + 1592], ax
mov word [ecx + 1594], 8
mov byte [ecx + 1596], 0
mov byte [ecx + 1597], 0x8e
shr eax, 16
mov word [ecx + 1598], ax

mov eax, tramplin_c8
mov word [ecx + 1600], ax
mov word [ecx + 1602], 8
mov byte [ecx + 1604], 0
mov byte [ecx + 1605], 0x8e
shr eax, 16
mov word [ecx + 1606], ax

mov eax, tramplin_c9
mov word [ecx + 1608], ax
mov word [ecx + 1610], 8
mov byte [ecx + 1612], 0
mov byte [ecx + 1613], 0x8e
shr eax, 16
mov word [ecx + 1614], ax

mov eax, tramplin_ca
mov word [ecx + 1616], ax
mov word [ecx + 1618], 8
mov byte [ecx + 1620], 0
mov byte [ecx + 1621], 0x8e
shr eax, 16
mov word [ecx + 1622], ax

mov eax, tramplin_cb
mov word [ecx + 1624], ax
mov word [ecx + 1626], 8
mov byte [ecx + 1628], 0
mov byte [ecx + 1629], 0x8e
shr eax, 16
mov word [ecx + 1630], ax

mov eax, tramplin_cc
mov word [ecx + 1632], ax
mov word [ecx + 1634], 8
mov byte [ecx + 1636], 0
mov byte [ecx + 1637], 0x8e
shr eax, 16
mov word [ecx + 1638], ax

mov eax, tramplin_cd
mov word [ecx + 1640], ax
mov word [ecx + 1642], 8
mov byte [ecx + 1644], 0
mov byte [ecx + 1645], 0x8e
shr eax, 16
mov word [ecx + 1646], ax

mov eax, tramplin_ce
mov word [ecx + 1648], ax
mov word [ecx + 1650], 8
mov byte [ecx + 1652], 0
mov byte [ecx + 1653], 0x8e
shr eax, 16
mov word [ecx + 1654], ax

mov eax, tramplin_cf
mov word [ecx + 1656], ax
mov word [ecx + 1658], 8
mov byte [ecx + 1660], 0
mov byte [ecx + 1661], 0x8e
shr eax, 16
mov word [ecx + 1662], ax

mov eax, tramplin_d0
mov word [ecx + 1664], ax
mov word [ecx + 1666], 8
mov byte [ecx + 1668], 0
mov byte [ecx + 1669], 0x8e
shr eax, 16
mov word [ecx + 1670], ax

mov eax, tramplin_d1
mov word [ecx + 1672], ax
mov word [ecx + 1674], 8
mov byte [ecx + 1676], 0
mov byte [ecx + 1677], 0x8e
shr eax, 16
mov word [ecx + 1678], ax

mov eax, tramplin_d2
mov word [ecx + 1680], ax
mov word [ecx + 1682], 8
mov byte [ecx + 1684], 0
mov byte [ecx + 1685], 0x8e
shr eax, 16
mov word [ecx + 1686], ax

mov eax, tramplin_d3
mov word [ecx + 1688], ax
mov word [ecx + 1690], 8
mov byte [ecx + 1692], 0
mov byte [ecx + 1693], 0x8e
shr eax, 16
mov word [ecx + 1694], ax

mov eax, tramplin_d4
mov word [ecx + 1696], ax
mov word [ecx + 1698], 8
mov byte [ecx + 1700], 0
mov byte [ecx + 1701], 0x8e
shr eax, 16
mov word [ecx + 1702], ax

mov eax, tramplin_d5
mov word [ecx + 1704], ax
mov word [ecx + 1706], 8
mov byte [ecx + 1708], 0
mov byte [ecx + 1709], 0x8e
shr eax, 16
mov word [ecx + 1710], ax

mov eax, tramplin_d6
mov word [ecx + 1712], ax
mov word [ecx + 1714], 8
mov byte [ecx + 1716], 0
mov byte [ecx + 1717], 0x8e
shr eax, 16
mov word [ecx + 1718], ax

mov eax, tramplin_d7
mov word [ecx + 1720], ax
mov word [ecx + 1722], 8
mov byte [ecx + 1724], 0
mov byte [ecx + 1725], 0x8e
shr eax, 16
mov word [ecx + 1726], ax

mov eax, tramplin_d8
mov word [ecx + 1728], ax
mov word [ecx + 1730], 8
mov byte [ecx + 1732], 0
mov byte [ecx + 1733], 0x8e
shr eax, 16
mov word [ecx + 1734], ax

mov eax, tramplin_d9
mov word [ecx + 1736], ax
mov word [ecx + 1738], 8
mov byte [ecx + 1740], 0
mov byte [ecx + 1741], 0x8e
shr eax, 16
mov word [ecx + 1742], ax

mov eax, tramplin_da
mov word [ecx + 1744], ax
mov word [ecx + 1746], 8
mov byte [ecx + 1748], 0
mov byte [ecx + 1749], 0x8e
shr eax, 16
mov word [ecx + 1750], ax

mov eax, tramplin_db
mov word [ecx + 1752], ax
mov word [ecx + 1754], 8
mov byte [ecx + 1756], 0
mov byte [ecx + 1757], 0x8e
shr eax, 16
mov word [ecx + 1758], ax

mov eax, tramplin_dc
mov word [ecx + 1760], ax
mov word [ecx + 1762], 8
mov byte [ecx + 1764], 0
mov byte [ecx + 1765], 0x8e
shr eax, 16
mov word [ecx + 1766], ax

mov eax, tramplin_dd
mov word [ecx + 1768], ax
mov word [ecx + 1770], 8
mov byte [ecx + 1772], 0
mov byte [ecx + 1773], 0x8e
shr eax, 16
mov word [ecx + 1774], ax

mov eax, tramplin_de
mov word [ecx + 1776], ax
mov word [ecx + 1778], 8
mov byte [ecx + 1780], 0
mov byte [ecx + 1781], 0x8e
shr eax, 16
mov word [ecx + 1782], ax

mov eax, tramplin_df
mov word [ecx + 1784], ax
mov word [ecx + 1786], 8
mov byte [ecx + 1788], 0
mov byte [ecx + 1789], 0x8e
shr eax, 16
mov word [ecx + 1790], ax

mov eax, tramplin_e0
mov word [ecx + 1792], ax
mov word [ecx + 1794], 8
mov byte [ecx + 1796], 0
mov byte [ecx + 1797], 0x8e
shr eax, 16
mov word [ecx + 1798], ax

mov eax, tramplin_e1
mov word [ecx + 1800], ax
mov word [ecx + 1802], 8
mov byte [ecx + 1804], 0
mov byte [ecx + 1805], 0x8e
shr eax, 16
mov word [ecx + 1806], ax

mov eax, tramplin_e2
mov word [ecx + 1808], ax
mov word [ecx + 1810], 8
mov byte [ecx + 1812], 0
mov byte [ecx + 1813], 0x8e
shr eax, 16
mov word [ecx + 1814], ax

mov eax, tramplin_e3
mov word [ecx + 1816], ax
mov word [ecx + 1818], 8
mov byte [ecx + 1820], 0
mov byte [ecx + 1821], 0x8e
shr eax, 16
mov word [ecx + 1822], ax

mov eax, tramplin_e4
mov word [ecx + 1824], ax
mov word [ecx + 1826], 8
mov byte [ecx + 1828], 0
mov byte [ecx + 1829], 0x8e
shr eax, 16
mov word [ecx + 1830], ax

mov eax, tramplin_e5
mov word [ecx + 1832], ax
mov word [ecx + 1834], 8
mov byte [ecx + 1836], 0
mov byte [ecx + 1837], 0x8e
shr eax, 16
mov word [ecx + 1838], ax

mov eax, tramplin_e6
mov word [ecx + 1840], ax
mov word [ecx + 1842], 8
mov byte [ecx + 1844], 0
mov byte [ecx + 1845], 0x8e
shr eax, 16
mov word [ecx + 1846], ax

mov eax, tramplin_e7
mov word [ecx + 1848], ax
mov word [ecx + 1850], 8
mov byte [ecx + 1852], 0
mov byte [ecx + 1853], 0x8e
shr eax, 16
mov word [ecx + 1854], ax

mov eax, tramplin_e8
mov word [ecx + 1856], ax
mov word [ecx + 1858], 8
mov byte [ecx + 1860], 0
mov byte [ecx + 1861], 0x8e
shr eax, 16
mov word [ecx + 1862], ax

mov eax, tramplin_e9
mov word [ecx + 1864], ax
mov word [ecx + 1866], 8
mov byte [ecx + 1868], 0
mov byte [ecx + 1869], 0x8e
shr eax, 16
mov word [ecx + 1870], ax

mov eax, tramplin_ea
mov word [ecx + 1872], ax
mov word [ecx + 1874], 8
mov byte [ecx + 1876], 0
mov byte [ecx + 1877], 0x8e
shr eax, 16
mov word [ecx + 1878], ax

mov eax, tramplin_eb
mov word [ecx + 1880], ax
mov word [ecx + 1882], 8
mov byte [ecx + 1884], 0
mov byte [ecx + 1885], 0x8e
shr eax, 16
mov word [ecx + 1886], ax

mov eax, tramplin_ec
mov word [ecx + 1888], ax
mov word [ecx + 1890], 8
mov byte [ecx + 1892], 0
mov byte [ecx + 1893], 0x8e
shr eax, 16
mov word [ecx + 1894], ax

mov eax, tramplin_ed
mov word [ecx + 1896], ax
mov word [ecx + 1898], 8
mov byte [ecx + 1900], 0
mov byte [ecx + 1901], 0x8e
shr eax, 16
mov word [ecx + 1902], ax

mov eax, tramplin_ee
mov word [ecx + 1904], ax
mov word [ecx + 1906], 8
mov byte [ecx + 1908], 0
mov byte [ecx + 1909], 0x8e
shr eax, 16
mov word [ecx + 1910], ax

mov eax, tramplin_ef
mov word [ecx + 1912], ax
mov word [ecx + 1914], 8
mov byte [ecx + 1916], 0
mov byte [ecx + 1917], 0x8e
shr eax, 16
mov word [ecx + 1918], ax

mov eax, tramplin_f0
mov word [ecx + 1920], ax
mov word [ecx + 1922], 8
mov byte [ecx + 1924], 0
mov byte [ecx + 1925], 0x8e
shr eax, 16
mov word [ecx + 1926], ax

mov eax, tramplin_f1
mov word [ecx + 1928], ax
mov word [ecx + 1930], 8
mov byte [ecx + 1932], 0
mov byte [ecx + 1933], 0x8e
shr eax, 16
mov word [ecx + 1934], ax

mov eax, tramplin_f2
mov word [ecx + 1936], ax
mov word [ecx + 1938], 8
mov byte [ecx + 1940], 0
mov byte [ecx + 1941], 0x8e
shr eax, 16
mov word [ecx + 1942], ax

mov eax, tramplin_f3
mov word [ecx + 1944], ax
mov word [ecx + 1946], 8
mov byte [ecx + 1948], 0
mov byte [ecx + 1949], 0x8e
shr eax, 16
mov word [ecx + 1950], ax

mov eax, tramplin_f4
mov word [ecx + 1952], ax
mov word [ecx + 1954], 8
mov byte [ecx + 1956], 0
mov byte [ecx + 1957], 0x8e
shr eax, 16
mov word [ecx + 1958], ax

mov eax, tramplin_f5
mov word [ecx + 1960], ax
mov word [ecx + 1962], 8
mov byte [ecx + 1964], 0
mov byte [ecx + 1965], 0x8e
shr eax, 16
mov word [ecx + 1966], ax

mov eax, tramplin_f6
mov word [ecx + 1968], ax
mov word [ecx + 1970], 8
mov byte [ecx + 1972], 0
mov byte [ecx + 1973], 0x8e
shr eax, 16
mov word [ecx + 1974], ax

mov eax, tramplin_f7
mov word [ecx + 1976], ax
mov word [ecx + 1978], 8
mov byte [ecx + 1980], 0
mov byte [ecx + 1981], 0x8e
shr eax, 16
mov word [ecx + 1982], ax

mov eax, tramplin_f8
mov word [ecx + 1984], ax
mov word [ecx + 1986], 8
mov byte [ecx + 1988], 0
mov byte [ecx + 1989], 0x8e
shr eax, 16
mov word [ecx + 1990], ax

mov eax, tramplin_f9
mov word [ecx + 1992], ax
mov word [ecx + 1994], 8
mov byte [ecx + 1996], 0
mov byte [ecx + 1997], 0x8e
shr eax, 16
mov word [ecx + 1998], ax

mov eax, tramplin_fa
mov word [ecx + 2000], ax
mov word [ecx + 2002], 8
mov byte [ecx + 2004], 0
mov byte [ecx + 2005], 0x8e
shr eax, 16
mov word [ecx + 2006], ax

mov eax, tramplin_fb
mov word [ecx + 2008], ax
mov word [ecx + 2010], 8
mov byte [ecx + 2012], 0
mov byte [ecx + 2013], 0x8e
shr eax, 16
mov word [ecx + 2014], ax

mov eax, tramplin_fc
mov word [ecx + 2016], ax
mov word [ecx + 2018], 8
mov byte [ecx + 2020], 0
mov byte [ecx + 2021], 0x8e
shr eax, 16
mov word [ecx + 2022], ax

mov eax, tramplin_fd
mov word [ecx + 2024], ax
mov word [ecx + 2026], 8
mov byte [ecx + 2028], 0
mov byte [ecx + 2029], 0x8e
shr eax, 16
mov word [ecx + 2030], ax

mov eax, tramplin_fe
mov word [ecx + 2032], ax
mov word [ecx + 2034], 8
mov byte [ecx + 2036], 0
mov byte [ecx + 2037], 0x8e
shr eax, 16
mov word [ecx + 2038], ax

mov eax, tramplin_ff
mov word [ecx + 2040], ax
mov word [ecx + 2042], 8
mov byte [ecx + 2044], 0
mov byte [ecx + 2045], 0x8e
shr eax, 16
mov word [ecx + 2046], ax

sub esp, 8                  ; idt_descriptor
mov word [esp], 0xffff      ; size 256 entries
mov dword [esp + 2], ecx    ; address of idt
lidt [esp]
add esp, 8
ret
