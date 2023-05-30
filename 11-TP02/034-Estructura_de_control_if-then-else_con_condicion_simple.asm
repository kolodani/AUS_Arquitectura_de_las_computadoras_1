        .data
dato1:  .word   35
dato2:  .word   40
res:    .space  4

        .text
main:
        lw   $t0, dato1($0)       # cargar dato1 en $t0
        lw   $t1, dato2($0)       # cargar dato2 en $t1
si:
        bge  $t0, $t1, sino       # si $t0 >= $t1, ir a sino
entonces:
        sw   $t0, res($0)         # almacenar $t0 en res
        j    finsi                # ir a finsi
sino:
        sw   $t1, res($0)         # almacenar $t1 en res
finsi:

# cuestion 2.13

# el programa guarda en res el menor de los dos valores, en el primer caso
# guarda 30 porque es menor que 40 y lo mismo sucede cuando cambio el valor a
# 35, porque sigue siendo menor que 40.

# cuestion 2.14

# el simulador sustituye la instruccion bge por dos instrucciones,
# la primera es slt y la segunda es beq
# sustituye la linea:
# bge  $t0, $t1, sino
# por:
# slt  $at, $t0, $t1
# beq  $at, $0, 0x00000004