            .data
division:   .space    4
dato1:      .word     10
dato2:      .word     2

            .text
main:
            addi   $sp, $sp, -4   # apilar dir. ret.
            sw     $ra, 0($sp)
            lw     $a0, dato1($0)
            lw     $a1, dato2($0)
            jal    comp
            sw     $v0, division($0)
            beq    $v0, $0, fin
            jal    div
            sw     $v0, division($0)
fin:
            lw     $ra, 0($sp)    # desapilar dir. ret.
            addi   $sp, $sp, 4
            li     $v0, 10
            syscall

comp:
            bltz   $a0, negativo
            bltz   $a1, negativo
            addi   $v0, $0, 1
            jr     $ra
negativo:
            addi   $v0, $0, 0
            jr     $ra

div:
            addi   $sp, $sp, -4   # apilar dir. ret.
            sw     $ra, 0($sp)
            lw     $a0, dato1($0)
            lw     $a1, dato2($0)
            div    $a0, $a1
            mflo   $v0
            jr     $ra

# cuestion 2.13