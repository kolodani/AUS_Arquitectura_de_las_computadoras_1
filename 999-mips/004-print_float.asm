.data
    PI: .float 3.14159    # .float es para un numero de punto flotante
.text
    li $v0, 2        # 2 es el codigo para imprimir un flotante, $v0 es el registro que contiene el codigo de la llamada al sistema, li es load immediate
    lwc1 $f12, PI    # lwcl es load word coprocessor left, $f12 es el registro que contiene el valor a imprimir
    syscall          # syscall es la instruccion que llama al sistema operativo
