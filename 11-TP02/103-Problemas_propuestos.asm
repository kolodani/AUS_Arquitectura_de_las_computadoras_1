            .data
vectorV:    .word   1, -4, -5, 2
resultado:  .space  1

            .text
main:
            and    $t0, $0, $0
            addi   $t1, $0, 1
            lw     $t2, vectorV($t0)
bucle:
            bltz   $t2, negativo
            bgez   $t2, positivo
negativo:
            addi   $t3, $0, 1
            j      incremento
positivo:
            addi   $t3, $0, 0
            j      incremento
incremento:
            and    $t1, $t3, $t1
            addi   $t0, $t0, 4
            lw     $t2, vectorV($t0)
            beq    $t0, 16, fin
            j      bucle
fin:
            sw     $t1, resultado
            li     $v0, 10
            syscall
