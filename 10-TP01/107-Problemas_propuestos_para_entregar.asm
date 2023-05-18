            .data 0x10000000
vector:     .word 10,20,25,500,3
            .text
main:
            add $t0, $zero, $zero
            lw $s0, vector($t0)
            addi $t0, $t0, 4
            lw $s1, vector($t0)
            addi $t0, $t0, 4
            lw $s2, vector($t0)
            addi $t0, $t0, 4
            lw $s3, vector($t0)
            addi $t0, $t0, 4
            lw $s4, vector($t0)
