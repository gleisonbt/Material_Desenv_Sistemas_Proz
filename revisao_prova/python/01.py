import random

"""
Inicializar matriz 2x3 com valores aleatórios entre 0 e 2
Percorrer a matriz e contar quantas células tem o valor 1
"""
matriz = [[],[]]
for cont_linha in range(0,2):
    for cont_coluna in range(0,3):
        matriz[cont_linha].append(random.randint(0,2))

"""
imprime a matriz
"""
for linha in matriz:
    print(linha)

"""
conta células com valor 1
"""
cont_valor = 0
for linha in matriz:
    for elemento in linha:
        if elemento == 1:
            cont_valor += 1
print(cont_valor)