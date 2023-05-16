.data
palabra1:    .word 15        # decimal
palabra2:    .word 0x15      # hexadecimal

# cuestion 1.1:
# el valor hexadecimal de palabra1 es 0x0000000F
# el valor hexadecimal de palabra2 es 0x00000015

# cuestion 1.2:
# el valor de la palabra1 se encuentra almacenado en la direccion 0x10010000
# el valor de la palabra2 se encuentra almacenado en la direccion 0x10010004
# se encuentran en ese orden porque por defecto lo que se guarda en memoria
# empieza en el valor 0x10010000 y va aumentando, en este caso de 4 en 4 porque
# son palabras de 32 bits