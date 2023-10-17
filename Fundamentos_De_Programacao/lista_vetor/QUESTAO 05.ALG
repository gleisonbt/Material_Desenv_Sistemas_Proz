Algoritmo "questao 05"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Gleison Brito
// Autor(a)    : Gleison Brito
// Data atual  : 13/09/2023
Var
   cont, soma: inteiro
   A: vetor[0..19] de inteiro

Inicio
   para cont de 0 ate 19 faca
        aleatorio on
        leia(A[cont])
        aleatorio off
   fimpara

   soma <- 0
   para cont de 0 ate 9 faca
       soma <- soma + A[cont]
   fimpara
   
   escreval(soma)

Fimalgoritmo