[bits 32]

global __inb
global __outb

; __attribute__((cdecl))
; u1 __inb(u2 port)
__inb:
mov dx, [esp + 4]
in al, dx
ret

; __attribute__((cdecl))
; void __outb(u2 port, u1 data)
__outb:
mov dx, [esp + 4]
mov al, byte [esp + 8]
out dx, al
ret