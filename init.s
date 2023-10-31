; t0 boot sector code
; (C) V.Tarasov, 2023


; kernel stack located from 0x20000 down to 0x18000, 8 KiB
; kernel data located from 0x20000 up to 0x80000, 384 KiB
; boot sector code loaded to 0x7C00 up to 0x7D00, 512 bytes

[ BITS 16 ]

; 8 KiB stack setup
cli
mov ax, 0x1800              ; 0x18000 + 8 KiB == 0x20000
mov ss, ax
mov sp, 0x2000
sti


; kernel data segment setup
mov ax, 0x2000
mov ds, ax
mov es, ax


; read 384 KiB == 768 sectors, need 128 reads before segment
; register shift up on 0x1000, what give up on 64KiB
; there will be 6 segments shiftup
; there will be 768 reads by 512 bytes, segment shiftup will be
; every 128 reads

xor si, si
xor ax, ax
xor dh, dh
xor cl, cl
xor bx, bx
read_kernel:
inc cl
cmp cl, 0x13
jne .chs_addr_normalize_end
mov cl, 0x1
inc dh
cmp dh, 0x2
jne .chs_addr_normalize_end
xor dh, dh
inc ax
.chs_addr_normalize_end:
call read_sector
add bx, 0x200
test bx, bx
jnz .segment_normalize_end
push ax
mov ax, es
add ax, 0x1000
mov es, ax
pop ax
.segment_normalize_end:
inc si
cmp si, 0x300               ; 768
jne read_kernel

mov ax, 0x2000
mov ds, ax

cli                     
lgdt [gdt_descriptor]
mov eax, cr0
or eax, 0x1
mov cr0, eax
jmp KMOD_CODE_SEG:protected_mode_tramplin + 0x7C00

mov ax, 0xFFFF
cli 
hlt


; reads sector (ax, dh, cl) from floppy with number in dl
; to es:bx
read_sector:
push cx
push ax
mov ch, al
shr ax, 0x2
and al, 0xC0
or cl, al
mov ah, 0x2
mov al, 0x1
int 0x13
jc .error
pop ax
pop cx
ret
.error:
cli 
hlt

gdt_begin:
dq 0x0
gdt_kmod_code:
dq 0x00CF9A000000FFFF
gdt_kmod_data:
dq 0x00CF92000000FFFF
gdt_end:

gdt_descriptor:
dw gdt_end - gdt_begin - 1
dd gdt_begin + 0x20000


KMOD_CODE_SEG equ gdt_kmod_code - gdt_begin
KMOD_DATA_SEG equ gdt_kmod_data - gdt_begin


[BITS 32]
protected_mode_tramplin:
mov ax, KMOD_DATA_SEG
mov ds, ax
mov ss, ax
mov es, ax
mov fs, ax
mov gs, ax
mov eax, 0x20000
mov esp, eax
jmp KMOD_CODE_SEG:0x20200

times 510-($-$$) db 0x0 
dw 0xAA55                   ; boot sector signature
