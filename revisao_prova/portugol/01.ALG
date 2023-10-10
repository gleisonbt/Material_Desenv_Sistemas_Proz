Algoritmo "01"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Gleison Brito
//Inicializar matriz 2x3 com valores aleatórios entre 0 e 2
//Percorrer a matriz e contar quantas células tem o valor 1
// Autor(a)    : Gleison Brito
// Data atual  : 10/10/2023
Var
// Seção de Declarações das variáveis 
matriz: vetor[0..1,0..3] de inteiro
cont_linha, cont_coluna: inteiro
cont_valor:inteiro

Inicio

//inicializa a matriz com valores aleatorios
para cont_linha de 0 ate 1 faca
     para cont_coluna de 0 ate 1 faca
          matriz[cont_linha, cont_coluna] <- randi(3)
     fimpara
fimpara

//imprime a matriz
para cont_linha de 0 ate 1 faca
     para cont_coluna de 0 ate 1 faca
          escreva(matriz[cont_linha, cont_coluna])
     fimpara
     escreval("")
fimpara

//conta as ocorrencias do valor 1
para cont_linha de 0 ate 1 faca
     para cont_coluna de 0 ate 1 faca
          se matriz[cont_linha, cont_coluna] = 1 entao
             cont_valor <- cont_valor + 1
          fimse
     fimpara
fimpara

escreval(cont_valor)


Fimalgoritmo