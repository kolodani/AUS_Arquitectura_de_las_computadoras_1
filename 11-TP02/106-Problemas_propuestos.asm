            .data
vector:     .word   10, 90, 70, 60, 40, 50, 30, 20, 80, 100
cantidad:   .word   10
rango1:     .word   35
rango2:     .word   85
res:        .space  4

            .text
main:
        addi    $t0, $0, 0
        lw      $t1, vector($t0)
        lw      $t2, cantidad
        lw      $t3, rango1
        lw      $t4, rango2
        addi    $t5, $0, 0
for:
        beq     $t2, $0, fin
        ble     $t1, $t3, else
        bge     $t1, $t4, else
        addi    $t5, $t5, 1
else:
        addi    $t0, $t0, 4
        sub     $t2, $t2, 1
        lw      $t1, vector($t0)
        j       for
fin:
        sw     $t5, res
        li     $v0, 10
        syscall
