; t0 kernel code
; (C) V.Tarasov,
; Novosibirsk State University, 2023

[bits 32]

extern reset_printer
extern init_heap
extern init_idt

global main


main:
call reset_printer
call init_heap
call init_idt

hlt
