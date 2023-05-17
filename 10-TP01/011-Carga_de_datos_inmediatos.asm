.text           # zona de instrucciones
main:           lui $s0, 0x8690

# cuestion 2.1

# en el procesador se encuentra el valor 0x86900000 en el registro $s0
# el tamaño es de 32 bits, por lo que completa con ceros los 16 bits restantes
# en la direccion 0x00400000 se encuentra esto: 0x3c108690
# que es el valor 8690 que ingrese y el 3c10 es el opcode de lui

# cuestion 2.2

# en la zona de los registro se encuentra el valor 0x86900000 en el registro $s0