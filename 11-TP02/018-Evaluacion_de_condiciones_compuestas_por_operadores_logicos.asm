            .data
dato1:      .word       0
dato2:      .word       -20
res:        .space      1
            .text
main:
        lw   $t8, dato1($0)
        lw   $t9, dato2($0)
        and  $t1, $t1, $0
        and  $t0, $t0, $0
        beq  $t8, $t0, igual
        ori  $t0, $0, 1

igual:
        slt  $t1, $t9, $t8
fineval:
        and  $t0, $t0, $t1
        sb   $t0, res($0)

# cuestion 1.21

# en res se almacena el valor de 0 porque. en la comparacion de la instruccion
# beq, $t8 y $t0 son iguales, por lo tanto se dirige a la etiqueta igual y salta
# la linea que convierte a $t0 en 1. luego la comparacion de si $t9 es menor que
# $t8 es falsa, por lo tanto $t1 es 0. luego se hace un and entre $t0 y $t1,
# siendo los dos valores cero, el resultado es cero. por ultimo se almacena el
# valor de cero en res.

# cuestion 1.22

# las comparaciones compuestas que se han evaluado son las siguientes:
# los 3 and y el ori que se realizaron
# and  $t1, $t1, $0
# and  $t0, $t0, $0
# and  $t0, $t0, $t1
# ori  $t0, $0, 1
