"""
Funcao que verifica se uma lista de números é simétrica
"""

def verifica_simetria(lista):
    cont_esquerda = 0
    cont_direita = len(lista) - 1
    simetrico = True

    while cont_esquerda <= cont_direita:
        if lista[cont_esquerda] != lista[cont_direita]:
            simetrico = False
            break
        cont_esquerda += 1
        cont_direita -= 1
    if simetrico: 
        print("É simétrico!")
    else:
        print("Não é simétrico!") 

lista = [1,2,3,4,5]
verifica_simetria(lista)

lista = [1,2,3,2,1]
verifica_simetria(lista)