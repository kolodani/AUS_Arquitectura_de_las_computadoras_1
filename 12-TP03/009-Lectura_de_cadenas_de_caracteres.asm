            .data
dir:        .asciiz   "Introduce los caracteres: \n"
buffer:     .space    10    # zona para los caracteres

            .text
main:
        li    $v0, 4        # codigo de imprimir cadena
        la    $a0, dir      # direccion de la cadena
        syscall             # llamada al sistema
        li    $v0, 8        # codigo de leer el string
        la    $a0, buffer   # direccion lectura cadena
        li    $a1, 10       # espacio maaximo cadena
        syscall             # llamada al sistema

# cuestion 1.9

# la cadena se almacena de manera perfecta

# cuestion 1.10

# si se escribe una cadena mas grande que el tamaño reservado para el buffer, el
# programa solo almacena los caracteres que caben en el buffer y sigue con el
# resto del codigo. se guardan 9 caracteres y el ultimo es el caracter de fin de
# cadena.