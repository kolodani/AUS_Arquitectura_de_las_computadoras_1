            .data
dato1:      .word       30
dato2:      .word       20
res:        .space      1

            .text
main:
        lw   $t0, dato1($0)      # cargar dato1 en t0
        lw   $t1, dato2($0)      # cargar dato2 en t1
        sub  $t2, $t0, $t1       # $t2 = $t0 - $t1
        bgtz $t2, find           # si $t2 > 0 salta a find
        bltz $t2, fini           # si $t2 < 0 salta a fini
        j    end                 # salta a end
find:
        ori  $t2, $0, 1          # $t2 = 1
        j    end                 # salta a end
fini:
        ori  $t2, $0, 0          # $t2 = 0
        j    end                 # salta a end
end:
        sb   $t2, res($0)        # almacenar $t2 en res
        li   $v0, 10             # fin del programa
        syscall

# cuestion 1.11

# modificacion del codigo sin usar pseudoinstrucciones
