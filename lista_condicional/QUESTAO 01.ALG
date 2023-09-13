Algoritmo "questao 01"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Gleison Brito
// Autor(a)    : Gleison Brito
// Data atual  : 13/09/2023
Var
   num1, num2: inteiro


Inicio
      leia(num1)
      leia(num2)
      se num1 > num2 entao
         escreva(num1, "é o maior")
      senao
           se num2 > num1 entao
              escreva(num2, " é o maior")
           senao
                escreva("Os numeros inseridos são iguais")
           fimse
      fimse


Fimalgoritmo