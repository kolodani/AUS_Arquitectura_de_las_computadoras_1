.data

.text
    addi $t0, $zero, 30    # $t0 = 30
    addi $t1, $zero,  8    # $t1 = 6

    div $t0, $t1           # lo = $t0 / $t1

    mflo $s0               # $s0 = lo, en lo se guarda el cociente
    mfhi $s1               # $s1 = hi, en hi se guarda el residuo

    li $v0, 1              # print_int
    add $a0, $zero, $s1    # $a0 = $s0
    syscall
