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

        # Imprimir el valor
        li $v0, 1 # Imprimir entero
        move $a0, $s0 # $a0 = $s0
        syscall

    # la salida para terminar el programa
    li $v0, 10
    syscall

    increaseMyRegister:
        addi $sp, $sp, -4 # reservo espacio en la pila para guardar el valor en 4 bytes
        sw $s0, 0($sp) # guardo el valor de $s0 en la pila

        addi $s0, $s0, 30

        # imprimir nuevo valor en la funcion
        li $v0, 1 # Imprimir entero
        move $a0, $s0 # $a0 = $s0
        syscall

        lw $s0, 0($sp) # recupero el valor de $s0 que estaba en la pila
        addi $sp, $sp, 4 # libero el espacio de la pila

        jr $ra # regreso a la funcion main