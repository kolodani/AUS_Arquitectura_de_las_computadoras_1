            .text
main:
        li    $t0, 10
        li    $t1, 13       # inicializar rer. $t0, $t1
        addi  $sp, $sp, -8  # espacio para dos elementos
        sw    $t0, 4($sp)   # apilar $t0
        sw    $t1, 0($sp)   # apilar $t1

# cuestion 2.2