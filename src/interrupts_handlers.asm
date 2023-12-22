[bits 32]


global timer_interrupt_handler

extern send_command_8259_master

extern printfmt

msg:
db `__timer_tick__[%x]\n`,0

ctr:
dd 0

; void timer_interrupt_handler()
timer_interrupt_handler:
push dword [ctr]
push msg
call printfmt
add esp, 8
mov eax, [ctr]
inc eax
mov [ctr], eax
push 0x20                   ; end of interrupt 
call send_command_8259_master
add esp, 4
sti
ret
