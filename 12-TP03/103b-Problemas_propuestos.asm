            .data
vector:     .word   0, 1, 0, 0, 1, 1, 1, 0, 0, 0
n:          .word   10
valor:      .word   1
contador:   .word   0

            .text
main:
            la      $a0, vector
            la      $a1, n
            la      $a2, valor
            la      $a3, contador
            jal     contar
            move    $a0, $v0
            li      $v0, 1
            syscall
            li      $v0, 10
            syscall
contar:
            lw      $a1, 0($a1)
            lw      $a2, 0($a2)
            lw      $a3, 0($a3)
bucle:
            beq     $a1, $0, fin
            lw      $t0, ($a0)
            bne     $t0, $a2, distintos
            addi    $a3, $a3, 1
distintos:
            addi    $a0, $a0, 4
            addi    $a1, $a1, -1
            j       bucle
fin:
            move    $v0, $a3
            jr      $ra

# entreda b