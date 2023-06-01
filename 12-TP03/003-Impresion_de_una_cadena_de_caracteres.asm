            .data
dir:        .asciiz    "Ha Funcionado.\n"

            .text
main:
        li   $v0, 4       # codigo de imprimir cadena
        la   $a0, dir     # direccion de la cadena
        syscall           # llamada al sistema

# cuestion 1.3

# codigo modificado