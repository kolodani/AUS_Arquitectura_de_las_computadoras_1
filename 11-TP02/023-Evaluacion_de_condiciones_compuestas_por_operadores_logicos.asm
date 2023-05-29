            .data
dato1:      .word       10
dato2:      .word       0
res:        .space      1
            .text
main:
        lw   $t8, dato1($0)
        lw   $t9, dato2($0)
        and  $t0, $t0, $0
        and  $t1, $t1, $0
        slt  $t0, $t8, $t9
        bne  $t9, $t0, fineval
        ori  $t1, $t0, 1
fineval:
        or   $t0, $t0, $t1
        sb   $t0, res($0)

# cuestion 1.27

# en la posicion de res se carga el valor de 1 porque, la instruccion de slt
# compara si $t8 es menor que $t9, esto es falso por lo que se almacena 0 en
# $t0, luego se realiza la instruccion bne donde se compara si $t9 es distinto
# de $t0, al ser iguales, no va a la etiqueta y realiza la instruccion ori que
# carga 1 en $t1, luego se realiza la instruccion or que carga en $t0 el valor
# de $t0 y $t1, por lo que $t0 queda con el valor de 1, luego se almacena en
# res el valor de $t0, que es 1.