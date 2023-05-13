.data

.text
    addi $t0, $zero, 1         # $t0 = 1
    addi $t1, $zero, 1024      # $t1 = 1024

while:                         # bucle while, la condición es $t0 < $t1
    beq $t0, $t1, end          # si $t0 == $t1, salta a end
    sll $t0, $t0, 1            # $t0 = $t0 << 1 (multiplica por 2)
    j while                    # salta a while

end:                           # fin del bucle
    li $v0, 1                  # imprime un entero
    move $a0, $t0              # enviar $t0 como parámetro
    syscall

    li $v0, 10                 # fin del programa
    syscall