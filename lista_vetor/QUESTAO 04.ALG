Algoritmo "questao 04"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Gleison Brito
// Autor(a)    : Gleison Brito
// Data atual  : 13/09/2023
Var
   cont: inteiro
   A: vetor[0..14] de inteiro

Inicio
   para cont de 0 ate 14 faca
        aleatorio on
        leia(A[cont])
        aleatorio off
   fimpara

   para cont de 0 ate 9 faca
        se A[cont] >= 10 entao
            escreva(A[cont], " ")
        fimse
   fimpara

Fimalgoritmo