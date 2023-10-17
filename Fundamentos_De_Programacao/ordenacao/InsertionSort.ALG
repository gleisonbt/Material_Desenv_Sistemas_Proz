Algoritmo "insertion sort"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Gleison Brito
// Autor(a)    : Gleison Brito
// Data atual  : 27/09/2023
Var
   // Seção de Declarações das variáveis
   vet: vetor[0..5] de inteiro
   cont1, cont2, eleito:inteiro


Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   para cont1 de 0 ate 5 faca
      aleatorio on
      leia(vet[cont1])
      aleatorio off
   fimpara

   para cont1 de 0 ate 5 faca
      escreva(vet[cont1])
   fimpara

   para cont1 de 1 ate 5 faca
       eleito <- vet[cont1]
       cont2 <- cont1 - 1
       
       enquanto (cont2 >= 0) e (eleito < vet[cont2]) faca
            vet[cont2 + 1] <- vet[cont2]
            cont2 <- cont2 - 1
       fimenquanto
       vet[cont2 + 1] <- eleito
   fimpara

   escreval("")
   para cont1 de 0 ate 5 faca
      escreva(vet[cont1])
   fimpara

Fimalgoritmo
