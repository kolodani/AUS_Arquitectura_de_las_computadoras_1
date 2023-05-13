.data
arreglo:    .word 10,20,30,40,50,60,70,80,90,100
valor:      .word 100

.text
main:
    la $t0, arreglo          # $t0 = &arreglo[0] o al puntero del arreglo
    lw $t1, 0($t0)           # $t1 = arreglo[0] o el valor del primer elemento del arreglo
    la $t2, valor            # $t2 = &valor
    lw $t2, 0($t2)           # $t2 = valor

    beq $t1, $t2, iguales    # si $t1 == $t2, salta a iguales
    addi $t3, $t2, 5         # esta suma solo se hace si $t1 != $t2
    j distintos              # salta a distintos

iguales:                     # si $t1 == $t2, se ejecuta esto
    add $t3, $t1, $t2        # $t3 = $t1 + $t2
    li $v0, 1                # operacion para imprimir un entero
    move $a0, $t3            # envio el valor de $t3 como argumento
    syscall

    li $v0, 10               # operacion para terminar el programa
    syscall

distintos:                   # si $t1 != $t2, se ejecuta esto
    li $v0, 1                # operacion para imprimir un entero
    move $a0, $t3            # envio el valor de $t3 como argumento
    syscall

    li $v0, 10               # operacion para terminar el programa
    syscall
