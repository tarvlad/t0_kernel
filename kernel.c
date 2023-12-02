#include "display.h"
#include "memory.h"
#include "pic.h"


int main(void) {
    init_printer();
    init_heap();
    init_idt();
    init_pic();

    const char *msg = "_ test _";

    printfmt("test message: [%s]\n", msg);
    printfmt("test hex message: [%x]\n", 0x42);
    printfmt("test unsigned message: [%u]\n", 42);
    __asm__ __volatile__("sti");
    
    __asm__ __volatile__ (
        "hlt\n"
    );
}