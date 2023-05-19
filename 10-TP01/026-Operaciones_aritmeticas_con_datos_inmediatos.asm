            .data       # zona de datos
                        # Max. positivo representable 0x7fffffff
numero:     .word       2147483647
            .text       # zona de instrucciones
main:       lw $t0, numero($0)
            addiu $t1, $t0, 1

# cuestion 3.1

# al realizar la suma, de la variable numero que equivale al mayor numero que
# se puede almacenar en 32 bits, mas 1, el resultado es el menor numero que se
# puede almacenar en 32 bits, ya que al sumar 1 al mayor numero, se produce un
# desbordamiento. pero en este caso la instruccion addiu, no produce una
# excepcion, sino que el resultado es el menor numero que se puede almacenar en 32 bits.