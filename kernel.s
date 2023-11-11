; /=====================================\
; | t0 OS kernel code                   |
; | (C) V.Tarasov,                      |
; | Novosibirsk State University, 2023  |
; \=====================================/

; ===================================================================
; INFO
; OS written in i386 assembly, NASM.
; 
; Kernel stack located from 0x20000 down to 0x18000, 8 KiB
; Kernel data located from 0x20000 up to 0x80000, 384 KiB
; Boot sector code loaded by BIOS to 0x7C00 up to 0x7D00
;
; ===================================================================


[ BITS 16 ]
cli                                 ; disable interrupts

; stack setup
mov ax, 0x1800                      ; 0x20000 - 0x2000
mov ss, ax
mov sp, 0x2000                          


; kernel data segment setup
mov ax, 0x2000
mov ds, ax
mov es, ax

; read kernel code from memory, 384 KiB
; C H S - 80, 2, 18
; for 384 KiB (768 sectors) read:
; - 6 segments shiftup
; - every 128 reads segment shiftup on 0x1000 (64 KiB)
; 
; int 0x13 = read from disk:
; for floppy with 80 2 18:
; ah = 2
; al = read count
; ch = cylinder 
; cl = sector 
; dh = head 
; es:bx = buffer
; dl = drive number
mov ah, 0x2                         ; read sectors from drive
mov al, 0x1                         ; read one sector
xor bx, bx                          ; read to (es:bx)
;todo
mov ax, 0xFFFF
hlt

times 510-($-$$) db 0x00            ; align with zeros to 510 byte
dw 0xAA55                           ; boot sector signature
