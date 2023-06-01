            .data
dir:        .asciiz "Introduce el entero: "
entero:     .space  4

            .text
main:
        li   $v0, 4       # codigo de imprimir cadena
        la   $a0, dir     # direccion de la cadena
        syscall
        li   $v0, 5       # codigo de leer entero
        syscall
        sw   $v0, entero  # almacenar el entero

# cuestion 1.8

# al eliminar la linea align 2, el programa no funciona correctamente. esto
# sucede porque la cadena de caracteres no esta alineada y los 4 bytes
# reservados no empiezan en una direccion de memoria que sea multiplo de 4. por
# lo tanto, al querer guardar el entero el programa da error.