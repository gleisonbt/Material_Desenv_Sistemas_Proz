sequencia = ['a', 'a', 'b', 'c', 'c', 'c', 'c', 'c', 'a', 'a', 'a']
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