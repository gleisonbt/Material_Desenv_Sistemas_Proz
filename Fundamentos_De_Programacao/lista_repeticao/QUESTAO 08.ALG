Algoritmo "questao 08"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Gleison Brito
// Autor(a)    : Gleison Brito
// Data atual  : 19/09/2023
Var
// Se��o de Declara��es das vari�veis
    a, b, temp: inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc...
   leia(a, b)
   repita
      temp <- a
      a <- b
      b <- temp mod a
   ate(b = 0)
   
   escreval(a)
Fimalgoritmo