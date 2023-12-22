#include "pic.h"


void send_command_8259_master(u2 command) {
    __outb(0x20, command);
}


void send_command_8259_slave(u2 command) {
    __outb(0xA0, command);
}


void send_data_8259_master(u2 data) {
    __outb(0x21, data);
}


void send_data_8259_slave(u2 data) {
    __outb(0xA1, data);
}


void init_pic() {
    send_command_8259_master(0x11);

    send_command_8259_slave(0x11);

    send_data_8259_master(0x20);
    
    send_data_8259_slave(0x28);

    send_data_8259_master(0x4);
    
    send_data_8259_slave(0x2);

    send_data_8259_master(0x1);

    send_data_8259_slave(0x1);

    send_data_8259_master(0xF9);

    send_data_8259_slave(0xFF);
}