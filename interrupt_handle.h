#pragma once

#include "ktypes.h"


struct context {
    u4 edi;
    u4 esi;
    u4 ebp;
    u4 esp_;
    u4 ebx;
    u4 edx;
    u4 ecx;
    u4 eax;
    u2 pad_gs;
    u2 gs;
    u2 pad_fs;
    u2 fs;
    u2 pad_es;
    u2 es;
    u2 pad_ds;
    u2 ds;
    u4 vector;
    u4 error_code;
    u4 eip;
    u2 pad_cs;
    u2 cs;
    u4 eflags;
    u4 esp;
    u2 pad_ss;
    u2 ss;
};


void interrupt_handler(struct context *context);