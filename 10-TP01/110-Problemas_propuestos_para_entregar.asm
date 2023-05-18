            .data 0x10010000
palabra:    .word 0x10203040
            .text
main:
            lh $s0, palabra($0)
            lh $s1, palabra+2($0)
            sh $s0, palabra+2($0)
            sh $s1, palabra($0)