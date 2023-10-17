Algoritmo "questao 02"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Gleison Brito
// Autor(a)    : Gleison Brito
// Data atual  : 13/09/2023
Var
   cont, soma, numero: inteiro


Inicio
      cont <- 0
      soma <- 0
      leia(numero)
      enquanto numero > 0 faca
               soma <- soma + numero
               cont <- cont + 1
               leia(numero)
      fimenquanto

      escreva(soma/cont)

Fimalgoritmo