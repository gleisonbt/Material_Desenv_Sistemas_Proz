Algoritmo "questao 04"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 27/09/2023
Var
   // Seção de Declarações das variáveis
   A: vetor[0..2, 0..2] de inteiro
   soma:inteiro

procedimento iniciaMatriz
var
   linha, coluna: inteiro

inicio
   para linha de 0 ate 2 faca
      para coluna de 0 ate 2 faca
         aleatorio on
         leia(A[linha, coluna])
         aleatorio off
      fimpara
   fimpara

fimprocedimento

procedimento imprimaMatriz
var
   linha, coluna: inteiro

inicio
   para linha de 0 ate 2 faca
      para coluna de 0 ate 2 faca
         escreva(A[linha, coluna])
      fimpara
      escreval("")
   fimpara
fimprocedimento

funcao somaDiagonalPrincipal:inteiro
var
   linha, coluna, soma: inteiro

inicio
   soma <- 0
   para linha de 0 ate 2 faca
      para coluna de 0 ate 2 faca
         se linha = coluna entao
            soma <- soma + A[linha, coluna]
         fimse
      fimpara
   fimpara
   
   retorne soma
fimfuncao

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   iniciaMatriz
   imprimaMatriz
   soma <- somaDiagonalPrincipal
   escreval(soma)

Fimalgoritmo