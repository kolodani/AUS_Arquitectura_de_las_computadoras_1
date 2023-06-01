            .data
cartel:     .asciiz "Ingrese una cadena de 10 caracteres: "
salto:      .asciiz "\n"
            .align 2
cadena:     .space 11

            .text
main:
        li   $v0, 4
        la   $a0, cartel
        syscall

        addi $sp, $sp, -11
        li   $v0, 8
        la   $a0, 0($sp)
        li   $a1, 11
        syscall
        addi $t1, $0, 0

for:
        lb   $t0, 0($sp)
        sb   $t0, cadena($t1)
        addi $t1, $t1, 1
        beq  $t0, $zero, fin
        addi $sp, $sp, 1
        j    for

fin:
        addi $sp, $sp, 11
        li   $v0, 4
        la   $a0, salto
        li   $v0, 4
        la   $a0, cadena($0)
        syscall

        li   $v0, 10
        syscall

# cuestion 2.4