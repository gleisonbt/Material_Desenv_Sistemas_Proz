Algoritmo "questao 12"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Gleison Brito
// Autor(a)    : Gleison Brito
// Data atual  : 13/09/2023
Var
   a, b, c:inteiro


Inicio
   leia(a, b, c)
   
   se (a < b + c) e (b < a + c) e (c < a + b) entao
      escreva("O tri�ngulo informado �: ")
      se (a = b) e (b = c) entao
         escreval("Equil�tero")
      senao
           se (a = b) ou (a = c) ou (b = c) entao
                 escreval("Is�celes")
              senao
                 escreval("Escaleno")
           fimse
      fimse
   senao
      escreva("N�o � um tri�ngulo")
   fimse


Fimalgoritmo