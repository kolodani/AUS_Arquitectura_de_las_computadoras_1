            .data 0x10010000
palabra:    .word 0x10203040
espacio:    .space 4
            .text
main:
            lb $s0, palabra($0)
            sb $s0, espacio+3($0)
            lb $s0, palabra+1($0)
            sb $s0, espacio+2($0)
            lb $s0, palabra+2($0)
            sb $s0, espacio+1($0)
            lb $s0, palabra+3($0)
            sb $s0, espacio($0)