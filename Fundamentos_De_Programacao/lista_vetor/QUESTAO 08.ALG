Algoritmo "questao 08"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Gleison Brito
// Autor(a)    : Gleison Brito
// Data atual  : 13/09/2023
Var
   cont, A, B, C, contA, contB, contC: inteiro
   vetorNumeros: vetor[0..9] de inteiro

Inicio
    aleatorio on
        leia(A, B, C)
    aleatorio off

   para cont de 0 ate 9 faca
        aleatorio on
        leia(vetorNumeros[cont])
        aleatorio off
   fimpara

   contA <- 0
   contB <- 0
   contC <- 0
   para cont de 0 ate 9 faca
        escolha vetorNumeros[cont]
            caso A
                contA <- contA + 1
            caso B
                contB <- contB + 1
            caso C
                contC <- contC + 1
        fimescolha
   fimpara
   
   escreval(contA)
   escreval(contB)
   escreval(contC)
Fimalgoritmo