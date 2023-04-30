.data

.text
    addi $s0, $zero, 10    # $s0 = 0 + 10 = 10
    addi $s1, $zero,  4    # $s1 = 0 +  4 =  4

    mul $t0, $s0, $s1      # $t0 = $s0 * $s1 = 10 * 4 = 40

    li $v0, 1              # print integer
    add $a0, $zero, $t0    # $a0 = $t0 = 40
    syscall