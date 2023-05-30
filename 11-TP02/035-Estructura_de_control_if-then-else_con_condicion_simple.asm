        .data
dato1:  .word   30
dato2:  .word   40
res:    .word   0

        .text
main:
        lw   $t0, dato1($0)
        lw   $t1, dato2($0)
si:
        blt  $t0, $t1, sino
entonces:
        sub  $t2, $t0, $t1
        sw   $t2, res($0)
        j    finsi
sino:
        sub  $t2, $t1, $t0
        sw   $t2, res($0)
finsi:

# cuestion 2.15
