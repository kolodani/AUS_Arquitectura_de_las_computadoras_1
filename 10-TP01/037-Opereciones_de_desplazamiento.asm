            .data
numero:     .word 0xffffff41
            .text
main:
            lw  $t0, numero($0)
            sll $t1, $t0, 2

# cuestion 3.12

# para correr el programa 2 bits a la izquierda la instruccion es
# sll $t1, $t0, 2. hacer un un sll de 2 bits a la izquierda es lo mismo que
# multiplicar por 4.