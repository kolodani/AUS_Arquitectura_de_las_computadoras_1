        .data
dato1:  .word   40
dato2:  .word   30
res:    .space  4
        .text
main:
        lw   $t0, dato1($0)   # carga dato1 en $t0
        lw   $t1, dato2($0)   # carga dato2 en $t1
        and  $t2, $t2, $0     # $t2 = 0
Si:
        beq  $t1, $0, finsi   # si $t1 = 0 finsi
entonces:
        div  $t0, $t1         # $t0 / $t1
        mflo $t2              # almacenar Lo en $t2
finsi:
        add  $t3, $t0, $t1    # $t3 = $t0 + $t1
        add  $t2, $t3, $t2    # $t2 = $t3 + $t2
        sw   $t2, res($0)     # almacenar en res $t2

# cuestion 2.1

# la instruccion que evalua la condicion es beq, compara la variable $t1 con 0
# para evitar una division por 0, esto seria la condicion del if, si $t1 es
# igual a 0, se salta a la etiqueta finsi, si no, se ejecuta la division y se
# almacena el resultado en $t2. esto evita que se ejecute la division por 0.

# cuestion 2.2

# la estructura condicional del if-then implementa un conjunto de instrucciones,
# estas son:
# beq que vendria a ser el if, o mejor dicho el condicional del if.
# then se implementa en este caso si la condicion no es cierta asi se evita el
# salto en el codigo.
# y por ultimo el resto del codigo se realiza pase lo que pase, lo unico que lo
# altera es que suceda lo que esta en el then.