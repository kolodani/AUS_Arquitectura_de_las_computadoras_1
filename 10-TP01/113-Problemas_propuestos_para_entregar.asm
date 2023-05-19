            .data 0x10000000
numero1:    .word 18
numero2:    .word -1215
            .data 0x10010000
resultado:  .space 8
        .text
        lw     $s0, numero1($0)
        div    $s0, $s0, 5
        sw     $s0, resultado($0)

        lw     $s0, numero2($0)
        div    $s0, $s0, 5
        sw     $s0, resultado+4($0)
