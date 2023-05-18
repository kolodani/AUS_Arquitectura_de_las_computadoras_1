            .data 0x10010000
vector:     .word 10,20,25,500,3
espacio:    .space 20
.text
main:
            add $t0, $zero, $zero
            lw $s0, vector($t0)
            sw $s0, espacio($t0)

            addi $t0, $t0, 4
            lw $s0, vector($t0)
            sw $s0, espacio($t0)

            addi $t0, $t0, 4
            lw $s0, vector($t0)
            sw $s0, espacio($t0)

            addi $t0, $t0, 4
            lw $s0, vector($t0)
            sw $s0, espacio($t0)

            addi $t0, $t0, 4
            lw $s0, vector($t0)
            sw $s0, espacio($t0)
