            .data
numero:     .word 0xffffff41
            .text
main:
            lw  $t0, numero($0)
            sra $t1, $t0, 4

# cuestion 3.10

# se llenea el numero con bit de signo porque se hace un shift aritmetico a la
# derecha lo que hace que se rellene con el bit de signo a diferencia de un
# shift logico que se rellena con 0, este shift aritmetico funciona como una
# division por 2 elevado a la cantidad de bits que se hace el shift.