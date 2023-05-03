.data
    message: .asciiz "After while loop is done"
    space:   .asciiz ", "
.text
    main:
        # esto es igual a i = 0
        addi $t0, $zero, 0

        While:
            bgt $t0, 10, EndWhile
            # esto es igual a if(i > 10) break;
            jal printNumber
            # esto es igual a printNumber(i)
            addi $t0, $t0, 1
            # esto es igual a i++
            j While
            # esto es igual a goto While

        EndWhile:
            # al final del while imprime el mensaje
            li $v0, 4
            la $a0, message
            syscall

        # fin del programa
        li $v0, 10
        syscall

    printNumber:
        # printNumber(i)
        li $v0, 1
        add $a0, $t0, $zero
        syscall

        # printNumber(", ")
        li $v0, 4
        la $a0, space
        syscall

        # jr es a volver a la instruccion que sigue de jal
        jr $ra
