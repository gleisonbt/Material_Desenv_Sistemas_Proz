Algoritmo "questao 06"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Gleison Brito
// Autor(a)    : Gleison Brito
// Data atual  : 13/09/2023
Var
   cont, temp: inteiro
   A: vetor[0..9] de inteiro

Inicio
   para cont de 0 ate 9 faca
        aleatorio on
        leia(A[cont])
        aleatorio off
   fimpara

   para cont de 0 ate 4 faca
       temp <- A[cont]
       A[cont] <- A[9 - cont]
       A[9 - cont] <- temp
   fimpara
   
   para cont de 0 ate 9 faca
        escreva(A[cont], " ")
   fimpara

Fimalgoritmo