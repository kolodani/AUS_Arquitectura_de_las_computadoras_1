.data
    message:    .asciiz "The numbers are equal.\n"
    message2:   .asciiz "The numbers are different.\n"
.text
    main:
        addi $t0, $zero, 20
        addi $t1, $zero, 20

        beq $t0, $t1, numbersEquals
        # beq compara dos registros y si son iguales salta a la etiqueta

        # bne $t0, $t1, numbersDifferent
        # bne compara dos registros y si son diferentes salta a la etiqueta

    # syscall to the end program
    li $v0, 10
    syscall

    numbersEquals:
        li $v0, 4
        la $a0, message
        syscall

    # numbersDifferent:
    #    li $v0, 4
    #    la $a0, message2
    #    syscall
