# sumar todos los valores de un vector
.data
etiqueta:     .word 1,2,3,4,5,6,7,8,9,10
alm:          .space 4

.text
.globl main
main:
    la $t0, alm             # cargo la direccion de memoria del vector
    and $t1, $t1, $zero     # inicializo el acumulador
    li $t2, 10              # cargo el valor 10 que es la cantidad de elementos del vector
    la $t3, etiqueta        # cargo la direccion de memoria del vector

while:
    lw $t4, 0($t3)          # cargo el valor del vector en $t4
    add $t1, $t1, $t4       # sumo el valor del vector al acumulador
    addi $t3, $t3, 4        # incremento la direccion de memoria del vector
    addi $t2, $t2, -1       # decremento el contador
    bne $t2, $zero, while   # si el contador es distinto de cero, salto a while

endWhile:
    sw $t1, 0($t0)          # guardo el valor del acumulador en la direccion de memoria del vector
    li $v0, 1               # imprimo el valor del acumulador
    move $a0, $t1           # cargo el valor del acumulador en $a0
    syscall

    li $v0, 10              # termino el programa
    syscall