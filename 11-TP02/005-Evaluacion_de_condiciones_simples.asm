            .data
dato1:      .word       30
dato2:      .word       40
res:        .space      1

            .text
main:
        lw   $t0, dato1($0)      # cargar dato1 en t0
        lw   $t1, dato2($0)      # cargar dato2 en t1
        slt  $t2, $t0, $t1       # pone 1 $t2 si $t0 < $t1
        bne  $t0, $t1, fineval   # si $t0 != $t1 salta a fineval
        ori  $t2, $0, 1          # poner a 1 $t2 si $t0 == $t1
fineval:
        sb   $t2, res($0)        # almacenar $t2 en res

# cuestion 1.6

# el valor que se almacena en res es 1 ya que slt pone 1 en $t2 si $t0 < $t1,
# como esto es asi, y luego el programa salta a fineval porque $t0 != $t1, y
# por ultimo se ejecuta la instruccion sb $t2, res($0) que almacena el valor
# de $t2 en res, por lo tanto el valor que se almacena en res es 1.