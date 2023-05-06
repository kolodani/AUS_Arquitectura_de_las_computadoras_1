.data
    message1:   .asciiz  "It was TRUE.\n"
    message2:   .asciiz  "It was FALSE.\n"
    number1:    .float   3.14159
    number2:    .float   3.14159
.text
    main:
        lwc1    $f0, number1
        lwc1    $f2, number2

        # c.eq.s compara los dos registros de coma flotante
        c.eq.s  $f0, $f2

        # bc1t salta a la etiqueta si la comparacion es verdadera
        bc1t    exit

        li      $v0, 4
        la      $a0, message2
        syscall

    # end of program
        li     $v0, 10
        syscall

    exit:
        li     $v0, 4
        la     $a0, message1
        syscall
