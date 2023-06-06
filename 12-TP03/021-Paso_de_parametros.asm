            .data
rango1:     .word    10
rango2:     .word    50
dato:       .word    12
res:        .space   4

            .text
main:
            addi   $sp, $sp, -20
            sw     $ra, 0($sp)        # apilar ra
            lw     $a0, res($0)       # a0 = &res
            sw     $a0, 4($sp)        # apilar a0
            lw     $a0, dato($0)      # a0 = &dato
            sw     $a0, 8($sp)        # apilar a0
            lw     $a0, rango2($0)    # a0 = &rango2
            sw     $a0, 12($sp)       # apilar a0
            lw     $a0, rango1($0)    # a0 = &rango1
            sw     $a0, 16($sp)       # apilar a0
            jal    subr               # saltar a subr
            # guardo el resultado en res por referencia
            sw     $v0, 4($sp)        # res = v0
            lw     $ra, 0($sp)        # desapilar ra
            addi   $sp, $sp, 20
            jr     $ra                # terminar ejecucion programada

subr:
            lw     $a0, 16($sp)       # a0 = &rango1
            lw     $a1, 12($sp)       # a1 = &rango2
            lw     $a2, 8($sp)        # a2 = &dato
            blt    $a2, $a0, sino     # si a2<a0 saltar a sino
            bgt    $a2, $a1, sino     # si a2>a1 saltar a sino
entonces:
            addi   $v0, $0, 1         # v0 = 1
            j      finsi              # saltar a finsi
sino:
            add    $v0, $0, $0        # v0 = 0
finsi:
            jr     $ra                # retornar

# cuestion 2.16