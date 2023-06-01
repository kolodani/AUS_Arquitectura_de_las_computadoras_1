            .data
dir:        .asciiz    "Hola. Ha Funcionado.\n"

            .text
main:
        li   $v0, 4       # codigo de imprimir cadena
        la   $a0, dir     # direccion de la cadena
        syscall           # llamada al sistema

# cuestion 1.2

# la diferencia con el codigo original es que el codigo se separa por un espacio
# mas ya que agregamos al final de la linea de caracteres un \n que es un salto
# de linea.