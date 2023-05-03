.data
    introMessage: .asciiz "Enter your name: "
    message:      .asciiz "Hello, "
    userInput:    .space 20
.text
    main:
        # displaying intro message
        li $v0, 4
        la $a0, introMessage
        syscall

        # getting user input
        li $v0, 8
        la $a0, userInput
        li $a1, 20
        syscall

        # displaying hello
        li $v0, 4
        la $a0, message
        syscall

        # displaying user input
        li $v0, 4
        la $a0, userInput
        syscall

    # the end of main
    li $v0, 10
    syscall