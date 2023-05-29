            .data
dato1:      .word       30
dato2:      .word       -20
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

# cuestion 1.25

# en el valor res se guarda el valor 0 porque. la instruccion de comparacion slt
# guarda un cero ya que $t8 no es menor a $t9, luego la instruccion bne se
# ejecuta porque $t9 es distinto de $t0, esto saltea la linea que hace que $t1
# sea 1, por lo tanto $t1 es 0, luego se hace un or entre $t0 y $t1, al ser los
# des valores cero, el resultado es cero, por lo tanto se guarda un cero en res.