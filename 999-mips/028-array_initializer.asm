.data
    myArray:    .word 5:10
    newLine:    .asciiz "\n"
    format:     .asciiz ": "
.text
    main:
        # clear $t0 to 0
        addi $t0, $zero, 0

        # clear $t1 to 0
        addi $t1, $zero, 0

        while:
            beq $t0, 40, endWhile

            lw $t6, myArray($t0)

            addi $t0, $t0, 4

            #print the value of $t1
            li $v0, 1
            move $a0, $t1
            syscall

            # increment $t1 by 1
            addi $t1, $t1, 1

            #print the format
            li $v0, 4
            la $a0, format
            syscall

            #print the value of $t6
            li $v0, 1
            move $a0, $t6
            syscall

            #print new line
            li $v0, 4
            la $a0, newLine
            syscall

            j while

        endWhile:
            li $v0, 10
            syscall