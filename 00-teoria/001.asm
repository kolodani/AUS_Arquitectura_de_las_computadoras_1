# CPU

# la unidad de control (UC): responsalbe de la captura de intrucciones desde la memoria principal.
# la unidad aritmerica logica (ALU): ejercuta operaciones para llevar a cabo las instrucciones.
# los registros (memoria pequeña de alta velocidad): almacena resultados temporales y cierta informacion de control.
# contador de programa (PC), apunta a la proxima instruccion a ejecutar.
# registro de intruccion (IR), contiene la instruccion a ejecutar.

# Funcionamiento de la CPU

# 1. Pone la proxima instruccion de la memoria en el registro de instruccion (IR).
# 2. Cambia el contador de programa para que apunte a la instruccion siguiente.
# 3. Determina el tipo de instruccion.
# 4. Si la instuccion usa una palabra de memoria, determina donde esta.
# 5. Copia la palabra, si es necesario, en un registro de la CPU.
# 6. Ejecuta la instruccion.
# 7. Vuelve al punto inicial 1 para comenzar con la siguiente instruccion.
