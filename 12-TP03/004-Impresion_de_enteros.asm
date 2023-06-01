            .data
dir:        .asciiz   "Se va a imprimir el entero: "
entero:     .word     7

            .text
main:
        li    $v0, 4       # codigo de imprimir cadena
        la    $a0, dir     # direccion de la cadena
        syscall            # llamada al sistema
        li    $v0, 1       # codigo de imprimir entero
        li    $a0, 5       # entero a imprimir
        syscall            # llamada al sistema

# cuestion 1.4