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
# simplificacion, menor cantidad de terminos y mas chicos
# reescribo la tbla de verdad con el codigo de gray en el mapa
# tomo grupos de 1 a 0 contiguos (1er o 2da forma canonica) bajo las premisas:
# rectangulos o cuadrados
# cantidad de elementos n = 2x con x entero
# cantidad de elementos la mayor posible, mas simplificacion
# puedo tomar un termino varias veces (idempotencia)
# no tomar grupos redundantes
# los extremos son contiguos (los terminos que difieren en 1 bit)

# Multiplexores
# data inputs (D0, D1, D2, D3)
# control inputs (A, B)
# output (F)

# | A | B | F |
# | 0 | 0 | D0|
# | 0 | 1 | D1|
# | 1 | 0 | D2|
# | 1 | 1 | D3|
# F = A' * B' * D0 + A' * B * D1 + A * B' * D2 + A * B * D3

# Demultiplexores
# data input (D)
# control inputs (A, B)
# output (F0, F1, F2, F3)

# | D | A | B | F0 | F1 | F2 | F3 |
# | 0 | 0 | 0 |  0 |  0 |  0 |  0 |
# | 0 | 0 | 1 |  0 |  0 |  0 |  0 |
# | 0 | 1 | 0 |  0 |  0 |  0 |  0 |
# | 0 | 1 | 1 |  0 |  0 |  0 |  0 |
# | 1 | 0 | 0 |  1 |  0 |  0 |  0 |
# | 1 | 0 | 1 |  0 |  1 |  0 |  0 |
# | 1 | 1 | 0 |  0 |  0 |  1 |  0 |
# | 1 | 1 | 1 |  0 |  0 |  0 |  1 |
# F0 = A' * B' * D
# F1 = A' * B * D
# F2 = A * B' * D
# F3 = A * B * D

# Decodificadores

# Enable = 1
# | A | B | D0 | D1 | D2 | D3 |
# | 0 | 0 |  1 |  0 |  0 |  0 |
# | 0 | 1 |  0 |  1 |  0 |  0 |
# | 1 | 0 |  0 |  0 |  1 |  0 |
# | 1 | 1 |  0 |  0 |  0 |  1 |

# Enable = 0
# | A | B | D0 | D1 | D2 | D3 |
# | 0 | 0 |  0 |  0 |  0 |  0 |
# | 0 | 1 |  0 |  0 |  0 |  0 |
# | 1 | 0 |  0 |  0 |  0 |  0 |
# | 1 | 1 |  0 |  0 |  0 |  0 |

# D0 = A' * B' * Enable
# D1 = A' * B * Enable
# D2 = A * B' * Enable
# D3 = A * B * Enable

# Codificadores de prioridad
# | A0 | A1 | A2 | A3 | F0 | F1 |
# |  0 |  0 |  0 |  0 |  0 |  0 |
# |  0 |  0 |  0 |  1 |  1 |  1 |
# |  0 |  0 |  1 |  0 |  1 |  0 |
# |  0 |  0 |  1 |  1 |  1 |  0 |
# |  0 |  1 |  0 |  0 |  0 |  1 |
# |  0 |  1 |  0 |  1 |  0 |  1 |
# |  0 |  1 |  1 |  0 |  0 |  1 |
# |  0 |  1 |  1 |  1 |  0 |  1 |
# |  1 |  0 |  0 |  0 |  0 |  0 |
# |  1 |  0 |  0 |  1 |  0 |  0 |
# |  1 |  0 |  1 |  0 |  0 |  0 |
# |  1 |  0 |  1 |  1 |  0 |  0 |
# |  1 |  1 |  0 |  0 |  0 |  0 |
# |  1 |  1 |  0 |  1 |  0 |  0 |
# |  1 |  1 |  1 |  0 |  0 |  0 |
# |  1 |  1 |  1 |  1 |  0 |  0 |

# F0 = A0' * A1' * A3 + A0' * A1' * A2
# F1 = A0' * A2' * A3 + A0' * A1

# Sumador
# | Ai | Bi | Ci | Si | Ci+1 |
# |  0 |  0 |  0 |  0 |   0  |
# |  0 |  0 |  1 |  1 |   0  |
# |  0 |  1 |  0 |  1 |   0  |
# |  0 |  1 |  1 |  0 |   1  |
# |  1 |  0 |  0 |  1 |   0  |
# |  1 |  0 |  1 |  0 |   1  |
# |  1 |  1 |  0 |  0 |   1  |
# |  1 |  1 |  1 |  1 |   1  |

# Si = Ai' * Bi' * Ci + Ai' * Bi * Ci' + Ai * Bi' * Ci' + Ai * Bi * Ci = A xor B xor C
# Ci = Ai' * Bi * Ci + Ai * Bi' * Ci + Ai * Bi * Ci' + Ai * Bi * Ci = AB + BC + AC