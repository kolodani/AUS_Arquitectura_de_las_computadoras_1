.data
    promptMessage:    .asciiz "Enter a number to find its factorial: "
    resultMessage:    .asciiz "\nThe factorial of the number is "
    theNumber:        .word 0
    theAnswer:        .word 0

.text
.globl main
main:
# se envia un cartel y se le pide al usuario que ingrese un numero entero
    # Read the number from the user
    li $v0, 4
    la $a0, promptMessage
    syscall

# se lee el numero ingresado por el usuario
    li $v0, 5
    syscall

# se guarda el numero ingresado en la variable theNumber
    sw $v0, theNumber

# se llama a la funcion factorial que es recursiva
    # Call the factorial function
    lw   $a0, theNumber
    jal  findFactorial           #   volver aqui                                  
    sw $v0, theAnswer

# se muestra el resultado
    # display the result
    li $v0, 4
    la $a0, resultMessage
    syscall

    li $v0, 1
    lw $a0, theAnswer
    syscall

    # Exit the program
    li $v0, 10
    syscall

# ----------------------------------------------
# findFactorial function
.globl findFactorial
findFactorial:
# se guarda el valor de $ra y $s0 en la pila
    # subu le resta 8 bytes a $sp, reserva dos lugares para enteros en la pila
    subu $sp, $sp, 8
    sw   $ra, ($sp)
    sw   $s0, 4($sp)

# se verifica si el numero ingresado es 0, si es 0 se retorna 1 para terminar la recursion
    # base case
    li $v0, 1
    beq $a0, 0, factorialDone

# se llama a la funcion recursivamente guardando el valor de $a0 en $s0 y luego restandole 1
    # recursive case
    move $s0, $a0
    sub  $a0, $a0, 1
    jal  findFactorial

    mul $v0, $v0, $s0

factorialDone:
    lw   $ra, ($sp)
    lw   $s0, 4($sp)
    addu $sp, $sp, 8
    jr   $ra
