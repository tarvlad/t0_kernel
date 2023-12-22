[bits 32]

global init_8259

extern inb
extern outb

global send_command_8259_master
global send_command_8259_slave
global send_data_8259_master
global send_data_8259_slave


; void send_command_8259_master(u4 command);
send_command_8259_master:
mov eax, [esp + 4]          ; get command
push eax                    ; command
push 0x20                   ; data
call outb
add esp, 8
ret


; void send_command_8259_slave(u4 command);
send_command_8259_slave:
mov eax, [esp + 4]
push eax
push 0xa0
call outb
add esp, 8
ret


; void send_data_8259_master(u4 command);
send_data_8259_master:
mov eax, [esp + 4]
push eax
push 0x21
call outb
add esp, 8
ret


; void send_data_8259_slave(u4 command);
send_data_8259_slave:
mov eax, [esp + 4]
push eax
push 0xa1
call outb
add esp, 8
ret


; void init_8259();
; initialize 8259 master and slave interrupt controllers
init_8259:
push 0x11
call send_command_8259_master
call send_command_8259_slave
pop eax

push 0x20
call send_data_8259_master
pop eax

push 0x28
call send_data_8259_slave
pop eax

push 0x4
call send_data_8259_master
pop eax

push 0x2
call send_data_8259_slave
pop eax

push 0x1
call send_data_8259_master
call send_data_8259_slave
pop eax

push 0xfe
call send_data_8259_master
pop eax

push 0xff
call send_data_8259_slave
pop eax

ret
