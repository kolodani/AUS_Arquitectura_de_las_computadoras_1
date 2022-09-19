# Crea un fichero con un código que defina un vector de cinco
# palabras (word), que esté asociado a la etiqueta vector, que comience en la
# dirección 0x10000000 y con los valores 0x10, 30, 0x34, 0x20 y 60. Comprueba que se
# almacena de forma correcta en memoria.

        .data
vector: .word 0x10, 30, 0x34, 0x20, 60
