; t0 kernel code
; (C) V.Tarasov,
; Novosibirsk State University, 2023

[bits 32]

extern reset_printer
extern init_heap
extern init_idt
extern init_8259
extern init_paging

global main


main:
call init_paging
call reset_printer
call init_heap
call init_idt
call init_8259
sti

.back:
hlt
jmp .back
jmp .back
jmp .back
