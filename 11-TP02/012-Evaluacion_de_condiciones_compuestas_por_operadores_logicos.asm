            .data
dato1:      .word       0
dato2:      .word       20
res:        .space      1
            .text
main:
        lw   $t8, dato1($0)
        lw   $t9, dato2($0)
        and  $t0, $t0, $0
        and  $t1, $t1, $0
        beq  $t8, $t0, igual
        ori  $t0, $t0, 1
igual:
        beq  $t9, $0, fineval
        ori  $t1, $0, 1
fineval:
        and  $t0, $t0, $t1
        sb   $t0, res($0)

# cuestion 1.14

# en la posicion de memoria res se guarda 0, porque el dato1 es igual a cero,
# lo que hace esto es que beq salte a la etiqueta igual, y $t0 siga siendo 0,
# luego al final del programa cuando se hace el and entre $t0 y $t1, es un and
# entre 0 y 1, lo que da 0, y se guarda en res.