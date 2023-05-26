            .data
dato1:      .word       50
dato2:      .word       20
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

# cuestion 1.7

# el valor que se guarda en res es 0 ya que en la isntruccion slt el segundo
# operando es mayor que el primero, por lo tanto el resultado es 0. luego el
# programa salta a fineval ya que $t0 != $t1. finalmente se almacena 0 en res
# con la instruccion sb.