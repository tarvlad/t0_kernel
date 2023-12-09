; t0 kernel code
; (C) V.Tarasov,
; Novosibirsk State University, 2023


call reset_printer
push 0x42
push 0x53
mov eax, msg
add eax, 0x20000
push eax
call printfmt

hlt

msg:
db `Hello\nand it's a new line %x %x`,0

%include "src/display_control.asm"