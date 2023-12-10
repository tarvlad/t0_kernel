[bits 32]

global inb
global outb


; u1 inb(u4 port);
inb:
mov dx, [esp + 4]
in al, dx
ret


; void outb(u4 port, u4 data);
outb:
mov dx, [esp + 4]
mov al, [esp + 8]
out dx, al
ret