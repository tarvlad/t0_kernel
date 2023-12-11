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

global init_idt

extern allocate_blocks

global interrupt_handler
extern printfmt


; routine for interrupt handling, 
; called from collect_context
; on [esp + 4] context begins
; collected context on stack:
; ss (OPT)      [esp + 76]
; esp (OPT)     [esp + 72]
; eflags        [esp + 68]
; cs            [esp + 64]
; eip           [esp + 60]
; error code    [esp + 56]
; vector        [esp + 52]
; ds            [esp + 48]
; es            [esp + 44]
; fs            [esp + 40]
; gs            [esp + 36]
; eax           [esp + 32]
; ecx           [esp + 28]
; edx           [esp + 24]
; ebx           [esp + 20]
; esp           [esp + 16]
; ebp           [esp + 12]
; esi           [esp +  8] 
; edi           [esp +  4]
interrupt_handler:
mov ecx, esp
cli
push dword [ecx + 60]       ;  eip
push dword [ecx + 52]       ;  vector
push unhandled_interrupt_msg
call printfmt
hlt


unhandled_interrupt_msg:
db `Unhandled interrupt %x at %x, kernel aborted`, 0


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

sub esp, 8                  ; idt_descriptor
mov word [esp], 0x1ff       ; 64 entries * 8 bytes - 1
mov dword [esp + 2], ecx    ; address of idt
lidt [esp]
add esp, 8
ret
