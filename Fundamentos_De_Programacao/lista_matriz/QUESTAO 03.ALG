Algoritmo "questao 03"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Gleison Brito
// Autor(a)    : Gleison Brito
// Data atual  : 25/09/2023
Var
// Se��o de Declara��es das vari�veis 
   A:vetor[0..3, 0..3] de inteiro
   linha, coluna: inteiro
   maior, linhaMaior, colunaMaior: inteiro


Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
   para linha de 0 ate 3 faca
      para coluna de 0 ate 3 faca
          aleatorio on
          leia(A[linha, coluna])
          aleatorio off
      fimpara
   fimpara

   para linha de 0 ate 3 faca
      para coluna de 0 ate 3 faca
          escreva(A[linha, coluna])
      fimpara
      escreval("")
   fimpara
   
   maior <- A[0,0]
   para linha de 0 ate 3 faca
      para coluna de 0 ate 3 faca
          se A[linha, coluna] > maior entao
              maior <- A[linha, coluna]
              linhaMaior <- linha
              colunaMaior <- coluna
          fimse
      fimpara
   fimpara
   
   escreval("Posicao do maior: ", linhaMaior, ",", colunaMaior)

Fimalgoritmo