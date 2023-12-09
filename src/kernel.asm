; t0 kernel code
; (C) V.Tarasov,
; Novosibirsk State University, 2023


call reset_printer
push 0x42039
call print_hex

hlt


%include "src/display_control.asm"