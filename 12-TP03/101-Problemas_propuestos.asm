            .data
cartel1:    .asciiz "Introduce un numero: "
cartel2:    .asciiz "Introduce otro numero: "
cartel3:    .asciiz "El resultado de la suma es: "

            .text
main:
        li   $v0, 4           # imprimir cartel
        la   $a0, cartel1     # direccion del cartel
        syscall

        li   $v0, 5           # leer numero
        syscall
        move $t0, $v0         # guardo el numero en $t0

        li   $v0, 4           # imprimir cartel
        la   $a0, cartel2     # direccion del cartel
        syscall

        li   $v0, 5           # leer numero
        syscall
        move $t1, $v0         # guardo el numero en $t1

        add  $t0, $t0, $t1    # sumo los numeros

        li   $v0, 4           # imprimir cartel
        la   $a0, cartel3     # direccion del cartel
        syscall

        li   $v0, 1           # imprimir numero
        move $a0, $t0         # numero a imprimir
        syscall
