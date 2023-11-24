#include "display.h"
#include "memory.h"


int main(void) {
    init_printer();
    init_heap();
    init_idt();

    __asm__ __volatile__("sti");
    
    __asm__ __volatile__ (
        "hlt\n"
    );
}