.data
    message: .asciiz "Hi, everybody!\nMy Name is Daniel.\n"

.text
    main:
        jal displayMessage    # invocacion de la funcion, lo que hace es salta a la etiqueta displayMessage

        addi $s0, $zero, 5

        # imprime el valor 5 en pantalla
        li $v0,1
        add $a0, $zero, $s0
        syscall

        # decirle al programa que el proceso se termino
        li $v0, 10
        syscall

    displayMessage:    # funcion o procedimiento
        li $v0, 4
        la $a0, message
        syscall

        jr $ra    # salto de nuevo vuelta a la funcion main donde me habia quedado