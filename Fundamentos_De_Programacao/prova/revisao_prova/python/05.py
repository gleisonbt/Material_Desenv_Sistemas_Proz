"""
Bônus extra:
Você foi designado para criar um algoritmo que realiza a compressão
de uma sequência de números inteiros em um formato específico.
A compressão consiste em representar uma sequência de números repetidos
indicando o número e a quantidade de repetições. Por exemplo, a sequência
[1, 1, 1, 2, 2, 3, 4, 4, 4, 4] comprimida fica [1, 3, 2, 2, 3, 1, 4, 4].
Escreva um algoritmo que comprima uma sequência de números inteir\os, onde a
sequência está armazenada em um vetor/lista. Seu algoritmo deve receber uma
sequência de números em um vetor/lista e exibir na tela a sequência comprimida.
"""
sequencia = [1, 1, 1, 2, 2, 3, 4, 4, 4, 4]
sequencia_comprimida = []

cont_valor = 1    #conta quantas vezes um valor aparece na lista (o número mínimo é 1)
valor_analisado = sequencia[0]
sequencia_comprimida.append(valor_analisado)   #adiciona na lista comprimida o primeiro valor para comparar com os próximos
for cont_item in range(0, len(sequencia) - 1):
    if sequencia[cont_item] == sequencia[cont_item + 1]: # compara cada valor com seu subsequente, i.e, é repetido
        cont_valor += 1    # incrementa a contagem do valor repetido
    else:
        sequencia_comprimida.append(cont_valor)  
        valor_analisado = sequencia[cont_item + 1] #se o valor é diferente do subsequente o valor analisado passa a ser o subsequente
        sequencia_comprimida.append(valor_analisado)
        cont_valor = 1  #reinicia a contagem
sequencia_comprimida.append(cont_valor)  #adiciona na lista a ultima contagem

print(sequencia_comprimida)
    