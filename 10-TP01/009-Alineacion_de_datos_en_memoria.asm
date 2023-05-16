            .data
byte1:      .byte    0x10
espacio:    .space   4
byte2:      .byte    0x20
palabra:    .word    10

# cuestion 1.17
# la variable espacio ocupa 4 bytes, e inicia automaticamente
# despues de la variable byte1 que ocupa 1 byte
# la variable espacio empieza en la direccion 0x10010001
# y termina en la direccion 0x10010005

# cuestion 1.18
# los 4 bytes de espacio pueden constituir el espacio para una palabra
# pero en este caso no, porque al tener un byte ocupado por byte1,
# la variable word no puede empezar en la direccion 0x10010001,
# si o si se corre y comienza en la direccion 0x10010004

# cuestion 1.19
# la direccion en memoria de byte1 es 0x10010000
# la direccion en memoria de byte2 es 0x10010005