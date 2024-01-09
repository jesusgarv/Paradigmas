import sys

gens = int(sys.argv[1])

# Función lambda que duplica el valor 10000
exponencial = lambda x: 1000 if x == 0 else 1000 * (2**x)

result = list(map(exponencial, range(0, gens + 1)))