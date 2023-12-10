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

hlt

msg:
db `Hello\nand it's a new line %x %x`,0