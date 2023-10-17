Algoritmo "questao 09"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Gleison Brito
// Autor(a)    : Gleison Brito
// Data atual  : 13/09/2023
Var
 num, cont:inteiro


Inicio
      leia(num)
      cont <- num div 2
      enquanto num mod cont <> 0 faca
          cont <- cont - 1
      fimenquanto

      se cont = 1 entao
         escreva(num, " é primo")
      senao
         escreva(num, " não é primo")
      fimse

Fimalgoritmo