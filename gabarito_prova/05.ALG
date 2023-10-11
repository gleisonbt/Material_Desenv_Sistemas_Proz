Algoritmo "05"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Gleioson Brito
// Data atual  : 11/10/2023
Var
matriz: vetor[0..1,0..2] de inteiro
cont_linha, cont_coluna: inteiro
cont_valor:inteiro

Inicio
para cont_linha de 0 ate 1 faca
     para cont_coluna de 0 ate 2 faca
          matriz[cont_linha, cont_coluna] <- randi(3)
     fimpara
fimpara

//imprime a matriz
para cont_linha de 0 ate 1 faca
     para cont_coluna de 0 ate 2 faca
          escreva(matriz[cont_linha, cont_coluna])
     fimpara
     escreval("")
fimpara

//conta as ocorrencias do valor 2
cont_valor <- 0
para cont_linha de 0 ate 1 faca
     para cont_coluna de 0 ate 2 faca
          se matriz[cont_linha, cont_coluna] = 2 entao
             cont_valor <- cont_valor + 1
          fimse
     fimpara
fimpara

escreval(cont_valor)

Fimalgoritmo