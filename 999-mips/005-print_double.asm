.data
    myDouble: .double 7.202    # .double es para declarar un double
    zeroDouble: .double 0.0    # creo mi propio cero

.text
    ldc1 $f2, myDouble    # cargo el double en el registro $f2
    ldc1 $f0, zeroDouble  # cargo el cero en el registro $f0

    li $v0, 3             # imprimo el double
    add.d $f12, $f2, $f0  # sumo el double con el cero y lo guardo en $f12
    syscall