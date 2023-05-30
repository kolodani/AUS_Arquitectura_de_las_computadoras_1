            .data
vectorV:    .word   2, -4, -6
vectorB:    .space  12

            .text
main:
        and   $t0, $0, $0
        lw    $t1, vectorV($t0)
bucle:
        bgez  $t1, positivo
        bltz  $t1, negativo
positivo:
        addi  $t2, $0, 1
        sw    $t2, vectorB($t0)
        j     incremento
negativo:
        addi  $t2, $0, 0
        sw    $t2, vectorB($t0)
        j     incremento
incremento:
        addi  $t0, $t0, 4
        lw    $t1, vectorV($t0)
        beq   $t0, 12, fin
        j     bucle
fin:
        li    $v0, 10
        syscall

