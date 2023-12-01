#include "display.h"
#include "memory.h"


int main(void) {
    init_printer();
    init_heap();
    init_idt();

    printfmt("test message: [%u]\n", 4012);

    __asm__ __volatile__("sti");
    
    __asm__ __volatile__ (
        "hlt\n"
    );
}