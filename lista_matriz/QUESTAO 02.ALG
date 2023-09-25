Algoritmo "questao 02"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Gleison Brito
// Autor(a)    : Gleison Brito
// Data atual  : 25/09/2023
Var
// Seção de Declarações das variáveis 
   A:vetor[0..3, 0..3] de inteiro
   linha, coluna: inteiro


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
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