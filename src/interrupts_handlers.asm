[bits 32]


global timer_interrupt_handler

extern send_command_8259_master

extern printfmt

msg:
db "t i c k__tock timer",0

; void timer_interrupt_handler()
timer_interrupt_handler:
push msg
call printfmt
add esp, 4
push 0x20                   ; end of interrupt 
call send_command_8259_master
add esp, 4
sti
ret
