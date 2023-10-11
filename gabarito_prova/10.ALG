Algoritmo "10"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Gleison Brito
// Data atual  : 11/10/2023
Var
sequencia: vetor[0..10] de caractere
sequencia_comprimida: vetor[0..10] de caractere
tamanho_seq_comprimida:inteiro
cont_valor, cont_item:inteiro
valor_analisado:caractere

Inicio
sequencia[0] <- "a"
sequencia[1] <- "a"
sequencia[2] <- "b"
sequencia[3] <- "c"
sequencia[4] <- "c"
sequencia[5] <- "c"
sequencia[6] <- "c"
sequencia[7] <- "c"
sequencia[8] <- "a"
sequencia[9] <- "a"
sequencia[10] <- "a"

cont_valor <- 1  //conta quantas vezes um valor aparece na lista (o n?mero m?nimo ? 1)
valor_analisado <- sequencia[0]
tamanho_seq_comprimida <- 0
sequencia_comprimida[tamanho_seq_comprimida] <- valor_analisado //adiciona na lista comprimida o primeiro valor para comparar com os pr?ximos

para cont_item de 0 ate 9 faca
    se sequencia[cont_item] = sequencia[cont_item + 1] entao //compara cada valor com seu subsequente, i.e, ? repetido
        cont_valor <- cont_valor + 1 //incrementa a contagem do valor repetido
    senao
        tamanho_seq_comprimida <- tamanho_seq_comprimida + 1
        sequencia_comprimida[tamanho_seq_comprimida] <- numpcarac(cont_valor)
        valor_analisado <- sequencia[cont_item + 1] //se o valor ? diferente do subsequente o valor analisado passa a ser o subsequente
        tamanho_seq_comprimida <- tamanho_seq_comprimida + 1
        sequencia_comprimida[tamanho_seq_comprimida] <- valor_analisado
        cont_valor <- 1 //reinicia a contagem
    fimse
fimpara

tamanho_seq_comprimida <- tamanho_seq_comprimida + 1
sequencia_comprimida[tamanho_seq_comprimida] <- numpcarac(cont_valor)  //adiciona na lista a ultima contagem

para cont_item de 0 ate tamanho_seq_comprimida  faca
  escreva(sequencia_comprimida[cont_item], " ")
fimpara



Fimalgoritmo