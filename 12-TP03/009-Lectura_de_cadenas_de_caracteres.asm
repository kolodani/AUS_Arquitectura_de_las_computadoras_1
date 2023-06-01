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