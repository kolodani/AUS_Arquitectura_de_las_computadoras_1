            .data         # comienza zona de datos
palabra1:   .word 15      # decimal
palabra2:   .word 0x15    # hexadecimal


# al no pasarle ningun valor a .data, se asume que es 0 o que arranca en la variable 0x10010000
# luego reservo 4 bytes para la variable palabra1 y 4 bytes para la variable palabra2
# por lo tanto, palabra1 = 0x10010000 y palabra2 = 0x10010004

# ademas, le doy un valor decimal a palabra1 y un valor hexadecimal a palabra2
# que se guardan en memoria