# 2)
# diseña un programa ensamblador qye reserva espacio para dos vectores
# A y B de 20 palabras cada uno a partir de la direccion 0x10000000

.data               0x10000000
vectorA:    .word   0:20
vectorB:    .word   0:20

# despues de .data se puede poner la direccion de memoria donde donde se quiere
# comenzar a guardar los datos

# luego el de la etiqueta llamada vector, pongo el tipo de dato que es word
# y creo un vector de 20 palabras, cada una de ellas inicializada a 0