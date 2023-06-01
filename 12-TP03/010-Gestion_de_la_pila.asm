            .text
main:
        li    $t0, 10
        li    $t1, 13       # inicializar rer. $t0, $t1
        addi  $sp, $sp, -4  # actualizar el sp
        sw    $t0, 0($sp)   # apilar $t0
        addi  $sp, $sp, -4  # actualizar el sp
        sw    $t1, 0($sp)   # apilar $t1

# cuestion 2.1

# al ejecutar el programa paso a paso se ve que el valor del registro $t0 que se
# guarda primero en la pila, se guarda en el valor de memoria 0x7fffeff8 y el
# segundo valor del registro $t1 se guarda en la memoria 0x7fffeff4.