            .data
dato1:      .word       20
dato2:      .word       30
res:        .space      1
            .text
main:
        lw   $t8, dato1($0)
        lw   $t9, dato2($0)
        and  $t0, $t0, $0
        and  $t1, $t1, $0
        slt  $t0, $t8, $t9
        bgtz $t8, fineval
        ori  $t1, $t0, 1
fineval:
        or   $t0, $t0, $t1
        sb   $t0, res($0)

# cuestion 1.30