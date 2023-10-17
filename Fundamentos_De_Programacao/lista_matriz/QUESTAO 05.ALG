Algoritmo "questao 05"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 27/09/2023
Var
   // Seção de Declarações das variáveis
   A: vetor[0..2, 0..5] de inteiro
   soma: inteiro
   media: real

procedimento iniciaMatriz
var
   linha, coluna: inteiro

inicio
   para linha de 0 ate 2 faca
      para coluna de 0 ate 5 faca
         aleatorio on
         leia(A[linha, coluna])
         aleatorio off
      fimpara
   fimpara

fimprocedimento

funcao somaColunasImpares:inteiro
var
   linha, coluna, soma: inteiro

inicio
   soma <- 0
   para linha de 0 ate 2 faca
      para coluna de 1 ate 5 passo 2 faca
         soma <- soma + A[linha, coluna]
      fimpara
   fimpara
   retorne soma
fimfuncao

funcao mediaColunas2e4: real
var
   linha, coluna: inteiro
   media:real

inicio
   media <- 0
   para linha de 0 ate 2 faca
      media <- media + A[linha, 2] + A[linha, 4]
   fimpara
   media <- media/6

   retorne media

fimfuncao

procedimento imprimaMatriz
var
   linha, coluna: inteiro

inicio
   para linha de 0 ate 2 faca
      para coluna de 0 ate 5 faca
         escreva(A[linha, coluna])
      fimpara
      escreval("")
   fimpara
fimprocedimento

procedimento somaColunas
var
   linha, coluna: inteiro

inicio
   para linha de 0 ate 2 faca
      A[linha, 5] <- A[linha, 0] + A[linha, 1]
   fimpara
fimprocedimento


Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   iniciaMatriz
   imprimaMatriz
   soma <- somaColunasImpares
   escreval(soma)
   media <- mediaColunas2e4
   escreval(media)
   somaColunas
   imprimaMatriz
   
Fimalgoritmo