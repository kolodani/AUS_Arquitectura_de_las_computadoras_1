.data
    promt: .asciiz "Enter the value of e: "
    zeroDouble: .double 0.0
.text
    # Set the zero
    lwc1 $f4, zeroDouble

    # Display message to the user
    li $v0, 4
    la $a0, promt
    syscall

    # Get the double from the user
    li $v0, 7
    syscall

    # Display the user's input
    li $v0, 3
    add.d $f12, $f0, $f4
    # add.d es para sumar doubles
    syscall
