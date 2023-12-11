; t0 kernel code
; (C) V.Tarasov,
; Novosibirsk State University, 2023

[bits 32]

extern reset_printer
extern init_heap
extern init_idt
extern init_8259

global main


main:
call reset_printer
call init_heap
call init_idt
call init_8259
int 0x20
hlt
