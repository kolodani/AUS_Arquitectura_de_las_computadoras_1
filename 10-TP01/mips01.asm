                .data
dato:           .byte 3               # inicializo una posicion de memoria a 3
                .text
                .globl main           # debe ser global
main:           lw $t0, dato($0)


#        COMENTARIOS
#        # inicializo una posicion de memoria a 3
#        # debe ser global

#        ETIQUETAS
#        dato:
#        main:

#        DIRECTIVAS
#        .data
#        .byte
#        .text
#        .globl