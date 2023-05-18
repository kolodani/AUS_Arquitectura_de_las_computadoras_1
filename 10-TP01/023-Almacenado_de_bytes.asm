            .data
palabra:    .word 0x10203040
octeto:     .space 2
            .text       # zona de instrucciones
main:       lw $s0, palabra($0)
            sb $s0, octeto($0)

# cuestion 2.20

# la instruccion sb $s0, octeto($0) es reescrita por el simulador por 3 funciones:
# lui $1, 0x00001001
# addu $1, $1, $s0
# sb $16, 0x00000004($1)