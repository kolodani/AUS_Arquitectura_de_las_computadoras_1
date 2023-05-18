                .data
octeto:         .byte       0x30
siguiente:      .byte       0x20

                .text       # zona de instrucciones
main:           lbu $s0, octeto($0)
                lb  $s1, octeto($0)

# cuestion 2.15

# al cambiar el valor de octeto a 0x30, el valor ahora es igual a 48 en
# decimal, lo que hace que entre en el rango de carga de lb que va de -128 a
# 127, y lo mismo sucede con el rango de lbu que va de 0 a 255. por lo tanto,
# en este caso es lo mismo poner lb como lbu.