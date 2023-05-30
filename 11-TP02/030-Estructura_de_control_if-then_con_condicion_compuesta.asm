        .data
dato1:  .word   40
dato2:  .word   30
res:    .space  4

        .text
main:
        lw   $t0, dato1($0)       # cargar dato1 en $t0
        lw   $t1, dato2($0)       # cargar dato2 en $t1
        and  $t2, $t2, $0         # pone a 0 $t2
si:
        beq  $t1, $0, finsi       # si $t1 = 0 saltar finsi
        beq  $t0, $0, finsi       # si $t0 = 0 saltar finsi
entonces:
        div  $t0, $t1             # $t0 / $t1
        mflo $t2                  # almacenar LO en $t2
finsi:
        add  $t3, $t0, $t1        # $t3 = $t0 + $t1
        add  $t2, $t3, $t2        # $t2 = $t3 + $t2
        sw   $t2, res($0)         # almacenar $t2 en res

# cuestion 2.6

# el pseudocodigo es el siguiente:
# VARIABLES:
# entero: dato1 = 40, dato2 = 30, res
# INICIO:
# si dato1 != 0 y dato2 != 0 entonces
#   res = dato1 / dato2
# res = res + dato1 + dato2
# FIN

# cuestion 2.7

# en el pseudocodigo se utiliza una doble condiccion que es si dato1 != 0 y
# dato2 != 0, pero en el codigo la condicion es si dato1 = 0 y dato2 = 0, por
# lo que el codigo no es equivalente al pseudocodigo, esto se debe a que la
# condicion se usa para saltar hacia una etiqueta y evitar lineas de codigo por
# lo tanto cuando ponemos una condicion en este caso, es a la inversa de la
# condicion que se utiliza en el pseudocodigo.

# cuestion 2.8

# las instrucciones que se implementan en la estructura condicional if-then son:
# beq  $t1, $0, finsi
# beq  $t0, $0, finsi

# cuestion 2.9

# en la variable res se almacena el valor 71, que es el producto de la suma de
# $t0 y $t1, que son respectivamente 40 y 30, y el resultado de la division
# entera de $t0 y $t1, que es 1. por lo tanto la suma es 71.
# res = 40 + 30 + 1 = 71