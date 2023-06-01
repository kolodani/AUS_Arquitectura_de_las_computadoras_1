            .data
cartelN:    .asciiz  "Ingrese su nombre: "
cartelA:    .asciiz  "Ingrese su apellido: "
cartelD:    .asciiz  "Ingrese su DNI: "
salida:     .asciiz  "Datos del usuario:\n"
resN:       .asciiz  "Su nombre es: "
resA:       .asciiz  "Su apellido es: "
resD:       .asciiz  "Su DNI es: "
nombre:     .space   10
apellido:   .space   15
            .align   2
DNI:        .space   4

            .text
main:
        # pido nombre y lo guardo
        li    $v0, 4
        la    $a0, cartelN
        syscall

        li    $v0, 8
        la    $a0, nombre
        li    $a1, 10
        syscall

        # pido apellido y lo guardo
        li    $v0, 4
        la    $a0, cartelA
        syscall

        li    $v0, 8
        la    $a0, apellido
        li    $a1, 15
        syscall

        # pido DNI y lo guardo
        li    $v0, 4
        la    $a0, cartelD
        syscall

        li    $v0, 5
        syscall
        sw    $v0, DNI

        # imprimo los datos
        li    $v0, 4
        la    $a0, salida
        syscall

        li    $v0, 4
        la    $a0, resN
        syscall

        li    $v0, 4
        la    $a0, nombre
        syscall

        li    $v0, 4
        la    $a0, resA
        syscall

        li    $v0, 4
        la    $a0, apellido
        syscall

        li    $v0, 4
        la    $a0, resD
        syscall

        lw    $a0, DNI
        li    $v0, 1
        syscall
