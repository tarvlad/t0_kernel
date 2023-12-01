#include "display.h"
#include "memory.h"
#include "pic.h"


int main(void) {
    init_printer();
    init_heap();
    init_idt();
    //init_pic();

    const char *msg = "_ test _";

    printfmt("test message: [%s]\n", msg);

    __asm__ __volatile__("sti");
    
    __asm__ __volatile__ (
        "hlt\n"
    );
}