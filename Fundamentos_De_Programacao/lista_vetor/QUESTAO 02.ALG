Algoritmo "questao 02"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Gleison Brito
// Autor(a)    : Gleison Brito
// Data atual  : 19/09/2023
Var
// Seção de Declarações das variáveis
   A: vetor[0..7] de inteiro
   B: vetor[0..7] de inteiro
   cont:inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
   para cont de 0 ate 7 faca
       aleatorio on
       leia(A[cont])
       aleatorio off
       B[cont] <- A[cont] * 3
   fimpara
   
   para cont de 0 ate 7 faca
       escreva(B[cont], " ")
   fimpara


Fimalgoritmo