        .data 0x10000000
V:      .word 10, 20
        .text
        lw     $s0, V($0)
        lw     $s1, V+4($0)
        add    $t0, $s0, $s1
        sw     $t0, V+8($0)