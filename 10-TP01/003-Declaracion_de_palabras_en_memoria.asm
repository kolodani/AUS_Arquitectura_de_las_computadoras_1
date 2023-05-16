.data         0x10000002
vector:       .word 0x10, 30, 0x34, 0x20, 60

# cuestion 1.5
# los numeros se guardan de forma correcta pero al comenzar el .data
# en 0x10000000, se estan guardando en .extern

# cuestion 1.6
# al poner el inicio de .data en 0x10000002, los datos se terminan guardando
# en la direccion 0x10000004 ya que el valor .word es de 4 bytes y no pueden
# truncarse a la mitad los valores para guardarlos en la direccion 0x10000002
# sucederia lo mismo si inicio en 0x10000001 o 0x10000003, los datos se
# guardaran en el comienzo de una direccion completa