Algoritmo "questao 03"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Gleison Brito
// Autor(a)    : Gleison Brito
// Data atual  : 13/09/2023
Var
   cont: inteiro
   A: vetor[0..9] de inteiro

Inicio
   para cont de 0 ate 9 faca
        aleatorio on
        leia(A[cont])
        aleatorio off
   fimpara

   para cont de 0 ate 9 faca
        se A[cont] mod 2 = 0 entao
            escreva(A[cont], " ")
        fimse
   fimpara

Fimalgoritmo