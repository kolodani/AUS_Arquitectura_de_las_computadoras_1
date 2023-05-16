            .data
cadena:     .asciiz "abcde"        # defino string
octeto:     .byte   0xff

# cuestion 1.12
# la cadena de caracteres se encuentra en la direccion de memoria 0x10010000
# y continua hasta 0x10010005 esto incluye las 5 letras
# y luego en la direccion 0x10010006 se encuentra el 0xff

# cuestion 1.13
# si se emplea asciiz en vez de ascii, el compilador agrega un 0 al final de
# la cadena o tambien llamado fin de cadena que es el caracter \0,
# por lo tanto la cadena de caracteres se encuentra en la direccion de
# memoria 0x10010000 y continua hasta 0x10010006 esto incluye las 5 letras
# y el fin de cadena
# luego en la direccion 0x10010007 se encuentra el 0xff