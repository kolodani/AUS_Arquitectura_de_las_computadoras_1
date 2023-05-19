            .data       # zona de datos
                        # Max. positivo representable 0x7fffffff
numero:     .word       2147483647
            .text       # zona de instrucciones
main:       lw   $t0, numero($0)
            addi $t1, $t0, 1

# cuestion 3.2

# lo que sucede al cambiar la instruccion addiu por addi es que el programa da
# error. esto sucede porque al sumarle al numero mas grande que se puede
# almacenar en 32 bits, se produce un desbordamiento y el resultado no puede
# ser almacenado en 32 bits.