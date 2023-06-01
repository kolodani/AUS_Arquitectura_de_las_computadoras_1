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

# cuestion 1.6

# cuando se ejecuta el programa, se imprime la cadena "Introduce el entero: ", y
# se espera a que el usuario introduzca un entero. Cuando el usuario introduce
# el entero, se almacena en la variable entero, en el registro $v0.