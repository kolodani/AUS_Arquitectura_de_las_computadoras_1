# performance (rendimiento)

# * Permite elegir inteligentemente
# * Mirar por sobre las modas del marketing
# * Clave para comprender las razones de difetentes estructuras de CPU


# Performance en computadoras

# * TIEMPO, TIEMPO Y TIEMPO

# * Tiempo de respuesta (latencia)
#       - Cuanto tiempo toma para correr mi trabajo?
#       - En cuanto tiempo se ejecuta mi trabajo?
#       - Cuanto esperar por una consulta a una base de datos?
# * Productividad
#       - Cuantos trabajos pueden ejecutarse simultaneamente?
#       - Cual es el tiempo de ejecucion promedio?
#       - Cuanto trabajo se efectua?


# Tiempo de ejecucion

# * Tiempo transcurrido
#       - Cuenta todo (accesos a disco y memoria, I/O, etc)
#       - En general no es bueno para comparar

# * Tiempo de CPU
#       - No cuenta I/O o tiempo que se usa para correr otros programas
#       - Puede separarse en tiempo del usuario y tiempo del sistema

# * Nuestro interes: tiempo de CPU del usuario
#       - Tiempo para ejecutar las instrucciones de "mi programa"


# Definicion de performance

# * Problema
#       - La maquina A coorre un programa en 20 segundos
#       - La maquina B necesita 25 segundos
#       - Cuanto mas rapida es A?

# Decimos que "X es n veces mas rapida que Y"
#       - Perfonrmance(x) / Performance(y) = n = tiempo(y) / tiempo(x)

# Definimos por tanto la performance
#       - performance(p,x) = 1 / tiempo de ejecucion(p,x)


# Ciclos de reloj

# * Para iguales frecuencias de reloj, en lugar de hablar de tiempo de ejecucion en segundos, usamos ciclos

#        segundos      ciclos      segundos
#       ---------  =  --------  x  --------
#        programa     programa      ciclo

# * Pulsos de reloj indican cuando comenzar actividades (una abstraccion)

# * Ciclo de reloj = Tiempo entre pulsos = segundos por ciclo = T

# * Frecuencia de reloj = ciclos por segundo (1 Hz. = 1 ciclo/segundo)
# Un reloj de 200 Mhz. tiene un tiempo de ciclo de: (1/ 200x10^6) x 10^9 = 5 nanosegundos


# Metrica de performance

#      Aplicacion                  | Respuestas por mes
#                                  | Operaciones por segundo
#     Lenguaje de Programacion
#
#     Compilador
#                                  | (Millones) de instrucciones por segundo - MIPS
#         ISA                      | (Millones) de operaciones por segundo - MFLOPS
#
#    Camino de datos y Control     | Megabytes por segundo - MB/s
#
#    Unidades Funcionales
#                                  | Ciclos por instruccion (frecuencia de reloj)
#   Transistores, buses, pins


# Metricas de procesador

# * Tiempo de ejecucion para un programa dado:

#  segundos    ciclos      segundos       ciclos
# --------- = --------- x  ---------  =  ---------   /  frecuencia de reloj
# programa    programa      ciclo        programa

# ciclos        instrucciones         ciclos     <------CPI
# ---------  =  -------------  x ( ----------- )
# programa        programa         instruccion

# * o sea CPI = ciclos por programa / instrucciones por programa

# * CPI promedio nos da informacion acerca del set de instrucciones, la implementacion del ISA, y el programa medido.


# Aspectos de la performance de la CPU

# CPU time      seconds       instructions       cycles         seconds
#           =  ---------  =  -------------  x  -----------  x  ---------
#               program        program         instruction       cycle

#                | cantidad de instrucciones |  CPI  |  Frecuencia de reloj
# ---------------|---------------------------|-------|---------------------
# Programa       |            X              |       |
# Compilador     |            X              |   X   |
# ISA            |            X              |   X   |
# Organizacion   |                           |   X   |         X
# Tecnologia     |                           |       |         X
# ---------------|---------------------------|-------|---------------------


# CPI

# CPU time      seconds       instructions       cycles         seconds
#           =  ---------  =  -------------  x  -----------  x  ---------
#               program        program         instruction       cycle

# CPI = (CPU time * clock rate) / Instruction count = Ciclos de reloj del programa / Cantidad de instrucciones del programa

# CPU time = T * sumatoria de CPIi * Ii con i = 1 hasta n
#             " Ij = N veces de la instruccion j"
#             = (suma de los tiempos de todas lsa instrucciones)

# De las dos anteriores se deduce que
# CPI = sumatoria de CPIi * Fi con i = 1 hasta n
#       donde Fi = Ii / Instruction count


# Complejidad de la performance

# * Cual de las siguientes variables miden performance?
#       - # de ciclos para ejecutar el programa (n)
#       - # de instrucciones de un programa (I)
#       - # de ciclos por segundo (f)
#       - # promedio de ciclos por instruccion (cpi medio)
#       - # promedio de instrucciones por segundo [1/(cpi.T)]

# * Pifia comun:
#       - pensar que una variable sola es indicativa de la performance, cuando en realidad no lo es.


# Metricas de marketing

# MIPS = Millones de instrucciones por segundo
#      = 1 / (CPI * T * 10^6) = Frecuencia de reloj / (CPI * 10^6)

# Maquinas con diferentes conjuntos de instrucciones ?
#       - Para un mismo programa distinta cantidad de instrucciones
#       - Una con menos CPI puede necesitar mas instrucciones

# Programas con diferentes mexclas de instrucciones?
#       - Frecuencia dinamica de instrucciones es lo que cuenta
#       - Programas distintos tienen distintas CPI

# Por tanto MIPS nada que ver como performance

# MFLOPS = Millones de operaciones de punto flotante por segundo
# identicas observaciones que para MIPS

# Generalmente no miden en donde se gasta el tiempo

# los calculos no mienten, pero hay mentirosos que calculan


# Ejemplo CPI

# * Supongamos que tenemos dos implementaciones distintas de un mismo ISA: Maquinas A y B

# si dos maquinas tienen el mismo ISA, ¿Cual de las siguientes medidas (frecuencia de reloj, CPI, tiempo de ejecucion, # de Instrucciones, MIPS) seran siempre identicas?

# * Para cierto programa

# la maquina A tiene un ciclo de reloj de 10 ns y un CPI de 2.0
# la maquina B tiene un ciclo de reloj de 20 ns y un CPI de 1.2

# ¿Cual maquina es mas rapida para este programa y por cuanto?


# Ejemplo MIPS

# * Dos compiladores se testean para una maquina de 100 Mhz con 3 clases diferentes de instrucciones: A, B y C, de 1, 2, y 3 ciclos respectivamente. Ambos compiladores se usan para producir codigo de una gran pieza de Software

# * El primer compilador genera 5 millones de instucciones A, 1 millon clase B y 1 millon clase C

# * El segundo genera 10 millones de instrucciones A, 1 millon clase B y 1 millon clase C

# ¿Que secuencia sera mas rapida de acuerdo a los MIPS?

# ¿Y de acuerdo al tiempo de ejecucion?


# Benchmarks

# * Para evaluar diferencias
#       - Sistemas diferentes
#       - Cambios al mismo sistema

# * Proveer un objetico
#       - Los benchmarks deben representar un amplia clse de programas importantes.
#       - Mejorar la performance de los benchmarks deberia mejorar tambien la de muchos programas

# * Para buen o para mal, los benchamarks dan forma a nuestro campo

# * Los buenos aceleran el progreso
#       - Buen objetivo para desarrollo

# * Los malos traban el progreso
#       - Ayudan a los vendedores de maquinas
#       - Mejoras a ejecucion programas reales no mejoran benchmarks


# Programas para evaluar performance de la CPU

# * (Juegos) Benchmarks
#       - ej: go, puzzle, quicksort

# * Benchmarks sinteticos
#       - Intento de lograr frecuencia medias de cargas de trabajo reales
#       - ej: Dhrystone, Whetstone (Basados en programas cientificos)

# * Kernels (nucleos)
#       - Segmentos criticos en tiempo de programas reales
#       - Se prestan para "optimizaciones" de compiladores
#       - Ej: Lazos de Livermore (21 fragmentos de lazos pequeños)

# * Programas reales
#       - Ej: gcc (compilador c), spice


# Benchmark exitoso: SPEC

# * 5 compañias fundaron en 1988 un comite de evaluacion denominado:
#       - Systems Performance Evaluation Committee (SPEC):
#       - Sun, MIPS, HP, Apollo, DEC (fundadores)

# * Objetivo: Crear una lista standard de programas, realizar tests y reportes: algunos programas reales, incluso con llamada a Sistemas Operativos y algunos I/O

# * Los standards estan en constante evolucion de acuerdo a la evolucion del mercado: 1991, 1992, 1995, 2000 ...

# * La tarea del comite no es nada facil


# Primera ronda SPEC

# * 1989; 10 programas, un unico numero para resumir la performance
# * Un programa: 99% del tiempo en una sola linea de codigo.
# * Nuevos compiladores pudieron mejorar drasticamente el numero


# Ley de Amdahl

# * Evalua el efecto total de una mejora en una parte de una tarea.
#       - Incremento en velocidad por la mejora E:

#                  tiempo_ej sin E       Performance con E
# Aceleracion(E) = ----------------- = ---------------------
#                  tiempo_ej con E       Performance sin E

# * Supongamos que la mejora E acelera una parte F de la tarea en un factor S y que no influye en el resto de la misma:

#  Tiempo_ej(con E) = ((1 - F) + F/S) * Tiempo_ej(sin E)

# aceleracion(con E) = 1 / [(1 - F) + F/S]


# Resumen

# CPU time      seconds       instructions       cycles         seconds
#           =  ---------  =  -------------  x  -----------  x  ---------
#               program        program         instruction       cycle

# * El tiempo es la medida de la performance de una computadora

# * Se puede crear bueno productos cuando se parte de:
#       - Buenos benchmarks
#       - Formas adecuadas de generar indicadores de varios benchmarks

# * Si no hay buenos benchmarks e indicadores, entonces en la eleccion entre mejorar productos y mejorar ventas:
#       - Las ventas siempre ganan

# * Recordar Ley de Amdahl: incremento en velocidad esta limitado por la parte no mejorada de una tarea


# Recordar

# * La performance siempre es especifica para un programa dado
#       - Su tiempo de ejecuccion

# * Para una determinada maquina, se puede mejorar performance si:
#       - Mejora el ciclo de reloj (sin que haya efectos adversos en CPI)
#       - Mejorar en la organizacion del CPU que baje el CPI
#       - Mejorar compiladores para bajar CPI y/o numero de instrucciones

# * Pifia: Esperar que la mejora en un aspecto de la performance de una maquina afecte en igual medida la performance total. (MIPS, MFLOPS, Ahmdal)

# * No hay que creer siempre en lo que se lee, cuidado