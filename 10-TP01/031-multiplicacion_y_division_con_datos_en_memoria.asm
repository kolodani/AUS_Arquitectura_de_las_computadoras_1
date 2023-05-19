            .data
numero1:    .word 10
numero2:    .word 3
            .space 8
            .text
main:
            lw   $t0,numero1($0)
            lw   $t1,numero2($0)
            div  $t0,$t1
            mflo $t0
            mfhi $t1
            sw   $t0,numero2+4($0)
            sw   $t1,numero2+8($0)

# cuestion 3.7

# al realizar la instruccion div, el resultado de la division se almacena en el
# registro LO y el resto en el registro HI, por lo tanto, para obtener el resto
# de la division, se debe utilizar la instruccion mfhi, y para obtener el
# cociente, se debe utilizar la instruccion mflo. en este caso, es muy util que
# el programa almacene el resultado del resto ya que se esta realizando una
# division entera y no siempre el resto es 0.