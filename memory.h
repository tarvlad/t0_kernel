#pragma once

#include "display.h"
#include "ktypes.h"


#define __to_ptr_cast(ptr_type, value) ((ptr_type *)(u8)(value))


#define __ptr_value(ptr) ((u4)(u8)ptr)


#define __UNHANDLED_INTERRUPT(vector) \
__asm__ __volatile__ ("cli"); \
printfmt("unhandled interrupt %x", vector); \
__asm__ __volatile__( \
    "hlt\n" \
); \


void memcpy(u4 dst, u4 src, u4 size);

void init_idt();

void __idt_load(unsigned idt_descriptor) __EXTERN_DEF;

#pragma pack(push, 1)
struct segment_selector {
    u2 rpl : 2;
    u2 ti : 1;
    u2 index : 13;
};
#pragma pack(pop)


struct idt_entity {
    u2 offset_low;
    u2 selector;
    u1 gap;
    u1 type_attrs;
    u2 offset_high;
};


struct gdt_entity {
    u2 limit;
    u2 base_low;
    u1 base_mid;
    u1 access_byte;
    u1 limit_high : 4;
    u1 flags : 4;
    u1 base_high;
};


#pragma pack(push, 1)
struct gdt_descriptor {
    u2 size;
    u4 offset;
};
#pragma pack(pop)


#pragma pack(push, 1)
struct idt_descriptor {
    u2 idt_size;
    u4 idt_addr;
};
#pragma pack(pop)


#define HEAP_BEG 0x100000
#define HEAP_END 0x400000
#define HEAP_SIZE (HEAP_END - HEAP_BEG)

#define HEAP_BLOCK_SIZE 512
#define HEAP_SECTOR_FREE 0xFFFFFFFF
#define NUM_HEAP_SECTORS (HEAP_SIZE / (HEAP_BLOCK_SIZE + 4))

#define HEAP_DATA_BEG_ADDR (HEAP_BEG + 4 * NUM_HEAP_SECTORS)

#define HEAP_BLOCK_HEADERS __to_ptr_cast(u4, HEAP_BEG)


void init_heap();

u4 allocate_blocks(u4 num_blocks);

void deallocate_blocks(u4 region_addr);