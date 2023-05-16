            .data
byte1:      .byte    0x10
            .align   2
espacio:    .space   4
byte2:      .byte    0x20
palabra:    .word    10

# cuestion 1.21
# la variable espacio se encuentra en la direccion 0x10010004
# y termina en la direccion 0x10010007

# cuestion 1.22
# en cuatro bytes se puede construir una palabra ya que
# la misma ocupa esa cantidad de bytes.
# .aling lo que asi es alinear la direccion de memoria
# lo que significa que si se pone .align n,
# n es el numero de bytes que se alinearan
