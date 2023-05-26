            .data
dato1:      .word       60
dato2:      .word       60
res:        .space      1

            .text
main:
        lw   $t0, dato1($0)    # cargar dato1 en t0
        lw   $t1, dato2($0)    # cargar dato2 en t1
        seq  $t2, $t0, $t1     # pone 1 $t2 si t0 = t1
        sb   $t2, res($0)      # almacenar $t2 en res

# cuestion 1.4

# el codigo se modifico de la instruccion slt de antes por la instruccion seq