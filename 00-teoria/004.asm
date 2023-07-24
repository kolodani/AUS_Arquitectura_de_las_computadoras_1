# Logica Combinacional

# Existen memorias en los circuitos, la salida depende de las entradas y del estado del sisitema (historia, memoria)

# Logica Secuencial

# Flip Flops
# Elemento basico de memoria
# Almacena un bit
# Asincronico: No posee reloj, las transiciones se dan tan pronto como cambian las entradas (SR)
# Sincronico: Poseen una señal de reloj que habilita las transiciones, necesario para evitar situaciones de carrera y controlar el momento de las transiciones
# Nivel: los cambios se dan en un nivel, alto o bajo (SR)
# Flanco: Los cambios se dan en un flaco, ascendente o descendente (JK, D, T)

# Flip Flop SR asincronico
# | Qt | St | Rt |   Q(t+1)   |
# | 0  | 0  | 0  | 0          |
# | 0  | 0  | 1  | 0          |
# | 0  | 1  | 0  | 0          |
# | 0  | 1  | 1  |(disallowed)|
# | 1  | 0  | 0  | 1          |
# | 1  | 0  | 1  | 0          |
# | 1  | 1  | 0  | 1          |
# | 1  | 1  | 1  |(disallowed)|

# Flip Flop SR sincronico
# | S | R | Q(t+1) |
# | 0 | 0 | Q(t)   |
# | 0 | 1 | 0      |
# | 1 | 0 | 1      |
# | 1 | 1 | -      |

# Flip Flop SR sincronico por nivel alto
# | Clk | S | R | Q(t+1) |
# |alto | 0 | 0 | Q(t)   |
# |alto | 0 | 1 | 0      |
# |alto | 1 | 0 | 1      |
# |alto | 1 | 1 | -      |
# |otro | - | - | -      |

# Flip Flop JK sincronico de flanco descendente
# | Clk | J | K | Q(t+1) |
# |desc | 0 | 0 | Q(t)   |
# |desc | 0 | 1 | 0      |
# |desc | 1 | 0 | 1      |
# |desc | 1 | 1 | ~Q(t)  |
# |otro | * | * | Q(t)   |

# Flip Flop D sincronico de flanco descendente (FF JK con J = K')
# | Clk | D | Q(t+1) |
# |desc | 0 | 0      |
# |desc | 1 | 1      |
# |otro | * | Q(t)   |

# Flip Flop T sincronico de flanco descendente (FF JK con J = K)
# | Clk | T | Q(t+1) |
# |desc | 0 | Q(t)   |
# |desc | 1 | ~Q(t)  |
# |otro | * | Q(t)   |
