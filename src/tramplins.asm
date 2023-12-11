[bits 32]

global tramplin_0
global tramplin_1
global tramplin_2
global tramplin_3
global tramplin_4
global tramplin_5
global tramplin_6
global tramplin_7
global tramplin_8
global tramplin_9
global tramplin_a
global tramplin_b
global tramplin_c
global tramplin_d
global tramplin_e
global tramplin_f
global tramplin_10
global tramplin_11
global tramplin_12
global tramplin_13
global tramplin_14
global tramplin_15
global tramplin_16
global tramplin_17
global tramplin_18
global tramplin_19
global tramplin_1a
global tramplin_1b
global tramplin_1c
global tramplin_1d
global tramplin_1e
global tramplin_1f
global tramplin_20
global tramplin_21
global tramplin_22
global tramplin_23
global tramplin_24
global tramplin_25
global tramplin_26
global tramplin_27
global tramplin_28
global tramplin_29
global tramplin_2a
global tramplin_2b
global tramplin_2c
global tramplin_2d
global tramplin_2e
global tramplin_2f
global tramplin_30
global tramplin_31
global tramplin_32
global tramplin_33
global tramplin_34
global tramplin_35
global tramplin_36
global tramplin_37
global tramplin_38
global tramplin_39
global tramplin_3a
global tramplin_3b
global tramplin_3c
global tramplin_3d
global tramplin_3e
global tramplin_3f
global tramplin_40

tramplin_0:
push 0
push 0x0
jmp collect_context

tramplin_1:
push 0
push 0x1
jmp collect_context

tramplin_2:
push 0
push 0x2
jmp collect_context

tramplin_3:
push 0
push 0x3
jmp collect_context

tramplin_4:
push 0
push 0x4
jmp collect_context

tramplin_5:
push 0
push 0x5
jmp collect_context

tramplin_6:
push 0
push 0x6
jmp collect_context

tramplin_7:
push 0
push 0x7
jmp collect_context

tramplin_8:
push 0x8
jmp collect_context

tramplin_9:
push 0
push 0x9
jmp collect_context

tramplin_a:
push 0xa
jmp collect_context

tramplin_b:
push 0xb
jmp collect_context

tramplin_c:
push 0xc
jmp collect_context

tramplin_d:
push 0xd
jmp collect_context

tramplin_e:
push 0xe
jmp collect_context

tramplin_f:
push 0
push 0xf
jmp collect_context

tramplin_10:
push 0
push 0x10
jmp collect_context

tramplin_11:
push 0x11
jmp collect_context

tramplin_12:
push 0
push 0x12
jmp collect_context

tramplin_13:
push 0
push 0x13
jmp collect_context

tramplin_14:
push 0
push 0x14
jmp collect_context

tramplin_15:
push 0x15
jmp collect_context

tramplin_16:
push 0
push 0x16
jmp collect_context

tramplin_17:
push 0
push 0x17
jmp collect_context

tramplin_18:
push 0
push 0x18
jmp collect_context

tramplin_19:
push 0
push 0x19
jmp collect_context

tramplin_1a:
push 0
push 0x1a
jmp collect_context

tramplin_1b:
push 0
push 0x1b
jmp collect_context

tramplin_1c:
push 0
push 0x1c
jmp collect_context

tramplin_1d:
push 0x1d
jmp collect_context

tramplin_1e:
push 0x1e
jmp collect_context

tramplin_1f:
push 0
push 0x1f
jmp collect_context

tramplin_20:
push 0x20
jmp collect_context

tramplin_21:
push 0x21
jmp collect_context

tramplin_22:
push 0x22
jmp collect_context

tramplin_23:
push 0x23
jmp collect_context

tramplin_24:
push 0x24
jmp collect_context

tramplin_25:
push 0x25
jmp collect_context

tramplin_26:
push 0x26
jmp collect_context

tramplin_27:
push 0x27
jmp collect_context

tramplin_28:
push 0x28
jmp collect_context

tramplin_29:
push 0x29
jmp collect_context

tramplin_2a:
push 0x2a
jmp collect_context

tramplin_2b:
push 0x2b
jmp collect_context

tramplin_2c:
push 0x2c
jmp collect_context

tramplin_2d:
push 0x2d
jmp collect_context

tramplin_2e:
push 0x2e
jmp collect_context

tramplin_2f:
push 0x2f
jmp collect_context

tramplin_30:
push 0x30
jmp collect_context

tramplin_31:
push 0x31
jmp collect_context

tramplin_32:
push 0x32
jmp collect_context

tramplin_33:
push 0x33
jmp collect_context

tramplin_34:
push 0x34
jmp collect_context

tramplin_35:
push 0x35
jmp collect_context

tramplin_36:
push 0x36
jmp collect_context

tramplin_37:
push 0x37
jmp collect_context

tramplin_38:
push 0x38
jmp collect_context

tramplin_39:
push 0x39
jmp collect_context

tramplin_3a:
push 0x3a
jmp collect_context

tramplin_3b:
push 0x3b
jmp collect_context

tramplin_3c:
push 0x3c
jmp collect_context

tramplin_3d:
push 0x3d
jmp collect_context

tramplin_3e:
push 0x3e
jmp collect_context

tramplin_3f:
push 0x3f
jmp collect_context

tramplin_40:
push 0x40
jmp collect_context


extern interrupt_handler


; collect context on stack,
; next call interrupt service routine:
; ss (OPT)
; esp (OPT)
; eflags
; cs
; eip
; error code
; vector
; ds
; es
; fs
; gs
; eax
; ecx
; edx
; ebx
; esp
; ebp
; esi
; edi
collect_context:
push ds
push es
push fs
push gs
mov edi, 42
pusha
call interrupt_handler
popa 
pop gs
pop fs
pop es
pop ds
add esp, 8                  ; delete vector and error code from stack
iretd
