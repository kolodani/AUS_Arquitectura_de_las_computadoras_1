            .data
dato1:      .word       20
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

# cuestion 1.28

# en res se almacena el valor de 0 porque, la instruccion slt compara si $t8 es
# menor a $t9, al no serlo, se almacena 0 en $t0, luego se compara si $t9 es
# distinto de $t0, como lo es se va a la etiqueta fineval, alli se realiza el
# or entre $t0 y $t1 que los dos valen 0, por lo tanto el resultado es 0, luego
# se almacena en res el valor 0.