#include "pic.h"

#define PIC1_PORT 0x20
#define PIC2_PORT 0xA0
#define BIOS_DIAGNOSTIC_PORT 0x80

#define ICW1 0x11 
#define ICW2_MASTER 0x20
#define ICW2_SLAVE 0x28
#define ICW3_MASTER 0x4
#define ICW3_SLAVE 0x2
#define ICW4 0x1

void init_pic() {
    __outb(PIC1_PORT, ICW1);
    __outb(BIOS_DIAGNOSTIC_PORT, 0);

    __outb(PIC2_PORT, ICW1);
    __outb(BIOS_DIAGNOSTIC_PORT, 0);

    __outb(PIC1_PORT, ICW2_MASTER);
    __outb(BIOS_DIAGNOSTIC_PORT, 0);

    __outb(PIC2_PORT, ICW2_SLAVE);
    __outb(BIOS_DIAGNOSTIC_PORT, 0);

    __outb(PIC1_PORT, ICW3_MASTER);
    __outb(BIOS_DIAGNOSTIC_PORT, 0);

    __outb(PIC2_PORT, ICW3_SLAVE);
    __outb(BIOS_DIAGNOSTIC_PORT, 0);

    __outb(PIC1_PORT, ICW4);
    __outb(BIOS_DIAGNOSTIC_PORT, 0);
    
    __outb(PIC2_PORT, ICW4);
    __outb(BIOS_DIAGNOSTIC_PORT, 0);
}