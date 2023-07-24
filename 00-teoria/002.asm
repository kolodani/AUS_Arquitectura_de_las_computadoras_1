# SISTEMAS NUMERICOS

# Introduccion

# el numero es una abtraccion, combinacion de simbolos para representar un valor
# sistemas numericos posicionales, definidos por la base que utilizan (cantidad de simbolos distintos).
# el valor de un numero se obtiene sumando los aported de cada cifra.
# el aporte de cada cifra se obtiene multiplicando el valor de la cifra por el peso (base elevada a la posicion empezando en cero a la izquierda de la coma).

# Bases mas importantes

# Decimal (10) uso cotidiano
# Binario (2) uso en electronica y computacion
# Hexaddecimal (16) comprime la notacion de un numero binario

# Rango, precision y error

# Rango: entorno definido por el menor y el mayor numero representable, diferencia entre el numero mayor y el menor.
# precision: distancia entre dos numeros consecutivos.
# Error: mitad de la diferencia entre dos numeros consecutivos.

# Errores

# se pueden distinguir distintos tipos de errores pero la causa primaria de todos ellos es la misma, tratar de representrar un conjunto infinito como el de los numeros con un conjunto finito.
# Errores de rango finito: este tipo de errores se genera cuando se intenta representar un numero que esta fuera del rango representable.
# errores por precision finita: este tipo de error se genera cuando se intenta representar un numero que es mas pequeño que la precision utilizada.

# Punto fijo

# Sepearacion entre parte entera y parte fraccionaria en una posicion fija.
# Precision constante en todo el rango.
# Mayor simplicidad de uso en operaciones.

# Comparacion de representaciones

# Decimal       | Binario       | Hexadecimal
# 0             | 0000          | 0
# 1             | 0001          | 1
# 2             | 0010          | 2
# 3             | 0011          | 3
# 4             | 0100          | 4
# 5             | 0101          | 5
# 6             | 0110          | 6
# 7             | 0111          | 7
# 8             | 1000          | 8
# 9             | 1001          | 9
# 10            | 1010          | A
# 11            | 1011          | B
# 12            | 1100          | C
# 13            | 1101          | D
# 14            | 1110          | E
# 15            | 1111          | F

# Numeros negarivos

# Valor absoluto y signo
# Complemento a 1 C1
# Complemento a 2 C2
# Exceso

# Valor absoluto y signo

# Forma sencilla de planteo
# Primer bit de signo
# Resto de bits valor absoluto del numero
# Doble representacion del cero
# Problemas con comparaciones
# Problemas con sumas y restas
# Se aganda la representacion agregando bits ´0' entre el bit de signo y los bits de valor absoluto

# Complemento a 1 C1

# Complemento bit a bit el numero en valor absoluto (-x) = x´
# Primer bit de signo
# Doble representacion del cero
# Mejora las comparaciones
# Bastante bueno en sumas y restas, si hay acarreo sumo arrastre circular
# Mejora las comparaciones
# Se agranda la representacion extendiendo el bit de signo

# Complemento a 2 C2

# C1 + 1 -> (-x) = x' + 1
# Primer bit de signo
# Unica representacion del cero
# Mayor rango para numeros negarivos
# Bueno para las comparaciones
# Ideal para sumar y restar, se descarta el acarreo
# Se agranda la representaion extendiendo el bit de signo

# Exceso

# Desplazamiento de la escala
# Numero mas chivo (mas negativo) se representa 0000000000...0
# El cero se representa a mitad de escala (Generalmente) 1000000000...0
# Numeros ordenados
# Ideal para comparaciones
# En suma y resta se debe tener en cuenta el exceso
# Se Agranda la representacion sumando la diferencia de excesos

# Comparacion de representaciones

# Numeros | VA y S | C1     | C2     | Exceso
# 8       |        |        |        |
# 7       |  0111  |  0111  |  0111  | 1111
# 6       |  0110  |  0110  |  0110  | 1110
# 5       |  0101  |  0101  |  0101  | 1101
# 4       |  0100  |  0100  |  0100  | 1100
# 3       |  0011  |  0011  |  0011  | 1011
# 2       |  0010  |  0010  |  0010  | 1010
# 1       |  0001  |  0001  |  0001  | 1001
# +0      |  0000  |  0000  |  0000  | 1000
# -0      |  1000  |  1111  |        |
# -1      |  1001  |  1110  |  1111  | 0111
# -2      |  1010  |  1101  |  1110  | 0110
# -3      |  1011  |  1100  |  1101  | 0101
# -4      |  1100  |  1011  |  1100  | 0100
# -5      |  1101  |  1010  |  1011  | 0011
# -6      |  1110  |  1001  |  1010  | 0010
# -7      |  1111  |  1000  |  1001  | 0001
# -8      |        |        |  1000  | 0000

# Aritmetica Positivos

# Suma/Resta: Similar a base 10
# Si hay acarreo en la ultima cifra hay desborde
# Multiplicacion/Division: Similar a base 10
# Para multiplicar o dividir por 2 (o Multiplos) en base 2 puedo usar corrimientos

# Aritmetica Negativos

# Suma/Resta: Similar a base 10
# Acarreo en la ultima cifra en C2 se pierda
# Acarreo en la ultima cifra en C1 se suma a la cifra menos significativa
# Detenccion de desborde necesaria
# Multiplicacion/Division: Similar a base 10, se pasan los operandosa valor absoluto y signo, se opera con la parte numerica y luego con el signo

# Desborde en suma C2

# Caso              | Descricion
# a>0, b>0          | Acarreo se pierde, Hay desborde si c < 0
# a>0, b<0          | Acarreo se pierde, No hay desborde
# a<0, b>0          | Acarreo se pierde, No hay desborde
# a<0, b<0          | Acarreo se pierde, Hay desborde si c > 0

# Punto Flotante

# Separacion en signo, exponente, mantisa para aprovechar mejor la cantidad de bits
# Normalizacion para asegurar una sola representacion de cada numero
# Compromiso entre rango y precision
# Precision variable
# Cerca de 0 mas precision absoluta
# Mayor complejidad de uso en operaciones

# Norma IEEE 754

# Simple precision 32 bits
# 1 bit signo
# 8 bits exponente en base 2
# 23 bits mantisa

# Doble precision 64 bits
# 1 bit signo
# 11 bits exponente en base 2
# 52 bits mantisa

# Interpretacion 32 bits

# Exponente 00000000
# Mantisa = 0 -> 0
# Mantisa != 0 -> cero sucio, numero desnormalizado, exponente = -126

# Exponente 00000001 - 11111110
# Numero normalizado
# Exponente en Exceso 127
# Mantisa con primer bit implicito

# Exponente 11111111
# Mantisa = 0 -> Infinito
# Mantisa != 0 -> NaN

# Aritmetica

# Suma: llevar el numero mas pequeño al mismo expoenente que el mas grande, sumar las mantisas, normalizar
# Resta: llevar el numero mas pequeño al mismo expoenente que el mas grande, restar las mantisas, normalizar
# Producto: Sumar los exponentes (restar el exceso), multiplicar las mantisas, normalizar y calcular el signo