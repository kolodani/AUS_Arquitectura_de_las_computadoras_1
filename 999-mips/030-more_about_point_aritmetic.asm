.data
    number1:    .float 2.0
    number2:    .float 3.0
    number3:    .double 4.0
    number4:    .double 5.0
    newline:    .asciiz "\n"
.text
    main:
        lwc1 $f0, number1
        lwc1 $f2, number2

        mul.s $f12, $f0, $f2

        li $v0, 2
        syscall

        la $a0, newline
        li $v0, 4
        syscall

        ldc1 $f4, number3
        ldc1 $f6, number4

        mul.d $f12, $f4, $f6

        li $v0, 3
        syscall
