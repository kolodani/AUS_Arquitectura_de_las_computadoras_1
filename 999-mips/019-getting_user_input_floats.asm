.data
    message:    .asciiz "Enter the value of PI: "
    zeroFloat:  .float 0.0
.text
    lwc1 $f4, zeroFloat    # cargo el cero en el registro $f4

    # print message
    li $v0, 4              # imprimo el mensaje
    la $a0, message
    syscall

    # read user input
    li $v0, 6              # leo el valor de PI
    syscall

    # display value
    li $v0, 2              # imprimo el valor de PI
    add.s $f12, $f0, $f4   # sumo el cero con el valor de PI
    # add.s es para sumar floats
    syscall