            .data
vector:     .word   0, 1, 0, 0, 1, 1, 1, 0, 0, 0
n:          .word   10
valor:      .word   1
contador:   .word   0

            .text
main:
            addi    $sp, $sp, -16
            la      $a0, vector
            sw      $a0, 0($sp)
            lw      $a1, n
            sw      $a1, 4($sp)
            lw      $a2, valor
            sw      $a2, 8($sp)
            lw      $a3, contador
            sw      $a3, 12($sp)
            jal     contar
            move    $a0, $v0
            li      $v0, 1
            syscall
            addi    $sp, $sp, 16
            li      $v0, 10
            syscall
contar:
            lw      $a0, 0($sp)
            lw      $a1, 4($sp)
            lw      $a2, 8($sp)
            lw      $a3, 12($sp)
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

# entreda c