        .data
dato1:  .word   40
dato2:  .word   0
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

# cuestion 2.4

# se almacena en la variable res el valor de 40, porque al ser 0 el valor que
# se carga en $t1, la instruccion beq resulta verdadera y se dirige al codigo
# hacia la etiqueta finsi, la suma entre $t0 y $t1 es 40, y la suma entre $t3 y
# $t2 es 40, por lo tanto el valor de $t2 es 40, y se almacena en res.