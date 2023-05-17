            .data
palabra:    .word        0x10203040
            .text        # zona de instrucciones
main:       lw $s0, palabra($0)

# cuestion 2.5

# cuando se carga el programa, en la memoria de datos se guarda la
# palabra 0x10203040, en el espacio de memoria 0x10010000.
# luego se ejecuta la instruccion lw y
# se carga en el registro $s0 el valor 0x10203040