.text               # zona de instrucciones
main:               li $s0, 0x12345678

# cuestion 2.3

# cuando se ejecuta el programa se inicializan los registros
# $s0 = 0x12345678 y $at = 0x12340000
# en el primer paso se inicializa $at y luego $s0