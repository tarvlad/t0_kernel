if __name__ == "__main__":
    with open("/home/tarvlad/source/t0_kernel/src/tramplins.asm", "w") as out:
        out.write("[bits 32]\n\n")
        for i in range(256):
            out.write("global tramplin_" + hex(i)[2:] + "\n")
        out.write("\n")
        for i in range(256):
            out.write("tramplin_" + hex(i)[2:] + ":\n")
            out.write("push " + hex(i) + "\n")
            out.write("jmp collect_context\n\n")
        out.write("\n")

