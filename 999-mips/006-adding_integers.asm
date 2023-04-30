.data
    number1: .word 5
    number2: .word 10

.text
    lw $t0, number1    # $t0 = number1
    lw $t1, number2    # $t1 = number2

    add $t2, $t0, $t1    # $t2 = $t0 + $t1

    li $v0, 1       # print_int
    add $a0, $t2, $zero  # $a0 = $t2 + 0 => $a0 = $t2
    syscall