Algoritmo "questao 07"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Gleison Brito
// Autor(a)    : Gleison Brito
// Data atual  : 27/09/2023
Var
   // Seção de Declarações das variáveis
   A: vetor[0..2, 0..2] de inteiro
   B: vetor[0..2, 0..2] de inteiro
   SOMA_AB: vetor[0..2, 0..2] de inteiro
   DIFERENCA_AB: vetor[0..2, 0..2] de inteiro
   valor: inteiro

procedimento inicializaMatrizesAB
var
   linha, coluna:inteiro
inicio
   para linha de 0 ate 2 faca
      para coluna de 0 ate 2 faca
         aleatorio on
         leia(A[linha, coluna])
         leia(B[linha, coluna])
         aleatorio off
      fimpara
   fimpara

fimprocedimento

procedimento imprimeMatrizesAB
var
   linha, coluna:inteiro
inicio
   para linha de 0 ate 2 faca
      para coluna de 0 ate 2 faca
         escreva(A[linha, coluna])
      fimpara
      escreval("")
   fimpara
   escreval("-------------------")
   para linha de 0 ate 2 faca
      para coluna de 0 ate 2 faca
         escreva(B[linha, coluna])
      fimpara
      escreval("")
   fimpara

fimprocedimento

procedimento imprimeMatrizesSomaDiferencaAB
var
   linha, coluna:inteiro
inicio
   para linha de 0 ate 2 faca
      para coluna de 0 ate 2 faca
         escreva(SOMA_AB[linha, coluna])
      fimpara
      escreval("")
   fimpara
   escreval("-------------------")
   para linha de 0 ate 2 faca
      para coluna de 0 ate 2 faca
         escreva(DIFERENCA_AB[linha, coluna])
      fimpara
      escreval("")
   fimpara
fimprocedimento

procedimento somaEDiferencaMatrizes
var
   linha, coluna:inteiro
inicio
   para linha de 0 ate 2 faca
      para coluna de 0 ate 2 faca
         SOMA_AB[linha, coluna] <- A[linha, coluna] + B[linha, coluna]
         DIFERENCA_AB[linha, coluna] <-  A[linha, coluna] - B[linha, coluna]
      fimpara
   fimpara
fimprocedimento

procedimento somaValor(valor:inteiro)
var
   linha, coluna:inteiro
inicio
   para linha de 0 ate 2 faca
      para coluna de 0 ate 2 faca
         A[linha, coluna] <- A[linha, coluna] + valor
         B[linha, coluna] <-  B[linha, coluna] + valor
      fimpara
   fimpara
fimprocedimento

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   inicializaMatrizesAB
   
   escreval("A e B")
   imprimeMatrizesAB
   escreval("-------------------")
   
   
   
   escreval("SOMA E DIFERENCA")
   somaEDiferencaMatrizes
   imprimeMatrizesSomaDiferencaAB
   escreval("-------------------")

   escreval("Informe um valor: ")
   leia(valor)
   somaValor(valor)
   escreval("A e B modificadas")
   imprimeMatrizesAB
   escreval("-------------------")


Fimalgoritmo