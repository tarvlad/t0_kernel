#ifndef T0_KERNEL_8259_H
#define T0_KERNEL_8259_H


void send_command_8259_master(u4 command);

void send_command_8259_slave(u4 command);

void send_data_8259_master(u4 data);

void send_data_8259_slave(u4 data);


#endif //T0_KERNEL_8259_H
