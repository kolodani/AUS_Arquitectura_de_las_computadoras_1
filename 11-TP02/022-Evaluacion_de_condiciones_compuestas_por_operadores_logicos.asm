            .data
dato1:      .word       -20
dato2:      .word       10
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

# cuestion 1.26

# en la posicion res se guarda 1 porque, cuando se realiza la instruccion slt,
# el valor de $t8 es menor a $t9, por lo que se guarda un 1 en $t0, luego se
# realiza la instruccion bne, que se cumple porque $t9 es distinto de $t0, esto
# va hacia la etiqueta fineval, que hace el or entre los valores de $t0 y $t1,
# que son 1 y 0 respectivamente, por lo que se guarda un 1 en $t0, y luego se
# guarda 1 en la posicion res.