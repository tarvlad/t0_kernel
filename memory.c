#include "memory.h"
#include "display.h"


void memcpy(u4 dst, u4 src, u4 size) {
    for (u4 i = 0; i < size; i++) {
        u1 buffer = __to_ptr_cast(u1, src)[i];
        __to_ptr_cast(u1, dst)[i] = buffer;
    }
}


static struct idt_entity idt[256];


static void tramplin_0() {
    __UNHANDLED_INTERRUPT(0x0);
}

static void tramplin_1() {
    __UNHANDLED_INTERRUPT(0x1);
}

static void tramplin_2() {
    __UNHANDLED_INTERRUPT(0x2);
}

static void tramplin_3() {
    __UNHANDLED_INTERRUPT(0x3);
}

static void tramplin_4() {
    __UNHANDLED_INTERRUPT(0x4);
}

static void tramplin_5() {
    __UNHANDLED_INTERRUPT(0x5);
}

static void tramplin_6() {
    __UNHANDLED_INTERRUPT(0x6);
}

static void tramplin_7() {
    __UNHANDLED_INTERRUPT(0x7);
}

static void tramplin_8() {
    __UNHANDLED_INTERRUPT(0x8);
}

static void tramplin_9() {
    __UNHANDLED_INTERRUPT(0x9);
}

static void tramplin_A() {
    __UNHANDLED_INTERRUPT(0xA);
}

static void tramplin_B() {
    __UNHANDLED_INTERRUPT(0xB);
}

static void tramplin_C() {
    __UNHANDLED_INTERRUPT(0xC);
}

static void tramplin_D() {
    __UNHANDLED_INTERRUPT(0xD);
}

static void tramplin_E() {
    __UNHANDLED_INTERRUPT(0xE);
}

static void tramplin_F() {
    __UNHANDLED_INTERRUPT(0xF);
}

static void tramplin_10() {
    __UNHANDLED_INTERRUPT(0x10);
}

static void tramplin_11() {
    __UNHANDLED_INTERRUPT(0x11);
}

static void tramplin_12() {
    __UNHANDLED_INTERRUPT(0x12);
}

static void tramplin_13() {
    __UNHANDLED_INTERRUPT(0x13);
}

static void tramplin_14() {
    __UNHANDLED_INTERRUPT(0x14);
}

static void tramplin_15() {
    __UNHANDLED_INTERRUPT(0x15);
}

static void tramplin_16() {
    __UNHANDLED_INTERRUPT(0x16);
}

static void tramplin_17() {
    __UNHANDLED_INTERRUPT(0x17);
}

static void tramplin_18() {
    __UNHANDLED_INTERRUPT(0x18);
}

static void tramplin_19() {
    __UNHANDLED_INTERRUPT(0x19);
}

static void tramplin_1A() {
    __UNHANDLED_INTERRUPT(0x1A);
}

static void tramplin_1B() {
    __UNHANDLED_INTERRUPT(0x1B);
}

static void tramplin_1C() {
    __UNHANDLED_INTERRUPT(0x1C);
}

static void tramplin_1D() {
    __UNHANDLED_INTERRUPT(0x1D);
}

static void tramplin_1E() {
    __UNHANDLED_INTERRUPT(0x1E);
}

static void tramplin_1F() {
    __UNHANDLED_INTERRUPT(0x1F);
}

static void tramplin_20() {
    __UNHANDLED_INTERRUPT(0x20);
}

static void tramplin_21() {
    __UNHANDLED_INTERRUPT(0x21);
}

static void tramplin_22() {
    __UNHANDLED_INTERRUPT(0x22);
}

static void tramplin_23() {
    __UNHANDLED_INTERRUPT(0x23);
}

static void tramplin_24() {
    __UNHANDLED_INTERRUPT(0x24);
}

static void tramplin_25() {
    __UNHANDLED_INTERRUPT(0x25);
}

static void tramplin_26() {
    __UNHANDLED_INTERRUPT(0x26);
}

static void tramplin_27() {
    __UNHANDLED_INTERRUPT(0x27);
}

static void tramplin_28() {
    __UNHANDLED_INTERRUPT(0x28);
}

static void tramplin_29() {
    __UNHANDLED_INTERRUPT(0x29);
}

static void tramplin_2A() {
    __UNHANDLED_INTERRUPT(0x2A);
}

static void tramplin_2B() {
    __UNHANDLED_INTERRUPT(0x2B);
}

static void tramplin_2C() {
    __UNHANDLED_INTERRUPT(0x2C);
}

static void tramplin_2D() {
    __UNHANDLED_INTERRUPT(0x2D);
}

static void tramplin_2E() {
    __UNHANDLED_INTERRUPT(0x2E);
}

static void tramplin_2F() {
    __UNHANDLED_INTERRUPT(0x2F);
}

static void tramplin_30() {
    __UNHANDLED_INTERRUPT(0x30);
}

static void tramplin_31() {
    __UNHANDLED_INTERRUPT(0x31);
}

static void tramplin_32() {
    __UNHANDLED_INTERRUPT(0x32);
}

static void tramplin_33() {
    __UNHANDLED_INTERRUPT(0x33);
}

static void tramplin_34() {
    __UNHANDLED_INTERRUPT(0x34);
}

static void tramplin_35() {
    __UNHANDLED_INTERRUPT(0x35);
}

static void tramplin_36() {
    __UNHANDLED_INTERRUPT(0x36);
}

static void tramplin_37() {
    __UNHANDLED_INTERRUPT(0x37);
}

static void tramplin_38() {
    __UNHANDLED_INTERRUPT(0x38);
}

static void tramplin_39() {
    __UNHANDLED_INTERRUPT(0x39);
}

static void tramplin_3A() {
    __UNHANDLED_INTERRUPT(0x3A);
}

static void tramplin_3B() {
    __UNHANDLED_INTERRUPT(0x3B);
}

static void tramplin_3C() {
    __UNHANDLED_INTERRUPT(0x3C);
}

static void tramplin_3D() {
    __UNHANDLED_INTERRUPT(0x3D);
}

static void tramplin_3E() {
    __UNHANDLED_INTERRUPT(0x3E);
}

static void tramplin_3F() {
    __UNHANDLED_INTERRUPT(0x3F);
}

static void tramplin_40() {
    __UNHANDLED_INTERRUPT(0x40);
}

static void tramplin_41() {
    __UNHANDLED_INTERRUPT(0x41);
}

static void tramplin_42() {
    __UNHANDLED_INTERRUPT(0x42);
}

static void tramplin_43() {
    __UNHANDLED_INTERRUPT(0x43);
}

static void tramplin_44() {
    __UNHANDLED_INTERRUPT(0x44);
}

static void tramplin_45() {
    __UNHANDLED_INTERRUPT(0x45);
}

static void tramplin_46() {
    __UNHANDLED_INTERRUPT(0x46);
}

static void tramplin_47() {
    __UNHANDLED_INTERRUPT(0x47);
}

static void tramplin_48() {
    __UNHANDLED_INTERRUPT(0x48);
}

static void tramplin_49() {
    __UNHANDLED_INTERRUPT(0x49);
}

static void tramplin_4A() {
    __UNHANDLED_INTERRUPT(0x4A);
}

static void tramplin_4B() {
    __UNHANDLED_INTERRUPT(0x4B);
}

static void tramplin_4C() {
    __UNHANDLED_INTERRUPT(0x4C);
}

static void tramplin_4D() {
    __UNHANDLED_INTERRUPT(0x4D);
}

static void tramplin_4E() {
    __UNHANDLED_INTERRUPT(0x4E);
}

static void tramplin_4F() {
    __UNHANDLED_INTERRUPT(0x4F);
}

static void tramplin_50() {
    __UNHANDLED_INTERRUPT(0x50);
}

static void tramplin_51() {
    __UNHANDLED_INTERRUPT(0x51);
}

static void tramplin_52() {
    __UNHANDLED_INTERRUPT(0x52);
}

static void tramplin_53() {
    __UNHANDLED_INTERRUPT(0x53);
}

static void tramplin_54() {
    __UNHANDLED_INTERRUPT(0x54);
}

static void tramplin_55() {
    __UNHANDLED_INTERRUPT(0x55);
}

static void tramplin_56() {
    __UNHANDLED_INTERRUPT(0x56);
}

static void tramplin_57() {
    __UNHANDLED_INTERRUPT(0x57);
}

static void tramplin_58() {
    __UNHANDLED_INTERRUPT(0x58);
}

static void tramplin_59() {
    __UNHANDLED_INTERRUPT(0x59);
}

static void tramplin_5A() {
    __UNHANDLED_INTERRUPT(0x5A);
}

static void tramplin_5B() {
    __UNHANDLED_INTERRUPT(0x5B);
}

static void tramplin_5C() {
    __UNHANDLED_INTERRUPT(0x5C);
}

static void tramplin_5D() {
    __UNHANDLED_INTERRUPT(0x5D);
}

static void tramplin_5E() {
    __UNHANDLED_INTERRUPT(0x5E);
}

static void tramplin_5F() {
    __UNHANDLED_INTERRUPT(0x5F);
}

static void tramplin_60() {
    __UNHANDLED_INTERRUPT(0x60);
}

static void tramplin_61() {
    __UNHANDLED_INTERRUPT(0x61);
}

static void tramplin_62() {
    __UNHANDLED_INTERRUPT(0x62);
}

static void tramplin_63() {
    __UNHANDLED_INTERRUPT(0x63);
}

static void tramplin_64() {
    __UNHANDLED_INTERRUPT(0x64);
}

static void tramplin_65() {
    __UNHANDLED_INTERRUPT(0x65);
}

static void tramplin_66() {
    __UNHANDLED_INTERRUPT(0x66);
}

static void tramplin_67() {
    __UNHANDLED_INTERRUPT(0x67);
}

static void tramplin_68() {
    __UNHANDLED_INTERRUPT(0x68);
}

static void tramplin_69() {
    __UNHANDLED_INTERRUPT(0x69);
}

static void tramplin_6A() {
    __UNHANDLED_INTERRUPT(0x6A);
}

static void tramplin_6B() {
    __UNHANDLED_INTERRUPT(0x6B);
}

static void tramplin_6C() {
    __UNHANDLED_INTERRUPT(0x6C);
}

static void tramplin_6D() {
    __UNHANDLED_INTERRUPT(0x6D);
}

static void tramplin_6E() {
    __UNHANDLED_INTERRUPT(0x6E);
}

static void tramplin_6F() {
    __UNHANDLED_INTERRUPT(0x6F);
}

static void tramplin_70() {
    __UNHANDLED_INTERRUPT(0x70);
}

static void tramplin_71() {
    __UNHANDLED_INTERRUPT(0x71);
}

static void tramplin_72() {
    __UNHANDLED_INTERRUPT(0x72);
}

static void tramplin_73() {
    __UNHANDLED_INTERRUPT(0x73);
}

static void tramplin_74() {
    __UNHANDLED_INTERRUPT(0x74);
}

static void tramplin_75() {
    __UNHANDLED_INTERRUPT(0x75);
}

static void tramplin_76() {
    __UNHANDLED_INTERRUPT(0x76);
}

static void tramplin_77() {
    __UNHANDLED_INTERRUPT(0x77);
}

static void tramplin_78() {
    __UNHANDLED_INTERRUPT(0x78);
}

static void tramplin_79() {
    __UNHANDLED_INTERRUPT(0x79);
}

static void tramplin_7A() {
    __UNHANDLED_INTERRUPT(0x7A);
}

static void tramplin_7B() {
    __UNHANDLED_INTERRUPT(0x7B);
}

static void tramplin_7C() {
    __UNHANDLED_INTERRUPT(0x7C);
}

static void tramplin_7D() {
    __UNHANDLED_INTERRUPT(0x7D);
}

static void tramplin_7E() {
    __UNHANDLED_INTERRUPT(0x7E);
}

static void tramplin_7F() {
    __UNHANDLED_INTERRUPT(0x7F);
}

static void tramplin_80() {
    __UNHANDLED_INTERRUPT(0x80);
}

static void tramplin_81() {
    __UNHANDLED_INTERRUPT(0x81);
}

static void tramplin_82() {
    __UNHANDLED_INTERRUPT(0x82);
}

static void tramplin_83() {
    __UNHANDLED_INTERRUPT(0x83);
}

static void tramplin_84() {
    __UNHANDLED_INTERRUPT(0x84);
}

static void tramplin_85() {
    __UNHANDLED_INTERRUPT(0x85);
}

static void tramplin_86() {
    __UNHANDLED_INTERRUPT(0x86);
}

static void tramplin_87() {
    __UNHANDLED_INTERRUPT(0x87);
}

static void tramplin_88() {
    __UNHANDLED_INTERRUPT(0x88);
}

static void tramplin_89() {
    __UNHANDLED_INTERRUPT(0x89);
}

static void tramplin_8A() {
    __UNHANDLED_INTERRUPT(0x8A);
}

static void tramplin_8B() {
    __UNHANDLED_INTERRUPT(0x8B);
}

static void tramplin_8C() {
    __UNHANDLED_INTERRUPT(0x8C);
}

static void tramplin_8D() {
    __UNHANDLED_INTERRUPT(0x8D);
}

static void tramplin_8E() {
    __UNHANDLED_INTERRUPT(0x8E);
}

static void tramplin_8F() {
    __UNHANDLED_INTERRUPT(0x8F);
}

static void tramplin_90() {
    __UNHANDLED_INTERRUPT(0x90);
}

static void tramplin_91() {
    __UNHANDLED_INTERRUPT(0x91);
}

static void tramplin_92() {
    __UNHANDLED_INTERRUPT(0x92);
}

static void tramplin_93() {
    __UNHANDLED_INTERRUPT(0x93);
}

static void tramplin_94() {
    __UNHANDLED_INTERRUPT(0x94);
}

static void tramplin_95() {
    __UNHANDLED_INTERRUPT(0x95);
}

static void tramplin_96() {
    __UNHANDLED_INTERRUPT(0x96);
}

static void tramplin_97() {
    __UNHANDLED_INTERRUPT(0x97);
}

static void tramplin_98() {
    __UNHANDLED_INTERRUPT(0x98);
}

static void tramplin_99() {
    __UNHANDLED_INTERRUPT(0x99);
}

static void tramplin_9A() {
    __UNHANDLED_INTERRUPT(0x9A);
}

static void tramplin_9B() {
    __UNHANDLED_INTERRUPT(0x9B);
}

static void tramplin_9C() {
    __UNHANDLED_INTERRUPT(0x9C);
}

static void tramplin_9D() {
    __UNHANDLED_INTERRUPT(0x9D);
}

static void tramplin_9E() {
    __UNHANDLED_INTERRUPT(0x9E);
}

static void tramplin_9F() {
    __UNHANDLED_INTERRUPT(0x9F);
}

static void tramplin_A0() {
    __UNHANDLED_INTERRUPT(0xA0);
}

static void tramplin_A1() {
    __UNHANDLED_INTERRUPT(0xA1);
}

static void tramplin_A2() {
    __UNHANDLED_INTERRUPT(0xA2);
}

static void tramplin_A3() {
    __UNHANDLED_INTERRUPT(0xA3);
}

static void tramplin_A4() {
    __UNHANDLED_INTERRUPT(0xA4);
}

static void tramplin_A5() {
    __UNHANDLED_INTERRUPT(0xA5);
}

static void tramplin_A6() {
    __UNHANDLED_INTERRUPT(0xA6);
}

static void tramplin_A7() {
    __UNHANDLED_INTERRUPT(0xA7);
}

static void tramplin_A8() {
    __UNHANDLED_INTERRUPT(0xA8);
}

static void tramplin_A9() {
    __UNHANDLED_INTERRUPT(0xA9);
}

static void tramplin_AA() {
    __UNHANDLED_INTERRUPT(0xAA);
}

static void tramplin_AB() {
    __UNHANDLED_INTERRUPT(0xAB);
}

static void tramplin_AC() {
    __UNHANDLED_INTERRUPT(0xAC);
}

static void tramplin_AD() {
    __UNHANDLED_INTERRUPT(0xAD);
}

static void tramplin_AE() {
    __UNHANDLED_INTERRUPT(0xAE);
}

static void tramplin_AF() {
    __UNHANDLED_INTERRUPT(0xAF);
}

static void tramplin_B0() {
    __UNHANDLED_INTERRUPT(0xB0);
}

static void tramplin_B1() {
    __UNHANDLED_INTERRUPT(0xB1);
}

static void tramplin_B2() {
    __UNHANDLED_INTERRUPT(0xB2);
}

static void tramplin_B3() {
    __UNHANDLED_INTERRUPT(0xB3);
}

static void tramplin_B4() {
    __UNHANDLED_INTERRUPT(0xB4);
}

static void tramplin_B5() {
    __UNHANDLED_INTERRUPT(0xB5);
}

static void tramplin_B6() {
    __UNHANDLED_INTERRUPT(0xB6);
}

static void tramplin_B7() {
    __UNHANDLED_INTERRUPT(0xB7);
}

static void tramplin_B8() {
    __UNHANDLED_INTERRUPT(0xB8);
}

static void tramplin_B9() {
    __UNHANDLED_INTERRUPT(0xB9);
}

static void tramplin_BA() {
    __UNHANDLED_INTERRUPT(0xBA);
}

static void tramplin_BB() {
    __UNHANDLED_INTERRUPT(0xBB);
}

static void tramplin_BC() {
    __UNHANDLED_INTERRUPT(0xBC);
}

static void tramplin_BD() {
    __UNHANDLED_INTERRUPT(0xBD);
}

static void tramplin_BE() {
    __UNHANDLED_INTERRUPT(0xBE);
}

static void tramplin_BF() {
    __UNHANDLED_INTERRUPT(0xBF);
}

static void tramplin_C0() {
    __UNHANDLED_INTERRUPT(0xC0);
}

static void tramplin_C1() {
    __UNHANDLED_INTERRUPT(0xC1);
}

static void tramplin_C2() {
    __UNHANDLED_INTERRUPT(0xC2);
}

static void tramplin_C3() {
    __UNHANDLED_INTERRUPT(0xC3);
}

static void tramplin_C4() {
    __UNHANDLED_INTERRUPT(0xC4);
}

static void tramplin_C5() {
    __UNHANDLED_INTERRUPT(0xC5);
}

static void tramplin_C6() {
    __UNHANDLED_INTERRUPT(0xC6);
}

static void tramplin_C7() {
    __UNHANDLED_INTERRUPT(0xC7);
}

static void tramplin_C8() {
    __UNHANDLED_INTERRUPT(0xC8);
}

static void tramplin_C9() {
    __UNHANDLED_INTERRUPT(0xC9);
}

static void tramplin_CA() {
    __UNHANDLED_INTERRUPT(0xCA);
}

static void tramplin_CB() {
    __UNHANDLED_INTERRUPT(0xCB);
}

static void tramplin_CC() {
    __UNHANDLED_INTERRUPT(0xCC);
}

static void tramplin_CD() {
    __UNHANDLED_INTERRUPT(0xCD);
}

static void tramplin_CE() {
    __UNHANDLED_INTERRUPT(0xCE);
}

static void tramplin_CF() {
    __UNHANDLED_INTERRUPT(0xCF);
}

static void tramplin_D0() {
    __UNHANDLED_INTERRUPT(0xD0);
}

static void tramplin_D1() {
    __UNHANDLED_INTERRUPT(0xD1);
}

static void tramplin_D2() {
    __UNHANDLED_INTERRUPT(0xD2);
}

static void tramplin_D3() {
    __UNHANDLED_INTERRUPT(0xD3);
}

static void tramplin_D4() {
    __UNHANDLED_INTERRUPT(0xD4);
}

static void tramplin_D5() {
    __UNHANDLED_INTERRUPT(0xD5);
}

static void tramplin_D6() {
    __UNHANDLED_INTERRUPT(0xD6);
}

static void tramplin_D7() {
    __UNHANDLED_INTERRUPT(0xD7);
}

static void tramplin_D8() {
    __UNHANDLED_INTERRUPT(0xD8);
}

static void tramplin_D9() {
    __UNHANDLED_INTERRUPT(0xD9);
}

static void tramplin_DA() {
    __UNHANDLED_INTERRUPT(0xDA);
}

static void tramplin_DB() {
    __UNHANDLED_INTERRUPT(0xDB);
}

static void tramplin_DC() {
    __UNHANDLED_INTERRUPT(0xDC);
}

static void tramplin_DD() {
    __UNHANDLED_INTERRUPT(0xDD);
}

static void tramplin_DE() {
    __UNHANDLED_INTERRUPT(0xDE);
}

static void tramplin_DF() {
    __UNHANDLED_INTERRUPT(0xDF);
}

static void tramplin_E0() {
    __UNHANDLED_INTERRUPT(0xE0);
}

static void tramplin_E1() {
    __UNHANDLED_INTERRUPT(0xE1);
}

static void tramplin_E2() {
    __UNHANDLED_INTERRUPT(0xE2);
}

static void tramplin_E3() {
    __UNHANDLED_INTERRUPT(0xE3);
}

static void tramplin_E4() {
    __UNHANDLED_INTERRUPT(0xE4);
}

static void tramplin_E5() {
    __UNHANDLED_INTERRUPT(0xE5);
}

static void tramplin_E6() {
    __UNHANDLED_INTERRUPT(0xE6);
}

static void tramplin_E7() {
    __UNHANDLED_INTERRUPT(0xE7);
}

static void tramplin_E8() {
    __UNHANDLED_INTERRUPT(0xE8);
}

static void tramplin_E9() {
    __UNHANDLED_INTERRUPT(0xE9);
}

static void tramplin_EA() {
    __UNHANDLED_INTERRUPT(0xEA);
}

static void tramplin_EB() {
    __UNHANDLED_INTERRUPT(0xEB);
}

static void tramplin_EC() {
    __UNHANDLED_INTERRUPT(0xEC);
}

static void tramplin_ED() {
    __UNHANDLED_INTERRUPT(0xED);
}

static void tramplin_EE() {
    __UNHANDLED_INTERRUPT(0xEE);
}

static void tramplin_EF() {
    __UNHANDLED_INTERRUPT(0xEF);
}

static void tramplin_F0() {
    __UNHANDLED_INTERRUPT(0xF0);
}

static void tramplin_F1() {
    __UNHANDLED_INTERRUPT(0xF1);
}

static void tramplin_F2() {
    __UNHANDLED_INTERRUPT(0xF2);
}

static void tramplin_F3() {
    __UNHANDLED_INTERRUPT(0xF3);
}

static void tramplin_F4() {
    __UNHANDLED_INTERRUPT(0xF4);
}

static void tramplin_F5() {
    __UNHANDLED_INTERRUPT(0xF5);
}

static void tramplin_F6() {
    __UNHANDLED_INTERRUPT(0xF6);
}

static void tramplin_F7() {
    __UNHANDLED_INTERRUPT(0xF7);
}

static void tramplin_F8() {
    __UNHANDLED_INTERRUPT(0xF8);
}

static void tramplin_F9() {
    __UNHANDLED_INTERRUPT(0xF9);
}

static void tramplin_FA() {
    __UNHANDLED_INTERRUPT(0xFA);
}

static void tramplin_FB() {
    __UNHANDLED_INTERRUPT(0xFB);
}

static void tramplin_FC() {
    __UNHANDLED_INTERRUPT(0xFC);
}

static void tramplin_FD() {
    __UNHANDLED_INTERRUPT(0xFD);
}

static void tramplin_FE() {
    __UNHANDLED_INTERRUPT(0xFE);
}

static void tramplin_FF() {
    __UNHANDLED_INTERRUPT(0xFF);
}


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

    for (u4 i = 0; i < 256; i++) {
        u4 handler_addr = __ptr_value(tramplins[i]);
        struct segment_selector segment = {
            0,
            0,
            8
        };

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
    idt_descriptor.idt_size = 255;

    __idt_load(__ptr_value(&idt_descriptor));
}