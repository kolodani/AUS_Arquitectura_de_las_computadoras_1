# Logica Combinacional

# no existe memoria, la salida depende de la entrada en todo momento, al igual entrada igual salida

# Compuertas Basicas

# AND
# | A | B | F |
# | 0 | 0 | 0 |
# | 0 | 1 | 0 |
# | 1 | 0 | 0 |
# | 1 | 1 | 1 |
# F = A * B

# OR
# | A | B | F |
# | 0 | 0 | 0 |
# | 0 | 1 | 1 |
# | 1 | 0 | 1 |
# | 1 | 1 | 1 |
# F = A + B

# Buffer
# | A | F |
# | 0 | 0 |
# | 1 | 1 |
# F = A

# NOT(inverter)
# | A | F |
# | 0 | 1 |
# | 1 | 0 |
# F = ~A

# NAND
# | A | B | F |
# | 0 | 0 | 1 |
# | 0 | 1 | 1 |
# | 1 | 0 | 1 |
# | 1 | 1 | 0 |
# F = ~(A * B)

# NOR
# | A | B | F |
# | 0 | 0 | 1 |
# | 0 | 1 | 0 |
# | 1 | 0 | 0 |
# | 1 | 1 | 0 |
# F = ~(A + B)

# XOR (exclusive or)
# | A | B | F |
# | 0 | 0 | 0 |
# | 0 | 1 | 1 |
# | 1 | 0 | 1 |
# | 1 | 1 | 0 |
# F = A ^ B

# XNOR (exclusive nor)
# | A | B | F |
# | 0 | 0 | 1 |
# | 0 | 1 | 0 |
# | 1 | 0 | 0 |
# | 1 | 1 | 1 |
# F = ~(A ^ B)

# Tri-state Buffer
# | C | A | F |
# | 0 | 0 | x |
# | 0 | 1 | x |
# | 1 | 0 | 0 |
# | 1 | 1 | 1 |
# F = C * A

# Tri-state Buffer, Inverter control
# | C | A | F |
# | 0 | 0 | 1 |
# | 0 | 1 | 1 |
# | 1 | 0 | x |
# | 1 | 1 | x |
# F = ~C * A

# Algrebra de Boole
# Propiedad           | Producto                    | Suma
# Conmutativa         | A * B = B * A               | A + B = B + A
# Distributiva        | A * (B + C) = A * B + A * C | A + (B * C) = (A + B) * (A + C)
# Identidad           | A * 1 = A                   | A + 0 = A
# Complemento         | A * A' = 0                  | A + A' = 1
# Teorema del 0 y 1   | A * 0 = 0                   | A + 1 = 1
# idempotencia        | A * A = A                   | A + A = A
# Asociativa          | A * (B * C) = (A * B) * C   | A + (B + C) = (A + B) + C
# Involucion          | (A')' = A                   |
# Teorema de Morgan   | (A * B)' = A' + B'          | (A + B)' = A' * B'
# Teorema del concenso| A * B + A * C = A * (B + C) | A + B * A + C = A + (B + C)
# Teorema de absorcion| A * (A + B) = A             | A + A * B = A

# Primera Forma Canonica
# Suma de M productos de N variables
# M numero de productos = nro de '1' a la salida
# N numero de terminos de cada producto = nro de variables de entrada
# Cada producto forma un '1' de la salida
# La suma de todos los productos forman todos los '1' de la salida
# La salida es binaria, si no es '1' es '0'
# Ideal cuando hay pocos '1'
# El Resultado puede ser simplificado

# Segunda Forma Canonica
# Producto de M sumas de N variables
# M numero de sumas = nro de '0' a la salida
# N numero de terminos de cada suma = nro de variables de entrada
# Cada suma forma un '0' de la salida
# El producto de todas las sumas forman todos los '0' de la salida
# La salida es binaria si no es '0' es '1'
# Ideal cuando hay pocos '0'
# El resultado puede ser simplificado

# Simplificacion
# se intenta minimizar la complejidad del sistema
# menor cantidad de componentes
# menor cantidad de conexiones
# menor costo
# menor tamaño
# menor produccion de calor
# mayor velocidad

# Karnaugh
# 