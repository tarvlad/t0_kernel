[bits 32]

global __idt_load

; __attribute__((cdecl))
; void  __idt_load(u4 idt_descriptor);
__idt_load:
mov eax, [esp + 4]
lidt [eax]
ret