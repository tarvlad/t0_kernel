[bits 32]

global init_paging
global init_paging_big_pages

extern allocate_blocks


; maps first 12 MiB
; 1024 pte + 1024 * 4 pde == 20480 bytes from 0
init_paging:
xor eax, eax                ; page directory addr

mov ecx, 4096
or ecx, 7                   ; present, read write, supervisor
mov [eax], ecx              ; first page table
add eax, 4

mov ecx, 8192
or ecx, 7
mov [eax], ecx              ; second page table
add eax, 4

mov ecx, 16384
or ecx, 7
mov [eax], ecx              ; third page table
add eax, 4

.loop_pd:                   ; all other not present
mov dword [eax], 0          ; page not present
add eax, 4
cmp eax, 4096
jne .loop_pd

; now in eax first page table
xor ecx, ecx                ; addr for page table
.loop_pt:
mov edx, ecx
or edx, 7                   ; present, read write, suprevisor
mov [eax], edx              ; page table entry
add ecx, 4096
add eax, 4
cmp eax, 20480
jne .loop_pt

mov eax, 0
mov cr3, eax
mov eax, cr0
or eax, 0x80000001
mov cr0, eax                ; paging enabled
ret


; maps first 12 MiB using big pages
init_paging_big_pages:
xor eax, eax
mov dword [eax], 135        ; page size 4 MiB, supervisor, read write, present
add eax, 4

mov dword [eax], 135
add eax, 4

mov dword [eax], 135
add eax, 4

.loop_pd:
mov dword [eax], 0
add eax, 4
cmp eax, 4096
jne .loop_pd

mov eax, 0
mov cr3, eax
mov eax, cr4
or eax, 0x00000010
mov cr4, eax
mov eax, cr0
or eax, 0x80000001
mov cr0, eax                ; paging enabled
ret
