            .data
rango1:     .word    10
rango2:     .word    50
dato:       .word    12
res:        .space   1

            .text
main:
            addi   $sp, $sp, -4
            sw     $ra, 0($sp)        # apilar ra
            # paso por referencia de rango1, rango2 y dato
            la     $a0, rango1
            la     $a1, rango2
            la     $a2, dato
            jal    subr               # saltar a subr
            # guardo el resultado en res por referencia
            sb     $v0, res
            lw     $ra, 0($sp)
            add    $sp, $sp, 4        # desapilar ra
            jr     $ra                # terminar ejecucion programada

subr:
            lw     $a0, 0($a0)        # a0 = *a0
            lw     $a1, 0($a1)        # a1 = *a1
            lw     $a2, 0($a2)        # a2 = *a2
            blt    $a2, $a0, sino     # si a2<a0 saltar a sino
            bgt    $a2, $a1, sino     # si a2>a1 saltar a sino
entonces:
            addi   $v0, $0, 1         # v0 = 1
            j      finsi              # saltar a finsi
sino:
            add    $v0, $0, $0        # v0 = 0
finsi:
            jr     $ra                # retornar

# cuestion 2.15

# cambio del codigo para que se pasen los valores por referencia y no por valor