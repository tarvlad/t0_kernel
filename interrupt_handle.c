#include "interrupt_handle.h"
#include "display.h"


void interrupt_handler(struct context* context) {
    switch (context->vector) {
    case 0x21:
        printfmt("keyboard interrupt handled\n");
        break;
    default:
        printfmt("Kernel panic: unhandled interrupt %x\n", context->vector);
        printfmt("Interrupted process context:\n");
        printfmt("eax: %x\n", context->eax);
        printfmt("ebx: %x\n", context->ebx);
        printfmt("ecx: %x\n", context->ecx);
        printfmt("edx: %x\n", context->edx);
        printfmt("esi: %x\n", context->esi);
        printfmt("edi: %x\n", context->edi);
        printfmt("esp: %x\n", context->esp);
        printfmt("eip: %x\n", context->eip);
        printfmt("flg: %x\n", context->eflags);
        printfmt(" gs: %x\n", context->gs);
        printfmt(" fs: %x\n", context->fs);
        printfmt(" es: %x\n", context->es);
        printfmt(" ds: %x\n", context->ds);
        printfmt(" cs: %x\n", context->cs);
        printfmt(" ss: %x\n", context->ss);
        __asm__ __volatile__(
            "cli\n"
            "hlt\n"
        );
    }

    return;
}