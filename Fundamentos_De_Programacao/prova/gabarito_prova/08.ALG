Algoritmo "08"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Gleison Brito
// Data atual  : 11/10/2023
Var
   idade:inteiro


Inicio
   escreva("Informe  idade: ")
   leia(idade)

   se idade < 0 entao
      escreval("Idade inv�lida")
   senao
      se idade <= 12 entao
         escreval("crian�a")
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