#include "display.h"
#include "memory.h"


int main(void) {
    init_printer();
    init_heap();
    init_idt();

    printfmt("test %x %u", 42, 11123);

    __asm__ __volatile__("sti");
    
    __asm__ __volatile__ (
        "hlt\n"
    );
}