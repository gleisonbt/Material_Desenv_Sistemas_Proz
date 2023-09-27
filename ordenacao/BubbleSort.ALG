Algoritmo "bubble sort"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 27/09/2023
Var
   // Seção de Declarações das variáveis
   vet: vetor[0..5] de inteiro
   cont1, cont2, troca: inteiro

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


   para cont1 de 0 ate 5 faca
      para cont2 de cont1 + 1 ate 5 faca
         se vet[cont1] > vet[cont2] entao
            troca <- vet[cont1]
            vet[cont1] <- vet[cont2]
            vet[cont2] <- troca
         fimse
      fimpara
   fimpara

   escreval("")
   escreval("--------------------")
   para cont1 de 0 ate 5 faca
      escreva(vet[cont1], " ")
   fimpara


Fimalgoritmo