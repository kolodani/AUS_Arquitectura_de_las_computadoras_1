            .data
vector:     .word   10, 20, 30, 40, 50, 60, 70, 80, 90, 100
n:          .word   10
posicion:   .word   6

            .text
main:
            la     $a0, vector
            lw     $a1, n
            lw     $a2, posicion
            jal    buscar
            move   $a0, $v0
            li     $v0, 1
            syscall
            li     $v0, 10
            syscall

buscar:
            beq    $a2, $0, fin
            lw     $t0, 0($a0)
            addi   $a0, $a0, 4
            addi   $a2, $a2, -1
            j      buscar

fin:
            move   $v0, $t0
            jr     $ra
