.data
    message: .asciiz "The number is less than the other.\n"
.text
    main:
        addi $t0, $zero, 100
        addi $t1, $zero, 200

        slt $s0, $t0, $t1
        # slt compara si el primer valor es menor que el segundo
        bne $s0, $zero, printMessage
        # bne salta a la etiqueta si el valor es distinto de cero

        li $v0, 10
        syscall

    printMessage:
        la $a0, message
        li $v0, 4
        syscall

        li $v0, 10
        syscall
