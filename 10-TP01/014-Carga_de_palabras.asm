            .data
palabra:    .word        0x10203040
            .text        # zona de instrucciones
main:       lui $1,0x00001001
            addu $1, $1, $0
            lw $16, 0x00000000($1)

# cuestion 2.9

# la instruccion lw $s0, palabra($0) fue sustituida por 3 instrucciones.
# ahora el simulador hace las mismas tres ya que son instrucciones atomicas
# y no pseudoinstrucciones.
# con esta modificacion hicimos que el simulador haga lo mismo que escribimos.