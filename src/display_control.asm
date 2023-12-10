[bits 32]


global vga_clear_screen
global vga_print_char

global reset_printer
global print_hex
global print_char
global printfmt


display_carriage:
dd 0                        ; x
dd 0                        ; y

; void vga_clear_screen();
; clear vga screen area
vga_clear_screen:
mov eax, 4000               ; 80 columns * 25 rows * 2 bytes per symbol
mov cx, 0xf20               ; symbol code: white on black, symbol code is space (0x20)
.loop:
sub eax, 2
mov [eax + 0xb8000], cx
test eax, eax
jnz .loop
ret


; void vga_print_char(char symbol, u4 x, u4 y);
; put char "symbol" in vga display position <x, y>
; symbol on pos <x, y> is 2 bytes per addr
; 0xb8000 + 2 * (y * 80 + x)
vga_print_char:
mov eax, [esp + 12]         ; y
mov ecx, 80
mul ecx                     ; y aligning
mov ecx, [esp + 8]
add eax, ecx                ; get symbol pos
mov ecx, [esp + 4]          ; symbol
mov [0xb8000 + 2 * eax], cl
ret


; void reset_printer();
; initialize display carriage by zeros and clear screen
reset_printer:
call vga_clear_screen
mov dword [display_carriage], 0
mov dword [display_carriage + 4], 0
ret


; void print_hex(u4 number)
; print number in hex format to screen
print_hex:
push 0x30                   ; '0'
call print_char
pop eax
push 0x78                   ; 'x'
call print_char
pop eax

mov eax, [esp + 4]          ; number

sub esp, 8                  ; buffer for digits
mov dword [esp], 0
mov dword [esp + 4], 0
mov ecx, 7                  ; buffer index

.buffer_setup:
test eax, eax
jz .buffer_print
mov edx, eax
and edx, 0xf                ; get last digit
mov [esp + ecx], dl         ; store to buffer
dec ecx
shr eax, 4                  ; number /= 0x10
jmp .buffer_setup
.buffer_print:

xor ecx, ecx
xor eax, eax
.buffer_print_loop:
mov al, [esp + ecx]         ; get digit from buffer
cmp al, 0xa
jl .hex_normalized
add al, 7
.hex_normalized:
add al, 0x30                ; ascii align
push ecx
push eax
push eax
call print_char
pop eax
pop eax
pop ecx
inc ecx
cmp ecx, 8                  ; end of buffer ?
jl .buffer_print_loop
add esp, 8
ret


; void printfmt(char *fmt, ...);
; print formatted string fmt to screen
; currently support %s, %x
printfmt:
push ebp
mov ebp, esp

mov eax, [ebp + 8]          ; fmt addr
mov ecx, 12                 ; ebp offset for current va arg

.loop:
xor edx, edx
mov dl, [eax]               ; get string symbol
cmp dl, 0                   ; is end of string ?
je .exit

cmp dl, 0x25                ; is symbol % ?
jne .write
inc eax
mov dl, [eax]               ; get next symbol
cmp dl, 0x78                ; is symbol x ?
jne .not_x
push eax
push ecx
push edx
push dword [ebp + ecx]      ; get va arg
call print_hex
pop edx
pop edx
pop ecx
pop eax
add ecx, 4                  ; next va arg
jmp .write_end
.not_x:
cmp dl, 0x73                ; is symbol s ?
jne .not_s
push eax
push ecx
push edx
push dword [ebp + ecx]      ; get va arg
call printfmt
pop edx
pop edx
pop ecx
pop eax
add ecx, 4                  ; next va arg
jmp .write_end
.not_s:
push eax
push ecx
push edx
push 0x25
call print_char             ; print % and this symbol
pop edx
pop edx
pop ecx
pop eax
.write:
push eax
push ecx
push edx
push edx
call print_char
pop edx
pop edx
pop ecx
pop eax
.write_end:
inc eax
jmp .loop

.exit:
mov esp, ebp
pop ebp
ret


; void print_char(char symbol);
; print char symbol to postition in display carriage,
; next increment display carriage
; can handle \n and \t
print_char:
push ebp
mov ebp, esp
mov eax, [ebp + 8]          ; symbol

cmp eax, 9                  ; is it \t ?
jne .not_tab
push 0x20                   ; print space 4 times
call print_char
call print_char
call print_char
call print_char
pop eax
jmp .exit
.not_tab:

cmp eax, 0xA                ; is it \n ?
jne .not_newline
mov eax, [display_carriage] ; x
xor eax, eax
mov [display_carriage], eax ; reset x to 0
mov eax, [display_carriage + 4] ; y
inc eax
cmp eax, 25                 ; is end of screen ?
je .shift_line
mov [display_carriage + 4], eax ; if y == 24, update not needed, shift will do job
jmp .exit
.not_newline:

push dword [display_carriage + 4] ; y
push dword [display_carriage]     ; x
push eax                    ; symbol
call vga_print_char
pop eax
pop eax
pop eax

mov eax, [display_carriage] ; x
inc eax
cmp eax, 80
je .inc_y
mov [display_carriage], eax ; x incremented
jmp .exit                   ; if not need to increment y

.inc_y:
mov eax, [display_carriage + 4] ; y
inc eax
cmp eax, 25
je .shift_line
mov [display_carriage + 4], eax ; if y + 1 < 25, store it to carriage and exit
jmp .exit

.shift_line:
mov eax, 0xb8000
.shift_line_loop:           ; copy all to one line up
mov cx, [eax + 160]
mov [eax], cx
add eax, 2
cmp eax, 0xb8f00
jne .shift_line_loop

mov eax, 0x20               ; space
mov ecx, 80
.last_line_erase_loop:
mov byte [0xb8f00 + ecx * 2], al
dec ecx
test ecx, ecx
jnz .last_line_erase_loop

.exit:
mov esp, ebp
pop ebp
ret