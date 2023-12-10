; t0 kernel code
; (C) V.Tarasov,
; Novosibirsk State University, 2023

[bits 32]

extern reset_printer
extern printfmt
global main

main:
call reset_printer
push 0x42
push 0x53
push msg
call printfmt
add esp, 12
push msg2
push msg1
call printfmt
hlt

msg:
db `Hello\nand it's a new line %x %x`,0
msg1:
db `\n\ttest message: [%s]`,0
msg2:
db `test`,0