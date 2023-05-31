            .data
dato1:      .word     2
dato2:      .word     10
dato3:      .word     50
dato4:      .word     70
dato5:      .word     34
res:        .space    4

            .text
main:
        lw    $t1, dato1($0)
        lw    $t2, dato2($0)
        lw    $t3, dato3($0)
        lw    $t4, dato4($0)
        lw    $t5, dato5($0)
si:
        ble   $t5, $t1, afuera
        bge   $t5, $t2, afuera
entonces:
        addi  $t0, $0, 1
        sw    $t0, res($0)
        j     fin
afuera:
        ble   $t5, $t3, afuera2
        bge   $t5, $t4, afuera2
        j     entonces
afuera2:
        addi  $t0, $0, 0
        sw    $t0, res($0)
fin:
        li    $v0, 10
        syscall
