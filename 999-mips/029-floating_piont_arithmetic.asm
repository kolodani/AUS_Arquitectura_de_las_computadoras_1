.data
    number1:    .float 3.14
    number2:    .float 2.71
    number3:    .double 3.14
    number4:    .double 2.71
    newline:    .asciiz "\n"
.text
    main:
        # lwc1 es para cargar un float a un registro
        lwc1 $f2, number1
        lwc1 $f4, number2

        # add.s es para sumar dos floats
        add.s $f12, $f2, $f4

        li $v0, 2
        syscall

        # print newline
        li $v0, 4
        la $a0, newline
        syscall

        # ldc1 es para cargar un double a un registro
        ldc1 $f8, number3
        ldc1 $f10, number4

        # add.d es para sumar dos doubles
        add.d $f12, $f8, $f10

        li $v0, 3
        syscall
