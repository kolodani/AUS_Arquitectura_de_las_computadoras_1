            .data
dato1:      .word       30
dato2:      .word       40
res:        .space      1

            .text
main:
        lw   $t0, dato1($0)    # cargar dato1 en t0
        lw   $t1, dato2($0)    # cargar dato2 en t1
        slt  $t2, $t0, $t1     # poner a 1 $t2 si t0 < t1
        sb   $t2, res($0)      # almacenar $2 en res

# cuestion 1.1

# en la posicion de memoria de res se carga el valor 1, ya que 30 es menor que
# 40 que es lo que se compara slt. slt significa set less than, es decir, si el
# primer operando es menor que el segundo, se carga un 1 en el registro destino,
# en caso contrario se carga un 0.