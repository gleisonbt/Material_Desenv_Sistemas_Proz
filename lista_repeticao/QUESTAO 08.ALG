Algoritmo "questao 08"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Gleison Brito
// Autor(a)    : Gleison Brito
// Data atual  : 19/09/2023
Var
// Seção de Declarações das variáveis
    a, b, temp: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
   leia(a, b)
   repita
      temp <- a
      a <- b
      b <- temp mod a
   ate(b = 0)
   
   escreval(a)
Fimalgoritmo