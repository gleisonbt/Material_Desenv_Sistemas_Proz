Algoritmo "questao 02"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Gleison Brito
// Autor(a)    : Gleison Brito
// Data atual  : 25/09/2023
Var
// Se��o de Declara��es das vari�veis 
   A:vetor[0..3, 0..3] de inteiro
   linha, coluna: inteiro


Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
   para linha de 0 ate 3 faca
      para coluna de 0 ate 3 faca
          A[linha, coluna] <- linha * coluna
      fimpara
   fimpara

   para linha de 0 ate 3 faca
      para coluna de 0 ate 3 faca
          escreva(A[linha, coluna])
      fimpara
      escreval("")
   fimpara

Fimalgoritmo