Algoritmo "05"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Gleison Brito
// Bônus extra:
//Você foi designado para criar um algoritmo que realiza a compressão
//de uma sequência de números inteiros em um formato específico.
//A compressão consiste em representar uma sequência de números repetidos
//indicando o número e a quantidade de repetições. Por exemplo, a sequência
//[1, 1, 1, 2, 2, 3, 4, 4, 4, 4] comprimida fica [1, 3, 2, 2, 3, 1, 4, 4].
//Escreva um algoritmo que comprima uma sequência de números inteir\os, onde a
//sequência está armazenada em um vetor/lista. Seu algoritmo deve receber uma
//sequência de números em um vetor/lista e exibir na tela a sequência comprimida.
// Autor(a)    : Gleison Brito
// Data atual  : 10/10/2023
Var
sequencia: vetor[0..9] de inteiro
sequencia_comprimida: vetor[0..9] de inteiro
tamanho_seq_comprimida:inteiro
cont_valor, cont_item:inteiro
valor_analisado:inteiro

Inicio
sequencia[0] <- 1
sequencia[1] <- 1
sequencia[2] <- 1
sequencia[3] <- 2
sequencia[4] <- 2
sequencia[5] <- 3
sequencia[6] <- 4
sequencia[7] <- 4
sequencia[8] <- 4
sequencia[9] <- 4


cont_valor <- 1  //conta quantas vezes um valor aparece na lista (o número mínimo é 1)
valor_analisado <- sequencia[0]
tamanho_seq_comprimida <- 0
sequencia_comprimida[tamanho_seq_comprimida] <- valor_analisado //adiciona na lista comprimida o primeiro valor para comparar com os próximos

para cont_item de 0 ate 8 faca
    se sequencia[cont_item] = sequencia[cont_item + 1] entao //compara cada valor com seu subsequente, i.e, é repetido
        cont_valor <- cont_valor + 1 //incrementa a contagem do valor repetido
    senao
        tamanho_seq_comprimida <- tamanho_seq_comprimida + 1
        sequencia_comprimida[tamanho_seq_comprimida] <- cont_valor
        valor_analisado <- sequencia[cont_item + 1] //se o valor é diferente do subsequente o valor analisado passa a ser o subsequente
        tamanho_seq_comprimida <- tamanho_seq_comprimida + 1
        sequencia_comprimida[tamanho_seq_comprimida] <- valor_analisado
        cont_valor <- 1 //reinicia a contagem
    fimse
fimpara

tamanho_seq_comprimida <- tamanho_seq_comprimida + 1
sequencia_comprimida[tamanho_seq_comprimida] <- cont_valor  //adiciona na lista a ultima contagem

para cont_item de 0 ate tamanho_seq_comprimida  faca
  escreva(sequencia_comprimida[cont_item], " ")
fimpara



Fimalgoritmo