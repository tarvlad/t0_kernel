[bits 32]

global __read_idtr

; void __attribute__((cdecl)) __read_idtr(u4 addr_to_load)
__read_idtr:
; make new call frame
push ebp                ; save old frame
mov ebp, esp            ; init new frame

mov eax, [ebp + 8]
sidt [eax]

; restore old call frame
mov esp, ebp
pop ebp
ret