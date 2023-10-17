Algoritmo "08"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Gleison Brito
// Data atual  : 11/10/2023
Var
   idade:inteiro


Inicio
   escreva("Informe  idade: ")
   leia(idade)

   se idade < 0 entao
      escreval("Idade inválida")
   senao
      se idade <= 12 entao
         escreval("criança")
      senao
         se imc <= 17 entao
            escreval("adolescente")
         senao
            se imc <= 59 entao
               escreval("adulto")
            senao
               escreval("idoso")
            fimse
         fimse
      fimse
   fimse

Fimalgoritmo