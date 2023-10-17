Algoritmo "questao 09"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Gleison Brito
// Autor(a)    : Gleison Brito
// Data atual  : 19/09/2023
Var
// Seção de Declarações das variáveis 
    num1, num2, temp, limite: inteiro


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
     leia(limite)
     num1 <- 0
     num2 <- 1
     
     escreva(num1, " ")
     enquanto num2 <= limite faca
          escreva(num2, " ")
          temp <- num1
          num1 <- num2
          num2 <- temp + num2
     fimenquanto

Fimalgoritmo