Algoritmo "questao 12"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Gleison Brito
// Autor(a)    : Gleison Brito
// Data atual  : 13/09/2023
Var
   a, b, c:inteiro


Inicio
   leia(a, b, c)
   
   se (a < b + c) e (b < a + c) e (c < a + b) entao
      escreva("O triângulo informado é: ")
      se (a = b) e (b = c) entao
         escreval("Equilátero")
      senao
           se (a = b) ou (a = c) ou (b = c) entao
                 escreval("Isóceles")
              senao
                 escreval("Escaleno")
           fimse
      fimse
   senao
      escreva("Não é um triângulo")
   fimse


Fimalgoritmo