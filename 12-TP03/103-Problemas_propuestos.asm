            .data
vector:     .word   0, 1, 0, 0, 1, 1, 1, 0, 0, 0
n:          .word   10
valor:      .word   1
contador:   .word   0

            .text
main:
            la      $a0, vector
            lw      $a1, n($0)
            lw      $a2, valor($0)
            lw      $a3, contador($0)
            jal     contar
            move    $a0, $v0
            li      $v0, 1
            syscall
            li      $v0, 10
            syscall
contar:
            beq     $a1, $0, fin
            lw      $t0, ($a0)
            bne     $t0, $a2, distintos
            addi    $a3, $a3, 1
distintos:
            addi    $a0, $a0, 4
            addi    $a1, $a1, -1
            j       contar
fin:
            move    $v0, $a3
            jr      $ra

