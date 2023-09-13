; t0 kernel init - bootloader for t0
; (C) V.Tarasov, 2023

[ BITS 16 ]

                            ; stack setup
cli                         ; disable interrupts
xor     ax, ax              ; zero to ax
mov     ss, ax              ; zero to stack segment
mov     sp, 0x7C00          ; stack begins from that addr
sti                         ; stack setup complete, enable interrupts


                            ; data segment setup
mov     ax, 0x7C0           ; data segment begin addr
mov     ds, ax              ; data segment addr loading
                            ; data segment setup complete


mov     ah, 0xE             ; display char BIOS call video function 
mov     cx, 13              ; message length
mov     bx, 0               ; counter 
print_l:                    ; print message loop
mov     al, [msg + bx]      ; load next symbol
int     0x10                ; BIOS call, video vector
inc     bx                  ; counter++
cmp     bx, cx              ; counter == message length ?
jl      print_l             ; if not all message are printed


cli                         ; let's hang machine :)
hlt                         ; sleeeeeeeep (eternal (until reboot))


msg:
db      'Hello, world!'


times   510-($-$$) db 0     ; all other bytes between 510 to zeros

dw      0xAA55              ; boot sector signature