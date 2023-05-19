            .data 0x10000000
entero:     .word 0x1237
            .text
main:
            lw   $t0, entero($0)
            sll  $t0, $t0, 5
            sw   $t0, entero+4($0)