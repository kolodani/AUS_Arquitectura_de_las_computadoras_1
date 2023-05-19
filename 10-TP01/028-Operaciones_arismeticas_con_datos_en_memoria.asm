            .data
numero1:    .word 0x80000000    # max. negativo represent.
numero2:    .word 1
numero3:    .word 1
            .text
main:
            lw $t0, numero1($0)
            lw $t1, numero2($0)
            subu $t0, $t0, $t1
            lw $t1, numero3($0)
            subu $t0, $t0, $t1
            sw $t0, numero1($0)

# cuestion 3.4

# el programa carga el numero mas negativo representable en 32 bits en $t0,
# luego con la instruccion subu le resta 1, lo que produce un desbordamiento,
# y el resultado pasa a ser el mayor numero positivo representable en 32 bits.
# esto es un error pero la instruccion no lo detecta, por lo que el programa
# termina sin errores.