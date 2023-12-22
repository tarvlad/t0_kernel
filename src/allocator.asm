[bits 32]

global init_heap
global allocate_blocks
global deallocate_blocks


; void init_heap();
; initialize heap descriptors for allocations
; heap begin addr 0x100000
; heap end addr 0x900000
; heap size is 8 MiB
; heap block size is 512 bytes
; num heap sectors is 16256
init_heap:
mov eax, 0x100000
.loop:
mov dword [eax], 0xffffffff
add eax, 4
cmp eax, 0x10fe00
jne .loop
ret


; u4 allocate_blocks(u4 num_blocks);
; allocate num_blocks blocks in heap,
; return address of allocated region, or 0 if not enough place for allocate
allocate_blocks:
xor eax, eax                ; num free blocks
xor ecx, ecx                ; first free block idx
xor edx, edx                ; current descriptor idx

.loop:
cmp dword [0x100000 + edx * 4], 0xffffffff ; is sector free ?
jne .sector_not_free
cmp eax, 0                  ; is num free blocks == 0 ?
jne .not_first_free_block
mov ecx, edx                ; first free block idx setup
.not_first_free_block:
inc eax                     ; increase num free blocks
cmp eax, [esp + 4]          ; found required num of blocks ?
jne .next_sector
mov eax, [esp + 4]
mov [0x100000 + ecx * 4], eax ; allocate num_blocks blocks
mov eax, ecx
shl eax, 9
add eax, 0x10fe00           ; return heap data begin addr + first free block idx * heap block size
jmp .exit
.sector_not_free:
xor eax, eax                ; num free blocks now 0
add edx, dword [0x100000 + edx * 4]
dec edx                     ; idx to end of allocated region
.next_sector:
inc edx                     ; next descriptor
cmp edx, 16256              ; is all sector descriptors are traversed ?
jne .loop

mov eax, 0                  ; error code
.exit:
ret


; void deallocate_blocks(u4 region_addr);
deallocate_blocks:
mov eax, [esp + 4]          ; get region addr
sub eax, 0x10fe00           ; get offset in heap
shr eax, 9                  ; get block idx
mov dword [0x100000 + eax * 4], 0xffffffff ; free region
ret