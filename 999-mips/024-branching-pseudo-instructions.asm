.data
    message: .asciiz "Se muestra el mensaje"
.text
    main:
        addi $s0, $zero, 100
        addi $s1, $zero, 20

        # bgt $s0, $s1, muestraCartel
        # bgt compara si el primer valor es mayor que el segundo
        # bgtz compara si el valor es mayor que cero
        bgtz $s0, muestraCartel

        li $v0, 10
        syscall

    muestraCartel:
        la $a0, message
        li $v0, 4
        syscall