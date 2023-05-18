                .data
octeto:         .byte       0xf3
siguiente:      .byte       0x20

                .text       # zona de instrucciones
main:           lbu $s0, octeto($0)

# cuestion 2.14

# al cambiar la instruccion lb por lbu se soluciona el problema, el numero
# ahora se carga de manera perfecta en el registro $s0, ya que lb carga el
# numero con signo y lbu lo carga sin signo, por lo que el numero se carga de
# manera correcta. esto sucede porque el rango de lb es de -128 a 127, y el
# rango de lbu es de 0 a 255, por lo que el numero 243 se encuentra dentro
# del rango de lbu, pero no en el de lb.