                .data
palabra1:       .word    0x10203040
palabra2:       .space   4
palabra3:       .word    0xffffffff

                .text    # zona de instrucciones
main:           lw $s0, palabra1($0)
                sw $s0, palabra2($0)
                sw $s0, palabra3($0)

# cuestion 2.18

# aqui el simulador convierte la instruccion lw $s0, palabra1($0) en tres instrucciones:
# lui $1, 0x00001001
# addu $1, $1, $0
# lw $s16, 0x00000000($1)

# cuestion 2.19

# cuando el programa corre en el simulador, el valor de $s0 es 0x10203040,
# va a ser guardado en memoria en las otras dos direcciones de memoria que son
# palabra2 y palabra3, esto no se ve afectado porque palabra2 sea de tipo
# .space, ya que el espacio almacenado es de 4 bytes, el mismo tamaño que
# una palabra (.word)