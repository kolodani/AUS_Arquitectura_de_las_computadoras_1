            .data
dir:        .asciiz "Introduce el entero: "
            .align  2
entero:     .space  4

            .text
main:
        li   $v0, 4       # codigo de imprimir cadena
        la   $a0, dir     # direccion de la cadena
        syscall
        li   $v0, 5       # codigo de leer entero
        syscall
        sw   $v0, entero  # almacenar el entero

# cuestion 1.7