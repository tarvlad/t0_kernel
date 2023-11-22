#pragma once


#include "DisplayPrinter.hpp"
#include "IOManip.hpp"
#include "Misc.hpp"


class InterruptHandler {

public:
    static void kernelPanic(byte vector) {
        DisplayPrinter panicPrinter;
        panicPrinter << HEX_WITH_PREFIX << "Unhandled interrupt: " << static_cast<unsigned>(vector) << '\n';
        __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
        "cli\n"
        "hlt\n"
        );
    }


    static void tramplin0x0() {
        kernelPanic(0x0);
    }

    static void tramplin0x1() {
        kernelPanic(0x1);
    }

    static void tramplin0x2() {
        kernelPanic(0x2);
    }

    static void tramplin0x3() {
        kernelPanic(0x3);
    }

    static void tramplin0x4() {
        kernelPanic(0x4);
    }

    static void tramplin0x5() {
        kernelPanic(0x5);
    }

    static void tramplin0x6() {
        kernelPanic(0x6);
    }

    static void tramplin0x7() {
        kernelPanic(0x7);
    }

    static void tramplin0x8() {
        kernelPanic(0x8);
    }

    static void tramplin0x9() {
        kernelPanic(0x9);
    }

    static void tramplin0xA() {
        kernelPanic(0xA);
    }

    static void tramplin0xB() {
        kernelPanic(0xB);
    }

    static void tramplin0xC() {
        kernelPanic(0xC);
    }

    static void tramplin0xD() {
        kernelPanic(0xD);
    }

    static void tramplin0xE() {
        kernelPanic(0xE);
    }

    static void tramplin0xF() {
        kernelPanic(0xF);
    }

    static void tramplin0x10() {
        kernelPanic(0x10);
    }

    static void tramplin0x11() {
        kernelPanic(0x11);
    }

    static void tramplin0x12() {
        kernelPanic(0x12);
    }

    static void tramplin0x13() {
        kernelPanic(0x13);
    }

    static void tramplin0x14() {
        kernelPanic(0x14);
    }

    static void tramplin0x15() {
        kernelPanic(0x15);
    }

    static void tramplin0x16() {
        kernelPanic(0x16);
    }

    static void tramplin0x17() {
        kernelPanic(0x17);
    }

    static void tramplin0x18() {
        kernelPanic(0x18);
    }

    static void tramplin0x19() {
        kernelPanic(0x19);
    }

    static void tramplin0x1A() {
        kernelPanic(0x1A);
    }

    static void tramplin0x1B() {
        kernelPanic(0x1B);
    }

    static void tramplin0x1C() {
        kernelPanic(0x1C);
    }

    static void tramplin0x1D() {
        kernelPanic(0x1D);
    }

    static void tramplin0x1E() {
        kernelPanic(0x1E);
    }

    static void tramplin0x1F() {
        kernelPanic(0x1F);
    }

    static void tramplin0x20() {
        kernelPanic(0x20);
    }

    static void tramplin0x21() {
        kernelPanic(0x21);
    }

    static void tramplin0x22() {
        kernelPanic(0x22);
    }

    static void tramplin0x23() {
        kernelPanic(0x23);
    }

    static void tramplin0x24() {
        kernelPanic(0x24);
    }

    static void tramplin0x25() {
        kernelPanic(0x25);
    }

    static void tramplin0x26() {
        kernelPanic(0x26);
    }

    static void tramplin0x27() {
        kernelPanic(0x27);
    }

    static void tramplin0x28() {
        kernelPanic(0x28);
    }

    static void tramplin0x29() {
        kernelPanic(0x29);
    }

    static void tramplin0x2A() {
        kernelPanic(0x2A);
    }

    static void tramplin0x2B() {
        kernelPanic(0x2B);
    }

    static void tramplin0x2C() {
        kernelPanic(0x2C);
    }

    static void tramplin0x2D() {
        kernelPanic(0x2D);
    }

    static void tramplin0x2E() {
        kernelPanic(0x2E);
    }

    static void tramplin0x2F() {
        kernelPanic(0x2F);
    }

    static void tramplin0x30() {
        kernelPanic(0x30);
    }

    static void tramplin0x31() {
        kernelPanic(0x31);
    }

    static void tramplin0x32() {
        kernelPanic(0x32);
    }

    static void tramplin0x33() {
        kernelPanic(0x33);
    }

    static void tramplin0x34() {
        kernelPanic(0x34);
    }

    static void tramplin0x35() {
        kernelPanic(0x35);
    }

    static void tramplin0x36() {
        kernelPanic(0x36);
    }

    static void tramplin0x37() {
        kernelPanic(0x37);
    }

    static void tramplin0x38() {
        kernelPanic(0x38);
    }

    static void tramplin0x39() {
        kernelPanic(0x39);
    }

    static void tramplin0x3A() {
        kernelPanic(0x3A);
    }

    static void tramplin0x3B() {
        kernelPanic(0x3B);
    }

    static void tramplin0x3C() {
        kernelPanic(0x3C);
    }

    static void tramplin0x3D() {
        kernelPanic(0x3D);
    }

    static void tramplin0x3E() {
        kernelPanic(0x3E);
    }

    static void tramplin0x3F() {
        kernelPanic(0x3F);
    }

    static void tramplin0x40() {
        kernelPanic(0x40);
    }

    static void tramplin0x41() {
        kernelPanic(0x41);
    }

    static void tramplin0x42() {
        kernelPanic(0x42);
    }

    static void tramplin0x43() {
        kernelPanic(0x43);
    }

    static void tramplin0x44() {
        kernelPanic(0x44);
    }

    static void tramplin0x45() {
        kernelPanic(0x45);
    }

    static void tramplin0x46() {
        kernelPanic(0x46);
    }

    static void tramplin0x47() {
        kernelPanic(0x47);
    }

    static void tramplin0x48() {
        kernelPanic(0x48);
    }

    static void tramplin0x49() {
        kernelPanic(0x49);
    }

    static void tramplin0x4A() {
        kernelPanic(0x4A);
    }

    static void tramplin0x4B() {
        kernelPanic(0x4B);
    }

    static void tramplin0x4C() {
        kernelPanic(0x4C);
    }

    static void tramplin0x4D() {
        kernelPanic(0x4D);
    }

    static void tramplin0x4E() {
        kernelPanic(0x4E);
    }

    static void tramplin0x4F() {
        kernelPanic(0x4F);
    }

    static void tramplin0x50() {
        kernelPanic(0x50);
    }

    static void tramplin0x51() {
        kernelPanic(0x51);
    }

    static void tramplin0x52() {
        kernelPanic(0x52);
    }

    static void tramplin0x53() {
        kernelPanic(0x53);
    }

    static void tramplin0x54() {
        kernelPanic(0x54);
    }

    static void tramplin0x55() {
        kernelPanic(0x55);
    }

    static void tramplin0x56() {
        kernelPanic(0x56);
    }

    static void tramplin0x57() {
        kernelPanic(0x57);
    }

    static void tramplin0x58() {
        kernelPanic(0x58);
    }

    static void tramplin0x59() {
        kernelPanic(0x59);
    }

    static void tramplin0x5A() {
        kernelPanic(0x5A);
    }

    static void tramplin0x5B() {
        kernelPanic(0x5B);
    }

    static void tramplin0x5C() {
        kernelPanic(0x5C);
    }

    static void tramplin0x5D() {
        kernelPanic(0x5D);
    }

    static void tramplin0x5E() {
        kernelPanic(0x5E);
    }

    static void tramplin0x5F() {
        kernelPanic(0x5F);
    }

    static void tramplin0x60() {
        kernelPanic(0x60);
    }

    static void tramplin0x61() {
        kernelPanic(0x61);
    }

    static void tramplin0x62() {
        kernelPanic(0x62);
    }

    static void tramplin0x63() {
        kernelPanic(0x63);
    }

    static void tramplin0x64() {
        kernelPanic(0x64);
    }

    static void tramplin0x65() {
        kernelPanic(0x65);
    }

    static void tramplin0x66() {
        kernelPanic(0x66);
    }

    static void tramplin0x67() {
        kernelPanic(0x67);
    }

    static void tramplin0x68() {
        kernelPanic(0x68);
    }

    static void tramplin0x69() {
        kernelPanic(0x69);
    }

    static void tramplin0x6A() {
        kernelPanic(0x6A);
    }

    static void tramplin0x6B() {
        kernelPanic(0x6B);
    }

    static void tramplin0x6C() {
        kernelPanic(0x6C);
    }

    static void tramplin0x6D() {
        kernelPanic(0x6D);
    }

    static void tramplin0x6E() {
        kernelPanic(0x6E);
    }

    static void tramplin0x6F() {
        kernelPanic(0x6F);
    }

    static void tramplin0x70() {
        kernelPanic(0x70);
    }

    static void tramplin0x71() {
        kernelPanic(0x71);
    }

    static void tramplin0x72() {
        kernelPanic(0x72);
    }

    static void tramplin0x73() {
        kernelPanic(0x73);
    }

    static void tramplin0x74() {
        kernelPanic(0x74);
    }

    static void tramplin0x75() {
        kernelPanic(0x75);
    }

    static void tramplin0x76() {
        kernelPanic(0x76);
    }

    static void tramplin0x77() {
        kernelPanic(0x77);
    }

    static void tramplin0x78() {
        kernelPanic(0x78);
    }

    static void tramplin0x79() {
        kernelPanic(0x79);
    }

    static void tramplin0x7A() {
        kernelPanic(0x7A);
    }

    static void tramplin0x7B() {
        kernelPanic(0x7B);
    }

    static void tramplin0x7C() {
        kernelPanic(0x7C);
    }

    static void tramplin0x7D() {
        kernelPanic(0x7D);
    }

    static void tramplin0x7E() {
        kernelPanic(0x7E);
    }

    static void tramplin0x7F() {
        kernelPanic(0x7F);
    }

    static void tramplin0x80() {
        kernelPanic(0x80);
    }

    static void tramplin0x81() {
        kernelPanic(0x81);
    }

    static void tramplin0x82() {
        kernelPanic(0x82);
    }

    static void tramplin0x83() {
        kernelPanic(0x83);
    }

    static void tramplin0x84() {
        kernelPanic(0x84);
    }

    static void tramplin0x85() {
        kernelPanic(0x85);
    }

    static void tramplin0x86() {
        kernelPanic(0x86);
    }

    static void tramplin0x87() {
        kernelPanic(0x87);
    }

    static void tramplin0x88() {
        kernelPanic(0x88);
    }

    static void tramplin0x89() {
        kernelPanic(0x89);
    }

    static void tramplin0x8A() {
        kernelPanic(0x8A);
    }

    static void tramplin0x8B() {
        kernelPanic(0x8B);
    }

    static void tramplin0x8C() {
        kernelPanic(0x8C);
    }

    static void tramplin0x8D() {
        kernelPanic(0x8D);
    }

    static void tramplin0x8E() {
        kernelPanic(0x8E);
    }

    static void tramplin0x8F() {
        kernelPanic(0x8F);
    }

    static void tramplin0x90() {
        kernelPanic(0x90);
    }

    static void tramplin0x91() {
        kernelPanic(0x91);
    }

    static void tramplin0x92() {
        kernelPanic(0x92);
    }

    static void tramplin0x93() {
        kernelPanic(0x93);
    }

    static void tramplin0x94() {
        kernelPanic(0x94);
    }

    static void tramplin0x95() {
        kernelPanic(0x95);
    }

    static void tramplin0x96() {
        kernelPanic(0x96);
    }

    static void tramplin0x97() {
        kernelPanic(0x97);
    }

    static void tramplin0x98() {
        kernelPanic(0x98);
    }

    static void tramplin0x99() {
        kernelPanic(0x99);
    }

    static void tramplin0x9A() {
        kernelPanic(0x9A);
    }

    static void tramplin0x9B() {
        kernelPanic(0x9B);
    }

    static void tramplin0x9C() {
        kernelPanic(0x9C);
    }

    static void tramplin0x9D() {
        kernelPanic(0x9D);
    }

    static void tramplin0x9E() {
        kernelPanic(0x9E);
    }

    static void tramplin0x9F() {
        kernelPanic(0x9F);
    }

    static void tramplin0xA0() {
        kernelPanic(0xA0);
    }

    static void tramplin0xA1() {
        kernelPanic(0xA1);
    }

    static void tramplin0xA2() {
        kernelPanic(0xA2);
    }

    static void tramplin0xA3() {
        kernelPanic(0xA3);
    }

    static void tramplin0xA4() {
        kernelPanic(0xA4);
    }

    static void tramplin0xA5() {
        kernelPanic(0xA5);
    }

    static void tramplin0xA6() {
        kernelPanic(0xA6);
    }

    static void tramplin0xA7() {
        kernelPanic(0xA7);
    }

    static void tramplin0xA8() {
        kernelPanic(0xA8);
    }

    static void tramplin0xA9() {
        kernelPanic(0xA9);
    }

    static void tramplin0xAA() {
        kernelPanic(0xAA);
    }

    static void tramplin0xAB() {
        kernelPanic(0xAB);
    }

    static void tramplin0xAC() {
        kernelPanic(0xAC);
    }

    static void tramplin0xAD() {
        kernelPanic(0xAD);
    }

    static void tramplin0xAE() {
        kernelPanic(0xAE);
    }

    static void tramplin0xAF() {
        kernelPanic(0xAF);
    }

    static void tramplin0xB0() {
        kernelPanic(0xB0);
    }

    static void tramplin0xB1() {
        kernelPanic(0xB1);
    }

    static void tramplin0xB2() {
        kernelPanic(0xB2);
    }

    static void tramplin0xB3() {
        kernelPanic(0xB3);
    }

    static void tramplin0xB4() {
        kernelPanic(0xB4);
    }

    static void tramplin0xB5() {
        kernelPanic(0xB5);
    }

    static void tramplin0xB6() {
        kernelPanic(0xB6);
    }

    static void tramplin0xB7() {
        kernelPanic(0xB7);
    }

    static void tramplin0xB8() {
        kernelPanic(0xB8);
    }

    static void tramplin0xB9() {
        kernelPanic(0xB9);
    }

    static void tramplin0xBA() {
        kernelPanic(0xBA);
    }

    static void tramplin0xBB() {
        kernelPanic(0xBB);
    }

    static void tramplin0xBC() {
        kernelPanic(0xBC);
    }

    static void tramplin0xBD() {
        kernelPanic(0xBD);
    }

    static void tramplin0xBE() {
        kernelPanic(0xBE);
    }

    static void tramplin0xBF() {
        kernelPanic(0xBF);
    }

    static void tramplin0xC0() {
        kernelPanic(0xC0);
    }

    static void tramplin0xC1() {
        kernelPanic(0xC1);
    }

    static void tramplin0xC2() {
        kernelPanic(0xC2);
    }

    static void tramplin0xC3() {
        kernelPanic(0xC3);
    }

    static void tramplin0xC4() {
        kernelPanic(0xC4);
    }

    static void tramplin0xC5() {
        kernelPanic(0xC5);
    }

    static void tramplin0xC6() {
        kernelPanic(0xC6);
    }

    static void tramplin0xC7() {
        kernelPanic(0xC7);
    }

    static void tramplin0xC8() {
        kernelPanic(0xC8);
    }

    static void tramplin0xC9() {
        kernelPanic(0xC9);
    }

    static void tramplin0xCA() {
        kernelPanic(0xCA);
    }

    static void tramplin0xCB() {
        kernelPanic(0xCB);
    }

    static void tramplin0xCC() {
        kernelPanic(0xCC);
    }

    static void tramplin0xCD() {
        kernelPanic(0xCD);
    }

    static void tramplin0xCE() {
        kernelPanic(0xCE);
    }

    static void tramplin0xCF() {
        kernelPanic(0xCF);
    }

    static void tramplin0xD0() {
        kernelPanic(0xD0);
    }

    static void tramplin0xD1() {
        kernelPanic(0xD1);
    }

    static void tramplin0xD2() {
        kernelPanic(0xD2);
    }

    static void tramplin0xD3() {
        kernelPanic(0xD3);
    }

    static void tramplin0xD4() {
        kernelPanic(0xD4);
    }

    static void tramplin0xD5() {
        kernelPanic(0xD5);
    }

    static void tramplin0xD6() {
        kernelPanic(0xD6);
    }

    static void tramplin0xD7() {
        kernelPanic(0xD7);
    }

    static void tramplin0xD8() {
        kernelPanic(0xD8);
    }

    static void tramplin0xD9() {
        kernelPanic(0xD9);
    }

    static void tramplin0xDA() {
        kernelPanic(0xDA);
    }

    static void tramplin0xDB() {
        kernelPanic(0xDB);
    }

    static void tramplin0xDC() {
        kernelPanic(0xDC);
    }

    static void tramplin0xDD() {
        kernelPanic(0xDD);
    }

    static void tramplin0xDE() {
        kernelPanic(0xDE);
    }

    static void tramplin0xDF() {
        kernelPanic(0xDF);
    }

    static void tramplin0xE0() {
        kernelPanic(0xE0);
    }

    static void tramplin0xE1() {
        kernelPanic(0xE1);
    }

    static void tramplin0xE2() {
        kernelPanic(0xE2);
    }

    static void tramplin0xE3() {
        kernelPanic(0xE3);
    }

    static void tramplin0xE4() {
        kernelPanic(0xE4);
    }

    static void tramplin0xE5() {
        kernelPanic(0xE5);
    }

    static void tramplin0xE6() {
        kernelPanic(0xE6);
    }

    static void tramplin0xE7() {
        kernelPanic(0xE7);
    }

    static void tramplin0xE8() {
        kernelPanic(0xE8);
    }

    static void tramplin0xE9() {
        kernelPanic(0xE9);
    }

    static void tramplin0xEA() {
        kernelPanic(0xEA);
    }

    static void tramplin0xEB() {
        kernelPanic(0xEB);
    }

    static void tramplin0xEC() {
        kernelPanic(0xEC);
    }

    static void tramplin0xED() {
        kernelPanic(0xED);
    }

    static void tramplin0xEE() {
        kernelPanic(0xEE);
    }

    static void tramplin0xEF() {
        kernelPanic(0xEF);
    }

    static void tramplin0xF0() {
        kernelPanic(0xF0);
    }

    static void tramplin0xF1() {
        kernelPanic(0xF1);
    }

    static void tramplin0xF2() {
        kernelPanic(0xF2);
    }

    static void tramplin0xF3() {
        kernelPanic(0xF3);
    }

    static void tramplin0xF4() {
        kernelPanic(0xF4);
    }

    static void tramplin0xF5() {
        kernelPanic(0xF5);
    }

    static void tramplin0xF6() {
        kernelPanic(0xF6);
    }

    static void tramplin0xF7() {
        kernelPanic(0xF7);
    }

    static void tramplin0xF8() {
        kernelPanic(0xF8);
    }

    static void tramplin0xF9() {
        kernelPanic(0xF9);
    }

    static void tramplin0xFA() {
        kernelPanic(0xFA);
    }

    static void tramplin0xFB() {
        kernelPanic(0xFB);
    }

    static void tramplin0xFC() {
        kernelPanic(0xFC);
    }

    static void tramplin0xFD() {
        kernelPanic(0xFD);
    }

    static void tramplin0xFE() {
        kernelPanic(0xFE);
    }

    static void tramplin0xFF() {
        kernelPanic(0xFF);
    }

    constexpr static void (*tramplins[])() = {
        tramplin0x0,
        tramplin0x1,
        tramplin0x2,
        tramplin0x3,
        tramplin0x4,
        tramplin0x5,
        tramplin0x6,
        tramplin0x7,
        tramplin0x8,
        tramplin0x9,
        tramplin0xA,
        tramplin0xB,
        tramplin0xC,
        tramplin0xD,
        tramplin0xE,
        tramplin0xF,
        tramplin0x10,
        tramplin0x11,
        tramplin0x12,
        tramplin0x13,
        tramplin0x14,
        tramplin0x15,
        tramplin0x16,
        tramplin0x17,
        tramplin0x18,
        tramplin0x19,
        tramplin0x1A,
        tramplin0x1B,
        tramplin0x1C,
        tramplin0x1D,
        tramplin0x1E,
        tramplin0x1F,
        tramplin0x20,
        tramplin0x21,
        tramplin0x22,
        tramplin0x23,
        tramplin0x24,
        tramplin0x25,
        tramplin0x26,
        tramplin0x27,
        tramplin0x28,
        tramplin0x29,
        tramplin0x2A,
        tramplin0x2B,
        tramplin0x2C,
        tramplin0x2D,
        tramplin0x2E,
        tramplin0x2F,
        tramplin0x30,
        tramplin0x31,
        tramplin0x32,
        tramplin0x33,
        tramplin0x34,
        tramplin0x35,
        tramplin0x36,
        tramplin0x37,
        tramplin0x38,
        tramplin0x39,
        tramplin0x3A,
        tramplin0x3B,
        tramplin0x3C,
        tramplin0x3D,
        tramplin0x3E,
        tramplin0x3F,
        tramplin0x40,
        tramplin0x41,
        tramplin0x42,
        tramplin0x43,
        tramplin0x44,
        tramplin0x45,
        tramplin0x46,
        tramplin0x47,
        tramplin0x48,
        tramplin0x49,
        tramplin0x4A,
        tramplin0x4B,
        tramplin0x4C,
        tramplin0x4D,
        tramplin0x4E,
        tramplin0x4F,
        tramplin0x50,
        tramplin0x51,
        tramplin0x52,
        tramplin0x53,
        tramplin0x54,
        tramplin0x55,
        tramplin0x56,
        tramplin0x57,
        tramplin0x58,
        tramplin0x59,
        tramplin0x5A,
        tramplin0x5B,
        tramplin0x5C,
        tramplin0x5D,
        tramplin0x5E,
        tramplin0x5F,
        tramplin0x60,
        tramplin0x61,
        tramplin0x62,
        tramplin0x63,
        tramplin0x64,
        tramplin0x65,
        tramplin0x66,
        tramplin0x67,
        tramplin0x68,
        tramplin0x69,
        tramplin0x6A,
        tramplin0x6B,
        tramplin0x6C,
        tramplin0x6D,
        tramplin0x6E,
        tramplin0x6F,
        tramplin0x70,
        tramplin0x71,
        tramplin0x72,
        tramplin0x73,
        tramplin0x74,
        tramplin0x75,
        tramplin0x76,
        tramplin0x77,
        tramplin0x78,
        tramplin0x79,
        tramplin0x7A,
        tramplin0x7B,
        tramplin0x7C,
        tramplin0x7D,
        tramplin0x7E,
        tramplin0x7F,
        tramplin0x80,
        tramplin0x81,
        tramplin0x82,
        tramplin0x83,
        tramplin0x84,
        tramplin0x85,
        tramplin0x86,
        tramplin0x87,
        tramplin0x88,
        tramplin0x89,
        tramplin0x8A,
        tramplin0x8B,
        tramplin0x8C,
        tramplin0x8D,
        tramplin0x8E,
        tramplin0x8F,
        tramplin0x90,
        tramplin0x91,
        tramplin0x92,
        tramplin0x93,
        tramplin0x94,
        tramplin0x95,
        tramplin0x96,
        tramplin0x97,
        tramplin0x98,
        tramplin0x99,
        tramplin0x9A,
        tramplin0x9B,
        tramplin0x9C,
        tramplin0x9D,
        tramplin0x9E,
        tramplin0x9F,
        tramplin0xA0,
        tramplin0xA1,
        tramplin0xA2,
        tramplin0xA3,
        tramplin0xA4,
        tramplin0xA5,
        tramplin0xA6,
        tramplin0xA7,
        tramplin0xA8,
        tramplin0xA9,
        tramplin0xAA,
        tramplin0xAB,
        tramplin0xAC,
        tramplin0xAD,
        tramplin0xAE,
        tramplin0xAF,
        tramplin0xB0,
        tramplin0xB1,
        tramplin0xB2,
        tramplin0xB3,
        tramplin0xB4,
        tramplin0xB5,
        tramplin0xB6,
        tramplin0xB7,
        tramplin0xB8,
        tramplin0xB9,
        tramplin0xBA,
        tramplin0xBB,
        tramplin0xBC,
        tramplin0xBD,
        tramplin0xBE,
        tramplin0xBF,
        tramplin0xC0,
        tramplin0xC1,
        tramplin0xC2,
        tramplin0xC3,
        tramplin0xC4,
        tramplin0xC5,
        tramplin0xC6,
        tramplin0xC7,
        tramplin0xC8,
        tramplin0xC9,
        tramplin0xCA,
        tramplin0xCB,
        tramplin0xCC,
        tramplin0xCD,
        tramplin0xCE,
        tramplin0xCF,
        tramplin0xD0,
        tramplin0xD1,
        tramplin0xD2,
        tramplin0xD3,
        tramplin0xD4,
        tramplin0xD5,
        tramplin0xD6,
        tramplin0xD7,
        tramplin0xD8,
        tramplin0xD9,
        tramplin0xDA,
        tramplin0xDB,
        tramplin0xDC,
        tramplin0xDD,
        tramplin0xDE,
        tramplin0xDF,
        tramplin0xE0,
        tramplin0xE1,
        tramplin0xE2,
        tramplin0xE3,
        tramplin0xE4,
        tramplin0xE5,
        tramplin0xE6,
        tramplin0xE7,
        tramplin0xE8,
        tramplin0xE9,
        tramplin0xEA,
        tramplin0xEB,
        tramplin0xEC,
        tramplin0xED,
        tramplin0xEE,
        tramplin0xEF,
        tramplin0xF0,
        tramplin0xF1,
        tramplin0xF2,
        tramplin0xF3,
        tramplin0xF4,
        tramplin0xF5,
        tramplin0xF6,
        tramplin0xF7,
        tramplin0xF8,
        tramplin0xF9,
        tramplin0xFA,
        tramplin0xFB,
        tramplin0xFC,
        tramplin0xFD,
        tramplin0xFE,
        tramplin0xFF
    };


    static void init() {
        //TODO   
    }
};