; t0 boot sector code
; (C) V.Tarasov, 2023


; kernel stack located from 0x20000 down to 0x18000, 8 KiB
; kernel data located from 0x20000 up to 0x80000, 384 KiB
; boot sector code loaded to 0x7D00 up to 0x7C00, 512 bytes


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


; buffer for read setup, 0x7E00 - 0x8000, 1 sector from floppy
mov ax, 0x7E0
mov es, ax

; read 384 KiB == 768 sectors, need 128 reads before segment
; register shift up on 0x1000, what give up on 64KiB


cli 
hlt


; reads sector (ax, dh, cx) from floppy with number in dl
; to es:bx
read_sector:
push ax
push dx
push cx
mov cx, ax
shl cx, 0x6                 ; cyllinder
pop ax                      ; because [sp] cannot be done
or cx, ax                   ; sector
push ax
mov ah, 0x2                 ; read from floppy
mov al, 0x1                 ; 1 sector
int 0x13
jc .error
pop cx
pop dx
pop ax
ret
.error:
mov ax, 0x0BAD
mov bx, 0x0BAD
mov cx, 0x0BAD
mov dx, 0x0013
cli 
hlt


; copy ax bytes of memory from es:si to ds:di
; ax % 4 should be 0
memcopy:
push ax
push si
push di
push bx
shr ax, 0x2                 ; num moves

.loop:
mov bx, [es:si]
mov [di], bx
add si, 0x4
add di, 0x4
dec ax
test ax, ax
jnz .loop

pop bx
pop di
pop si
pop ax
ret


times 510-($-$$) db 0x0 
dw 0xAA55                   ; boot sector signature
