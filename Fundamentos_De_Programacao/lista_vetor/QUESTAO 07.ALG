Algoritmo "questao 07"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Gleison Brito
// Autor(a)    : Gleison Brito
// Data atual  : 13/09/2023
Var
   cont: inteiro
   A: vetor[0..29] de inteiro
   media: real
   maior, menor, contMaiorQMedia: inteiro
Inicio
   para cont de 0 ate 9 faca
        aleatorio on
        leia(A[cont])
        aleatorio off
   fimpara

   escreva("Pares: ")
   para cont de 0 ate 29 faca
        se A[cont] mod 2 = 0 entao
           escreva(A[cont], " ")
        fimse
   fimpara

   escreval("")
   escreval("---------------------------------")
   maior <- A[0]
   menor <- A[0]
   para cont de 1 ate 29 faca
        se A[cont] > maior entao
           maior <- A[cont]
        senao
           menor <- A[cont]
        fimse
   fimpara
   escreval("Maior: ", maior)
   escreval("Menor: ", menor)
   escreval("---------------------------------")

   media <- 0
   para cont de 0 ate 29 faca
      media <- media + A[cont]
   fimpara
   media <- media/29

   contMaiorQMedia <- 0
   para cont de 0 ate 29 faca
      se A[cont] > media entao
          contMaiorQMedia <- contMaiorQMedia + 1
      fimse
   fimpara
   
   escreval("Qtde de numeros >= ", media, ": ", contMaiorQMedia)
   
Fimalgoritmo