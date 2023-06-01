            .text
main:
        li    $t0, 10
        li    $t1, 13       # inicializar rer. $t0, $t1
        addi  $sp, $sp, -8  # espacio para dos elementos
        sw    $t0, 4($sp)   # apilar $t0
        sw    $t1, 0($sp)   # apilar $t1
        addi  $t0, $0, 0    # $t0 = 0
        addi  $t1, $0, 0    # $t1 = 0
        lw    $t1, 0($sp)   # desapilar $t1
        addi  $sp, $sp, 4   # liberar espacio
        lw    $t0, 0($sp)   # desapilar $t0
        addi  $sp, $sp, 4   # liberar espacio

# cuestion 2.3