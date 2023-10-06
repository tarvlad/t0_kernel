#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>


int main() {
    int fd1;
    int fd2;

    fd1 = open("boot.img", O_RDONLY);
    if (fd1 == -1) {
        return 1;
    }

    fd2 = open("memory_dump.bin", O_RDONLY);
    if (fd2 == -1) {
        return 2;
    }

    for (unsigned i = 0; i < 384 * 1024 / sizeof(unsigned); i++) {
        unsigned a;
        unsigned b;

        if (read(fd1, &a, sizeof(unsigned)) != sizeof(unsigned) || 
                read(fd2, &b, sizeof(unsigned)) != sizeof(unsigned)) {
            goto l_exit;
        }
        
        if (a != b) {
            printf("ERROR: %u\n", i * 4);
            goto l_exit;
        }
    }

l_exit:
    close(fd1);
    close(fd2);
    return 0;
}
