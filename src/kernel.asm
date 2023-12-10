; t0 kernel code
; (C) V.Tarasov,
; Novosibirsk State University, 2023

[bits 32]

extern reset_printer
extern init_heap
global main


main:
call reset_printer
call init_heap

hlt