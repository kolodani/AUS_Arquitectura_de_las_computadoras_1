            .data
dato1:      .word       50
dato2:      .word       20
res:        .space      1

            .text
main:
        lw   $t0, dato1($0)    # cargar dato1 en t0
        lw   $t1, dato2($0)    # cargar dato2 en t1
        slt  $t2, $t0, $t1     # poner a 1 $t2 si t0 < t1
        sb   $t2, res($0)      # almacenar $t2 en res

# cuestion 1.2

# el valor que se almacena en res es cero porque el valor de t0 es mayor que
# el de t1 y lo que pide la instruccion slt es que se almacene un 1 si el
# primer operando es menor que el segundo y un 0 en caso contrario

# cuestion 1.3

# la comparacion que se realiza es entre los valores de los registros t0 y t1
# es slt, que es una instruccion que compara dos valores y almacena un 1 si el
# primer operando es menor que el segundo y un 0 en caso contrario. esta
# instruccion necesita de un registro para almacenar el resultado de la
# comparacion, en este caso el registro t2.