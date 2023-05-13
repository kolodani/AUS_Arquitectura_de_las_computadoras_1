.data

.text
main:
    add  $t0, $zero, $zero       # i = 0, creo mi indice
    addi $t1, $zero, 20          # n = 20, creo mi limite
    add  $t2, $zero, $zero       # sum = 0, creo mi acumulador

for:                             # bucle for
    beq $t0, $t1, end            # si i == n, salgo del bucle
    addi $t0, $t0, 1             # incremento i en 1
    add $t2, $t2, $t0            # sumo i a sum
    j for                        # vuelvo al bucle

end:                             # fin del bucle
    li $v0, 1                    # imprimo el resultado
    move $a0, $t2                # envio el acumulador a imprimir
    syscall

    li $v0, 10                   # fin del programa
    syscall
