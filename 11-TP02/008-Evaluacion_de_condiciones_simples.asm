            .data
dato1:      .word       20
dato2:      .word       20
res:        .space      1

            .text
main:
        lw   $t0, dato1($0)      # cargar dato1 en t0
        lw   $t1, dato2($0)      # cargar dato2 en t1

        sne  $t2, $t0, $t1       # pone 1 $t2 si $t0 != $t1
        bne  $t0, $t1, find      # si $t0 != $t1 salta a find

        seq  $t2, $t0, $t1       # pone 1 $t2 si $t0 == $t1
        beq  $t0, $t1, fini      # si $t0 == $t1 salta a fini

find:
        sb   $t2, res($0)        # almacenar $t2 en res
        li   $v0, 10             # fin del programa
        syscall

fini:
        addi $t2, $t2, 1         # $t2 = 2
        sb   $t2, res($0)        # almacenar $t2 en res
        li   $v0, 10             # fin del programa
        syscall

# cuestion 1.10

# codigo modificado utilizando pseudoinstrucciones