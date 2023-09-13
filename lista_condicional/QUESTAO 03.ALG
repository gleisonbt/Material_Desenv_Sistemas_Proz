Algoritmo "questao 03"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Gleison Brito
// Autor(a)    : Gleison Brito
// Data atual  : 13/09/2023
Var
   num1, num2, num3, media: real

Inicio
      leia(num1)
      leia(num2)
      leia(num3)

      media <- (num1 + num2 + num3)/3
      
      se media >= 7 entao
         escreva("Aprovado")
      senao
         escreva("Reprovado")
      fimse

Fimalgoritmo