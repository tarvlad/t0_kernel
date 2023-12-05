#pragma once
#include "ktypes.h"

void init_pic();


void __outb(u2 port, u1 data);


u1 __inb(u2 port);


void send_command_8259_master(u2 command);

void send_command_8259_slave(u2 command);

void send_data_8259_master(u2 data);

void send_data_8259_slave(u2 data);