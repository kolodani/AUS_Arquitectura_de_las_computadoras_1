                .data
palabra1:       .word        0x20
espacio:        .space       8        # reservo espacio
palabra2:       .word        0x30

# cuestion 1.15
# la variable espacio empieza en la direccion 0x10010004
# y termina en la direccion 0x1001000B ocupando 8 bytes

# cuestion 1.16
# en total se reservaron 16 bytes, 4 para palabra1, 8 para espacio y 4 para palabra2.
# esos 16 bytes equivalen a 4 words