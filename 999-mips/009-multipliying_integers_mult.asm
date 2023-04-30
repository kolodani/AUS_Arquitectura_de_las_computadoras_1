.data

.text
    addi $t0, $zero, 2000
    addi $t1, $zero,   10

    mult $t0, $t1    # $t0 * $t1

    mflo $s0        # $s0 = $t0 * $t1

    li $v0, 1    # print integer
    add $a0, $s0, $zero    # $a0 = $s0
    syscall