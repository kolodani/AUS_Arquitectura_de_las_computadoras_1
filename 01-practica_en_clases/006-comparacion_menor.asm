.data

.text
main:
    add $s0, $zero, $zero         # creo el acumulador
    addi $s1, $zero, 1            # creo el multiplicador
    addi $t0, $zero, 10000        # creo el limite

for:                              # bucle for
    slt $t1, $s0, $t0             # comparo el acumulador con el limite
    beq $t1, $zero, end           # si es igual salgo del bucle
    add $s0, $s0, $s1             # acumulo el multiplicador en el acumulador
    sll $s1, $s1, 1               # multiplico el multiplicador por 2
    j for

end:
    li $v0, 1                     # imprimo el resultado
    move $a0, $s0                 # muevo el acumulador al registro de argumentos
    syscall

    li $v0, 10                    # fin del programa
    syscall