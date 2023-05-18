            .data 0x10010000
espacio1:   .space 2
valores:    .byte 0x10, 0x20, 0x30, 0x40
espacio2:   .space 4
palabra:    .word
            .text
main:
            lb $s0, valores($0)
            sb $s0, palabra($0)
            lb $s0, valores+1($0)
            sb $s0, palabra+1($0)
            lb $s0, valores+2($0)
            sb $s0, palabra+2($0)
            lb $s0, valores+3($0)
            sb $s0, palabra+3($0)