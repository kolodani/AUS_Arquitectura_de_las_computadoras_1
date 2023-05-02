.data
    prompt: .asciiz "Enter your age: "
    message: .asciiz "You age is: "

.text
    # prompt the user to enter their age
    li, $v0, 4    # syscall to print string
    la, $a0, prompt    # load the address of the prompt
    syscall

    # get the user age
    li, $v0, 5    # syscall to read integer
    syscall

    # store the user age in $t0
    move $t0, $v0

    # print the message
    li, $v0, 4    # syscall to print string
    la, $a0, message    # load the address of the message
    syscall

    # print the user age
    li $v0, 1    # syscall to print integer
    move $a0, $t0    # load the user age
    syscall