            .data
cadena:     .ascii "abcde"        # defino string
octeto:     .byte   0xff

# cuestion 1.12
# la cadena de caracteres se encuentra en la direccion de memoria 0x10010000
# y continua hasta 0x10010005 esto incluye las 5 letras
# y luego en la direccion 0x10010006 se encuentra el 0xff