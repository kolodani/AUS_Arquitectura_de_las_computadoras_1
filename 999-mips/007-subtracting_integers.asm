.data
    number1: .word 20
    number2: .word  8

.text
    lw $s0, number1    # $s0 = number1, $s0 = 20
    lw $s1, number2    # $s1 = number2, $s1 =  8

    sub $t0, $s0, $s1  # $t0 = $s0 - $s1, $t0 = 12

    li, $v0, 1         # $v0 = 1
    move $a0, $t0      # $a0 = $t0
    syscall