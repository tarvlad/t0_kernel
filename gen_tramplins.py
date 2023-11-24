for i in range(256):
    print("static void tramplin_" + hex(i)[2:].upper() + "() {")
    print("    __UNHANDLED_INTERRUPT(" + hex(i).upper().replace("X", 'x') + ");")
    print("}\n")


print("static void **tramplins = {")
for i in range(256):
    print("    tramplin_" + hex(i)[2:].upper() + ",")

print("};")
