        .data
cadena: .asciiz  "Hola"
        .align   2
n:      .space   4

        .text
main:
        la    $t0, cadena            # carga dir. cadena en $t0
        andi  $t2, $t2, 0            # $t2 = 0
mientras:
        lb    $t1, 0($t0)            # almacenar byte en $t1
        beq   $t1, $0, finmientras   # si $t1 == 0 saltar a finmientras
        addi  $t2, $t2, 1            # $t2 = $t2 + 1
        addi  $t0, $t0, 1            # $t0 = $t0 + 1
        j     mientras               # saltar a mientras
finmientras:
        sw    $t2, n($0)             # almacenar $t2 en n

# cuestion 2.19

# este programa funciona de la siguiente manera:
# cargo el puntero a la primera posicion de la cadena de caracteres "Hola", en
# $t0 se apunta al primer caracter que es 'H', la estructura mientras seguira
# siendo un bucle mientras el puntero no apunte al fin de linea, que es el
# valor 0 en la tabla ascii. se recorre caracter a caracter de la cadena y se
# incrementa el puntero y ademas un contador. cuando se llega al fin de linea,
# se almacena el contador en la variable n.