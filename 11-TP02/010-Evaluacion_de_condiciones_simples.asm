            .data
dato1:      .word       30
dato2:      .word       20
res:        .space      1

            .text
main:
        lw   $t0, dato1($0)      # cargar dato1 en t0
        lw   $t1, dato2($0)      # cargar dato2 en t1
        sgt  $t2, $t0, $t1       # t2 = 1 si t0 > t1
        beq  $t2, $0, find       # si t2 = 0, salta a find
        bne  $t2, $0, fini       # si t2 != 0, salta a fini
        j    end                 # salta a end
find:
        ori  $t2, $0, 1          # $t2 = 1
        j    end                 # salta a end
fini:
        ori  $t2, $0, 2          # $t2 = 2
        j    end                 # salta a end
end:
        sb   $t2, res($0)        # almacenar $t2 en res
        li   $v0, 10             # fin del programa
        syscall

# cuestion 1.12

# modificacion del codigo utilizando pseudoinstrucciones
