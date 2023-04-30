.data

.text
    addi $s0, $zero, 4    # $s0 = 4

    sll $t0, $s0, 2    # $t0 = $s0 * 4 o potencia de 2

    li $v0, 1      # print int
    add $a0, $zero, $t0    # $a0 = $t0
    syscall