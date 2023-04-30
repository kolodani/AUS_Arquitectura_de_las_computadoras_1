.data
    myCharacter: .byte 'm'    # .byte es para un solo caracter
.text
    li $v0, 4    # 4 es el código para imprimir un string, se guarda en $v0, que es el registro de salida de la función. li es load immediate
    la $a0, myCharacter    # la es load address, carga la dirección de myCharacter en $a0
    syscall    # llamada al sistema