def verifica_palindromo(lista):
    cont_esquerda = 0
    cont_direita = len(lista) - 1
    simetrico = True

    while cont_esquerda <= cont_direita:
        if lista[cont_esquerda] != lista[cont_direita]:
            simetrico = False
            break
        cont_esquerda += 1
        cont_direita -= 1
    return simetrico

lista = ['a','r','a','r','a']
print(verifica_palindromo(lista))

lista = ['b','a','n','a','n','a']
print(verifica_palindromo(lista))