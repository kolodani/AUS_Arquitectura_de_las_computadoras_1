            .data
cadena:     .asciiz  "daniel alberto vinzia"
caracter:   .ascii   "a"
res:        .word    0

            .text
main:
        addi   $t0, $0, 0
        lb     $t1, cadena($t0)
        lb     $t2, caracter
        addi   $t3, $0, 0
mientras:
        beq    $t1, $0, fin
        bne    $t1, $t2, noes
        addi   $t3, $t3, 1
noes:
        addi   $t0, $t0, 1
        lb     $t1, cadena($t0)
        j      mientras
fin:
        sw     $t3, res
        li     $v0, 10
        syscall
