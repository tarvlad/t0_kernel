#ifndef T0_KERNEL_ALLOCATOR_H
#define T0_KERNEL_ALLOCATOR_H


u4 allocate_blocks(u4 num_blocks);

void deallocate_blocks(u4 region_addr);


#endif //T0_KERNEL_ALLOCATOR_H
