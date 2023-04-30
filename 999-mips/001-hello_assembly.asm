.data
    myMessage: .asciiz "Hello World!\n" # .asciiz es para cadenas de caracteres

.text
    li $v0, 4 # 4 es el código para imprimir una cadena de caracteres, li es load immediate que carga el valor inmediato en el registro $v0
    la $a0, myMessage # la es load address, carga la dirección de memoria de la cadena de caracteres en el registro $a0
    syscall # syscall es la llamada al sistema, ejecuta la instrucción anterior