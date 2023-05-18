                .data
octeto:         .word       0x10203040
siguiente:      .byte       0x20

                .text       # zona de instrucciones
main:           lb $s0, octeto+1($0)

# cuestion 2.17

# lo que sucedio ahora cambiando la instruccion de lb, sumandole al octeto + 1,
# hace que se lea el byte 0x30, que es el segundo byte del word 0x10203040,
# y se guarda en el registro $s0.
# en este caso no se produce un error de direccionamiento porque se esta
# apuntanto al segundo byte de un word, y no al primero. si esto se hiciera
# en siguiente si produciria un error de direccionamiento.