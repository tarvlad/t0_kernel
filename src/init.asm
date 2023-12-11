; t0 kernel bootloader code
; (C) V.Tarasov,
; Novosibirsk State University, 2023


; kernel stack located from 0x20000 down to 0x18000, 8 KiB
; kernel data located from 0x20000 up to 0x29000, 36 KiB


[bits 16]
cli


; stack setup
mov ax, 0x1800
mov ss, ax
mov sp, 0x2000


; segment for read kernel data setup
mov ax, 0x2000
mov es, ax

; read 36 KiB - 18 * 4 sectors
; for reading from floppy:
; al - sector count
; ch - cylinder & 0xff
; cl - sector | ((cylinder >> 2) & 0xc0))
; dh - head and possible 2 more cylinder bits
; es:bx - buffer
; dl - drive number
; int 0x13
; dl already set by bios
;
; need to read CHS lines (0, 0, x), (0, 1, x), (1, 0, x), (1, 1, x)
; mapping:
; (0, 0, x) -> [0x20000, 0x22400]
; (0, 1, x) -> [0x22400, 0x24800]
; (1, 0, x) -> [0x24800, 0x26c00]
; (1, 1, x) -> [0x26c00, 0x29000]
mov ah, 2                   ; read from disk vector for int 0x13
mov al, 18                  ; read 18 sectors
mov ch, 0                   ; 0 cylinder
mov cl, 1                   ; sector from 1
mov dh, 0                   ; 0 head
xor bx, bx                  ; to 0x2000:0 == 0x20000
int 0x13
mov ah, 2                   ; read from disk 
mov al, 18                  ; read 18 sectors
mov ch, 0                   ; 0 cylinder
mov cl, 1                   ; sector from 1
mov dh, 1                   ; 1 head
mov bx, 0x2400              ; to 0x2000:2400 == 0x22400
int 0x13
mov ah, 2                   ; read from disk
mov al, 18                  ; read 18 sectors
mov ch, 1                   ; 1 cylinder
mov cl, 1                   ; sector from 1
mov dh, 0                   ; 0 head
mov bx, 0x4800              ; to 0x2000:4800 == 0x24800
int 0x13
mov ah, 2                   ; read from disk
mov al, 18                  ; read 18 sectors
mov ch, 1                   ; 1 cylinder
mov cl, 1                   ; sector from 1
mov dh, 1                   ; head 1
mov bx, 0x6c00              ; to 0x2000:6c00 == 0x26c00
int 0x13


; kernel data segment setup in ds
mov ax, 0x2000
mov ds, ax


lgdt [gdt_descriptor]
mov eax, cr0
or eax, 1
mov cr0, eax                ; protected mode enabled
jmp GDT_KMOD_CODE_SEG_OFFSET:protected_mode_tramp + 0x7c00


gdt:
dq 0                        ; null descriptor
; [0, 15] - limit low 0xffff
; [16, 31] - base low 0x0000
; [32, 39] - base mid 0x00
; [40, 47] - access byte:
;               [0, 0] - accessed bit 0
;               [1, 1] - readable bit 1, read access allowed
;               [2, 2] - conforming bit 0, can be executed from ring setted in [5, 6]
;               [3, 3] - executable bit 1, it's a code segment
;               [4, 4] - descriptor type bit 1
;               [5, 6] - ring 0
;               [7, 7] - present bit 1, segment valid
; [48, 51] - limit high 0xF
; [52, 55] - flags:
;               [0, 0] - reserved
;               [1, 1] - long mode code segment 0
;               [2, 2] - size flag 1, it's a 32 bit protected mode segment
;               [3, 3] - granularity flag 1, limit in 4 KiB pages
; [56, 63] - base high 0x00
dq 0x00cf9a000000ffff       ; gdt kmod code descriptor
; [0, 15] - limit low 0xffff
; [16, 31] - base low 0x0000
; [32, 39] - base mid 0x00
; [40, 47] - access byte:
;               [0, 0] - accessed bit 0
;               [1, 1] - readable bit 1, read access allowed
;               [2, 2] - conforming bit 0, can be executed from ring setted in [5, 6]
;               [3, 3] - executable bit 0, it's a data segment
;               [4, 4] - descriptor type bit 1
;               [5, 6] - ring 0
;               [7, 7] - present bit 1, segment valid
; [48, 51] - limit high 0xF
; [52, 55] - flags:
;               [0, 0] - reserved
;               [1, 1] - long mode code segment 0
;               [2, 2] - size flag 1, it's a 32 bit protected mode segment
;               [3, 3] - granularity flag 1, limit in 4 KiB pages
; [56, 63] - base high 0x00
dq 0x00cf92000000ffff       ; gdt kmod data descriptor


GDT_KMOD_CODE_SEG_OFFSET equ 8
GDT_KMOD_DATA_SEG_OFFSET equ 16


gdt_descriptor:
dw 23                       ; 3 gdt entries * 8 bytes for every entry - 1
dd gdt + 0x20000


[bits 32]
protected_mode_tramp:
mov ax, GDT_KMOD_DATA_SEG_OFFSET
mov ds, ax
mov ss, ax
mov es, ax
mov fs, ax
mov gs, ax
mov eax, 0x20000            ; stack setup
mov esp, eax
; jump to kernel code
jmp GDT_KMOD_CODE_SEG_OFFSET:0x20200


times 510-($-$$) db 0
dw 0xaa55                   ; boot sector signature
