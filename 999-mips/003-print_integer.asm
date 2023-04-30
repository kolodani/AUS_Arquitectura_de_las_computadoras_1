.data
    age: .word 33    # .word es un entero de 32 bits
.text
    li $v0, 1       # 1 es el código de la llamada al sistema para imprimir un entero
    lw $a0, age     # $a0 es el registro que contiene el primer argumento de la llamada al sistema
    syscall         # llamada al sistema