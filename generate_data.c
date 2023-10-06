#include <fcntl.h>
#include <unistd.h>


int main() {
    int fd = open("data.bin", O_RDWR | O_CREAT, 0664);
    if (fd == -1) {
        return 1;
    }

    char *data[4];
    for (unsigned i = 0; i < 384 * 1024 / sizeof(unsigned); i++) {
        *((unsigned *)data) = i;
        if (write(fd, data, sizeof(unsigned)) != sizeof(unsigned)) {
            goto l1;
        }
    }
l1:
    close(fd);
    return 0;
}
