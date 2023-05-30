        .data
dato1:  .word    30
dato2:  .word    40
dato3:  .word    -1
res:    .space    4

        .text
main:
        lw   $t1, dato1($0)        # cargar dato1 en $t1
        lw   $t2, dato2($0)        # cargar dato2 en $t2
        lw   $t3, dato3($0)        # cargar dato3 en $t3
si:
        blt  $t3, $t1, entonces    # si $t3 < $t1 ir entonces
        ble  $t3, $t2, sino        # si $t3 <= $t2 ir sino
entonces:
        addi $t4, $0, 1            # $t4 = 1
        j    finsi                 # ir a finsi
sino:
        and  $t4, $0, $0           # $t4 = 0
finsi:
        sw   $t4, res($0)          # guardar $t4 en res

# cuestion 2.16

# pseudocodigo del programa:
# VARIABLES:
# entero: dato1 = 30, dato2 = 40, dato3 = -1, res
# INICIO
# si dato3 < dato1 entonces
#    res = 1
# sino
#    si dato3 <= dato2 entonces
#       res = 0
#    fin si
# fin si
# FIN

        .data