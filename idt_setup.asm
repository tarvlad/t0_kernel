[bits 32]

global __idt_load

; void __attribute__((cdecl)) __idt_load(u4 idt_descriptor);
__idt_load:
; make new call frame
push ebp                ; save old frame
mov ebp, esp            ; init new frame

; load idt
mov eax, [ebp + 8]
lidt [eax]

; restore old call frame
mov esp, ebp
pop ebp
ret