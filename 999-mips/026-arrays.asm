.data
    myArrays:    .space 12
.text
    main:
        addi $s0, $zero, 1000
        addi $s1, $zero, 2000
        addi $s2, $zero, 3000

        # index = $t0
        addi $t0, $zero, 0

        sw $s0, myArrays($t0)
        addi $t0, $t0, 4
        sw $s1, myArrays($t0)
        addi $t0, $t0, 4
        sw $s2, myArrays($t0)
        addi $t0, $t0, 4

        lw $t6, myArrays($zero)

        li $v0, 1
        addi $a0, $t6, 0
        syscall

        li $v0, 10
        syscall
