if __name__ == "__main__":
    ctr = 0
    for i in range(256):
        print("mov eax, tramplin_" + hex(i)[2:])
        print("mov word [ecx + " + str(ctr) + "], ax")
        ctr += 2
        print("mov word [ecx + " + str(ctr) + "], 8")
        ctr += 2
        print("mov byte [ecx + " + str(ctr) + "], 0")
        ctr += 1
        print("mov byte [ecx + " + str(ctr) + "], 0x8e")
        ctr += 1
        print("shr eax, 16")
        print("mov word [ecx + " + str(ctr) + "], ax")
        ctr += 2
        print()
