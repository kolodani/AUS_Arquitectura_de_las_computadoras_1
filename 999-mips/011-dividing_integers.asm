.data

.text
    addi $t0, $zero, 30    # $t0 = 30
    addi $t1, $zero,  5    # $t1 =  5

    div $s0, $t0, $t1      # $s0 = $t0 / $t1

    li $v0, 1              # print_int
    add $a0, $zero, $s0    # $a0 = $s0
    syscall