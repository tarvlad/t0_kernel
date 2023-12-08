#include "memory.h"
#include "display.h"


//static struct idt_entity idt[256];


#include "tramplins.h"


void init_idt() {
    void *tramplins[256] = {
        tramplin_0,
        tramplin_1,
        tramplin_2,
        tramplin_3,
        tramplin_4,
        tramplin_5,
        tramplin_6,
        tramplin_7,
        tramplin_8,
        tramplin_9,
        tramplin_A,
        tramplin_B,
        tramplin_C,
        tramplin_D,
        tramplin_E,
        tramplin_F,
        tramplin_10,
        tramplin_11,
        tramplin_12,
        tramplin_13,
        tramplin_14,
        tramplin_15,
        tramplin_16,
        tramplin_17,
        tramplin_18,
        tramplin_19,
        tramplin_1A,
        tramplin_1B,
        tramplin_1C,
        tramplin_1D,
        tramplin_1E,
        tramplin_1F,
        tramplin_20,
        tramplin_21,
        tramplin_22,
        tramplin_23,
        tramplin_24,
        tramplin_25,
        tramplin_26,
        tramplin_27,
        tramplin_28,
        tramplin_29,
        tramplin_2A,
        tramplin_2B,
        tramplin_2C,
        tramplin_2D,
        tramplin_2E,
        tramplin_2F,
        tramplin_30,
        tramplin_31,
        tramplin_32,
        tramplin_33,
        tramplin_34,
        tramplin_35,
        tramplin_36,
        tramplin_37,
        tramplin_38,
        tramplin_39,
        tramplin_3A,
        tramplin_3B,
        tramplin_3C,
        tramplin_3D,
        tramplin_3E,
        tramplin_3F,
        tramplin_40,
        tramplin_41,
        tramplin_42,
        tramplin_43,
        tramplin_44,
        tramplin_45,
        tramplin_46,
        tramplin_47,
        tramplin_48,
        tramplin_49,
        tramplin_4A,
        tramplin_4B,
        tramplin_4C,
        tramplin_4D,
        tramplin_4E,
        tramplin_4F,
        tramplin_50,
        tramplin_51,
        tramplin_52,
        tramplin_53,
        tramplin_54,
        tramplin_55,
        tramplin_56,
        tramplin_57,
        tramplin_58,
        tramplin_59,
        tramplin_5A,
        tramplin_5B,
        tramplin_5C,
        tramplin_5D,
        tramplin_5E,
        tramplin_5F,
        tramplin_60,
        tramplin_61,
        tramplin_62,
        tramplin_63,
        tramplin_64,
        tramplin_65,
        tramplin_66,
        tramplin_67,
        tramplin_68,
        tramplin_69,
        tramplin_6A,
        tramplin_6B,
        tramplin_6C,
        tramplin_6D,
        tramplin_6E,
        tramplin_6F,
        tramplin_70,
        tramplin_71,
        tramplin_72,
        tramplin_73,
        tramplin_74,
        tramplin_75,
        tramplin_76,
        tramplin_77,
        tramplin_78,
        tramplin_79,
        tramplin_7A,
        tramplin_7B,
        tramplin_7C,
        tramplin_7D,
        tramplin_7E,
        tramplin_7F,
        tramplin_80,
        tramplin_81,
        tramplin_82,
        tramplin_83,
        tramplin_84,
        tramplin_85,
        tramplin_86,
        tramplin_87,
        tramplin_88,
        tramplin_89,
        tramplin_8A,
        tramplin_8B,
        tramplin_8C,
        tramplin_8D,
        tramplin_8E,
        tramplin_8F,
        tramplin_90,
        tramplin_91,
        tramplin_92,
        tramplin_93,
        tramplin_94,
        tramplin_95,
        tramplin_96,
        tramplin_97,
        tramplin_98,
        tramplin_99,
        tramplin_9A,
        tramplin_9B,
        tramplin_9C,
        tramplin_9D,
        tramplin_9E,
        tramplin_9F,
        tramplin_A0,
        tramplin_A1,
        tramplin_A2,
        tramplin_A3,
        tramplin_A4,
        tramplin_A5,
        tramplin_A6,
        tramplin_A7,
        tramplin_A8,
        tramplin_A9,
        tramplin_AA,
        tramplin_AB,
        tramplin_AC,
        tramplin_AD,
        tramplin_AE,
        tramplin_AF,
        tramplin_B0,
        tramplin_B1,
        tramplin_B2,
        tramplin_B3,
        tramplin_B4,
        tramplin_B5,
        tramplin_B6,
        tramplin_B7,
        tramplin_B8,
        tramplin_B9,
        tramplin_BA,
        tramplin_BB,
        tramplin_BC,
        tramplin_BD,
        tramplin_BE,
        tramplin_BF,
        tramplin_C0,
        tramplin_C1,
        tramplin_C2,
        tramplin_C3,
        tramplin_C4,
        tramplin_C5,
        tramplin_C6,
        tramplin_C7,
        tramplin_C8,
        tramplin_C9,
        tramplin_CA,
        tramplin_CB,
        tramplin_CC,
        tramplin_CD,
        tramplin_CE,
        tramplin_CF,
        tramplin_D0,
        tramplin_D1,
        tramplin_D2,
        tramplin_D3,
        tramplin_D4,
        tramplin_D5,
        tramplin_D6,
        tramplin_D7,
        tramplin_D8,
        tramplin_D9,
        tramplin_DA,
        tramplin_DB,
        tramplin_DC,
        tramplin_DD,
        tramplin_DE,
        tramplin_DF,
        tramplin_E0,
        tramplin_E1,
        tramplin_E2,
        tramplin_E3,
        tramplin_E4,
        tramplin_E5,
        tramplin_E6,
        tramplin_E7,
        tramplin_E8,
        tramplin_E9,
        tramplin_EA,
        tramplin_EB,
        tramplin_EC,
        tramplin_ED,
        tramplin_EE,
        tramplin_EF,
        tramplin_F0,
        tramplin_F1,
        tramplin_F2,
        tramplin_F3,
        tramplin_F4,
        tramplin_F5,
        tramplin_F6,
        tramplin_F7,
        tramplin_F8,
        tramplin_F9,
        tramplin_FA,
        tramplin_FB,
        tramplin_FC,
        tramplin_FD,
        tramplin_FE,
        tramplin_FF,
    };

    struct idt_entity *idt = __to_ptr_cast(struct idt_entity, allocate_blocks(4));

    for (u4 i = 0; i < 256; i++) {
        u4 handler_addr = __ptr_value(tramplins[i]);
        struct idt_entity idt_entity = {
            (u2)handler_addr,
            8,
            0,
            0x8E,
            (u2)(handler_addr >> 16)
        };

        idt[i] = idt_entity;
    }

    static struct idt_descriptor idt_descriptor;
    idt_descriptor.idt_addr = __ptr_value(idt);
    idt_descriptor.idt_size = 0xFFFF;

    __idt_load(__ptr_value(&idt_descriptor));
}


void init_heap() {
    for (u4 i = 0; i < NUM_HEAP_SECTORS; i++) {
        HEAP_BLOCK_HEADERS[i] = HEAP_SECTOR_FREE;
    }
}


u4 allocate_blocks(u4 num_blocks) {
    u4 num_free_blocks = 0;
    u4 first_free_block_idx = 0;

    for (u4 i = 0; i < NUM_HEAP_SECTORS; i++) {
        if (HEAP_BLOCK_HEADERS[i] == HEAP_SECTOR_FREE) {
            if (num_free_blocks == 0) {
                first_free_block_idx = i;
            }
            num_free_blocks++;
        } else {
            num_free_blocks = 0;
            i += HEAP_BLOCK_HEADERS[i] - 1;
        }

        if (num_free_blocks == num_blocks) {
            HEAP_BLOCK_HEADERS[i] = num_blocks;
            return HEAP_DATA_BEG_ADDR + first_free_block_idx * HEAP_BLOCK_SIZE;
        }
    }

    printfmt("kernel allocation error: not enough heap space for allocate %u blocks", num_blocks);
    __asm__ __volatile__ (
        "cli\n"
        "hlt\n"
    );
    return 0;
}


void deallocate_blocks(u4 region_addr) {
    u4 block_idx = (region_addr - HEAP_DATA_BEG_ADDR) / HEAP_BLOCK_SIZE;
    HEAP_BLOCK_HEADERS[block_idx] = HEAP_SECTOR_FREE;
}