            .data
dato1:      .word       80
dato2:      .word       60
res:        .space      1

            .text
main:
        lw   $t0, dato1($0)    # cargar dato1 en t0
        lw   $t1, dato2($0)    # cargar dato2 en t1
        sge  $t2, $t0, $t1     # pone 1 $t2 si $t0 >= $t1
        sb   $t2, res($0)      # almacenar $2 en res

# cuestion 1.5

# la instruccion sge es la que se utiliza para comparar dos registros y almacena
# 1 si el primero es mayor o igual que el segundo y 0 en caso contrario.