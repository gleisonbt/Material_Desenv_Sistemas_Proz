Algoritmo "questao 04"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 27/09/2023
Var
   // Se��o de Declara��es das vari�veis
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
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   iniciaMatriz
   imprimaMatriz
   soma <- somaDiagonalPrincipal
   escreval(soma)

Fimalgoritmo