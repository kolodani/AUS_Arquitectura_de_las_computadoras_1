        .data
dato1:  .word    40
dato2:  .word    30
dato3:  .word    -1
res:    .space    4

        .text
main:
        lw     $t1, dato1($0)
        lw     $t2, dato2($0)
        lw     $t3, dato3($0)
si:
        blt    $t3, $t1, sino
        bgt    $t3, $t2, sino
entonces:
        addi   $t0, $0, 1
        sw     $t0, res($0)
        j      finsi
sino:
        addi   $t0, $0, 0
        sw     $t0, res($0)
finsi:
        li     $v0, 10
        syscall

# cuestion 2.18
