            .data 0x10000000
entero:     .word 0xff0f1235
# el numero 0xff0f1235 en binario es 11111111000011110001001000110101
            .text
main:
            lw   $t0, entero($0)
            andi $t0, $t0, 0xff0f1035
            ori  $t0, $t0, 0xff0f10bd
            sw   $t0, entero+4($0)