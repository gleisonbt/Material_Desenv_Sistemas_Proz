Algoritmo "questao 01"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Gleison Brito
// Autor(a)    : Gleison Brito
// Data atual  : 25/09/2023
Var
// Se��o de Declara��es das vari�veis 
   A:vetor[0..4, 0..4] de inteiro
   linha, coluna: inteiro


Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
   para linha de 0 ate 4 faca
      para coluna de 0 ate 4 faca
          se linha = coluna entao
              A[linha, coluna] <- 1
          senao
              A[linha, coluna] <- 0
          fimse
      fimpara
   fimpara

   para linha de 0 ate 4 faca
      para coluna de 0 ate 4 faca
          escreva(A[linha, coluna])
      fimpara
      escreval("")
   fimpara

Fimalgoritmo