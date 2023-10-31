static_assert(sizeof(int) == 4, "ERROR: DONT RUN IT ON PDP-11 PLS");

[[noreturn]]
extern "C" void main() {
    char *videoMemory = (char *)0xB8000;
    videoMemory[0] = 0;
    videoMemory[1] = 0;
    
    for(;;);
}
