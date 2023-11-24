#include "display.h"
#include "memory.h"


int main(void) {
    init_printer();
    init_idt();

    //__asm__ __volatile__("sti");

    for (;;);
}