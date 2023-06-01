            .data
dir:        .asciiz    "Hola. Ha Funcionado."

            .text
main:
        li   $v0, 4       # codigo de imprimir cadena
        la   $a0, dir     # direccion de la cadena
        syscall           # llamada al sistema

# cuestion 1.1

# se imprime el mensaje "Hola. Ha Funcionado." en la consola run I/O de MARS.
# que no es la misma consola que nos muestra los errores de compilacion y
# ejecucion.