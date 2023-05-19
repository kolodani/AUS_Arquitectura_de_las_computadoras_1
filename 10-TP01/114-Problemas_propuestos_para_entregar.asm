            .data 0x10000000
entero:     .word 0xabcd12bd
# el numero 0xabcd12bd en binario es 10101011110011010001001010111101
            .text
main:
            lw $t0, entero($0)
            andi $t0, $t0, 0xabcd1035
            sw $t0, entero+4($0)