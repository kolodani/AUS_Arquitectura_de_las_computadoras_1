            .data
byte1:      .byte    0x10
espacio:    .space   4
byte2:      .byte    0x20
palabra:    .word    10

# cuestion 1.17
# la variable espacio ocupa 4 bytes, e inicia automaticamente
# despues de la variable byte1 que ocupa 1 byte
# la variable espacio empieza en la direccion 0x10000001
# y termina en la direccion 0x10000005