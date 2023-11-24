[bits 32]

global __read_gdtr

; void __attribute__((cdecl)) __read_gdtr(u4 addr_to_load)
__read_gdtr:
; make new call frame
push ebp                ; save old frame
mov ebp, esp            ; init new frame

mov eax, [ebp + 8]
sgdt [eax]

; restore old call frame
mov esp, ebp
pop ebp
ret