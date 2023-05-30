            .data
vector:     .word    6, 7, 8, 9, 10, 1
res:        .space   4

            .text
main:
        la    $t2, vector        # $t2 = direccion de vector
        and   $t3, $0, $t3       # $t3 = 0
        li    $t0, 0             # $t0 = 0
        li    $t1, 6             # $t1 = 5
para:
        bgt   $t0, $t1, finpara  # si $t0 > $t1 saltar finpara
        lw    $t4, 0($t2)        # carga elemento vector en $t4
        add   $t3, $t4, $t3      # suma los elementos del vector
        addi  $t2, $t2, 4        # $t2 = $t2 + 4
        addi  $t0, $t0, 1        # $t0 = $t0 + 1
        j     para               # saltar a bucle
finpara:
        sw    $t3, res($0)       # almacenar $t3 en res

# cuestion 2.22

# las funciones de este programa se estructuran de la siguiente manera:
# se carga la primer posicion del vector, se crea un acumulador de la suma, y
# por ultimo se crean dos valores, el indice que va a crecer hasta llegar al
# valor maximo que se quiere hacer el bucle.
# en el bucle se va a sumar el valor del acumulador con el valor del vector que
# este marcado por el indice.
# por ultimo cuando el indice llegue al valor maximo, se va a guardar el valor
# del acumulador en la posicion de memoria que se le indique.