            .data
numero:     .word 0xffffff41
            .text
main:
            lw  $t0, numero($0)
            sra $t1, $t0, 4

# cuestion 3.14

# la operacion sra se puede entender como estar dividiendo por 2^4 el numero,
# la division es entera por lo que se trunca el resultado