; t0 kernel code
; (C) V.Tarasov,
; Novosibirsk State University, 2023

[bits 32]

extern reset_printer
extern init_heap
extern allocate_blocks
extern deallocate_blocks
extern print_hex
extern print_char
global main


main:
call reset_printer
call init_heap

push 4
call allocate_blocks
push eax
call print_hex
push 0xa
call print_char
push 10
call allocate_blocks
push eax
call print_hex

push 0x10fe00
call deallocate_blocks
push 0xa
call print_char
push 4
call allocate_blocks
push eax
call print_hex

hlt