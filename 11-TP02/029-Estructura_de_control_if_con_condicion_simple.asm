            .data
dato1:      .word    40
dato2:      .word    30
res:        .space   4
            .text
main:
        lw    $t0, dato1($0)
        lw    $t1, dato2($0)
si:
        blez  $t1, end
        div   $t0, $t1
        mflo  $t2
end:
        add   $t2, $t2, $t1
        add   $t2, $t2, $t0
        sw    $t2, res($0)
        li    $v0, 10
        syscall

# cuestion 2.5