            .data
palabra:    .word        0x10203040
            .text        # zona de instrucciones
main:       lh $s0, palabra($0)

# cuestion 2.11

# al modificar el codigo de esta forma se carga en el registro $s0 el valor 0x3040
# ya que se carga la mitad menos significativa
# lh hace referencia a load half word, que carga la mitad de la palabra