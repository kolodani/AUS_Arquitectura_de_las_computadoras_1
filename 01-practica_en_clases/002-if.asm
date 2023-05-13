.data
arreglo:    .word 10,20,30,40,50,60,70,80,90,100
valor:      .word 10

.text
main:
    la $t0, arreglo        # cargo el arreglo en $t0, es decir, $t0 = &arreglo[0]
    lw $t1, 0($t0)         # cargo el primer elemento del arreglo en $t1, es decir, $t1 = arreglo[0]
    la $t2, valor          # cargo el valor en $t2, es decir, $t2 = &valor
    lw $t2, 0($t2)         # cargo el valor en $t2, es decir, $t2 = valor

    beq $t1, $t2, end      # ahora uso un if para ver si son iguales, si lo son salto a end
    li $v0, 10             # si no son iguales, salgo del programa
    syscall

end:                       # si son iguales, el codigo continua aca
    li $v0, 1              # imprimo el valor de $t1 con la funcion print_int
    move $a0, $t1          # paso por le parametro $a0 el valor de $t1
    syscall

    li $v0, 10             # salgo del programa
    syscall
