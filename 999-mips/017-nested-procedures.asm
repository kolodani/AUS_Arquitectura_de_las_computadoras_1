.data
    newLine: .asciiz "\n"
.text
    main:
        addi $s0, $zero, 10 # $s0 = 10

        jal increaseMyRegister # llamo a la funcion increaseMyRegister

        # imprimir el salto de linea
        li $v0, 4 # Imprimir string
        la $a0, newLine # $a0 = newLine
        syscall

        jal printTheValue # llamo a la funcion printTheValue

    # la salida para terminar el programa
    li $v0, 10
    syscall

    increaseMyRegister:
        addi $sp, $sp, -8 # reservo espacio en la pila
        sw $s0, 0($sp) # guardo el valor de $s0 en la pila
        sw $ra, 4($sp) # guardo el valor de $ra en la pila

        addi $s0, $s0, 30

        jal printTheValue # llamo a la funcion printTheValue

        lw $s0, 0($sp) # recupero el valor de $s0 que estaba en la pila
        lw $ra, 4($sp) # recupero el valor de $ra que estaba en la pila
        addi $sp, $sp, 4 # libero el espacio de la pila

        jr $ra # regreso a la funcion main

    printTheValue:
        # imprimir nuevo valor en la funcion
        li $v0, 1 # Imprimir entero
        move $a0, $s0 # $a0 = $s0
        syscall

        jr $ra # regreso a la funcion main