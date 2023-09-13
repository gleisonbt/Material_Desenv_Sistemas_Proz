Algoritmo "questao 07"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Gleison Brito
// Autor(a)    : Gleison Brito
// Data atual  : 13/09/2023
Var
   salario:real


Inicio
      leia(salario)
      se salario < 1500 entao
            salario <- salario + (salario*10/100)
      senao
            salario <- salario + (salario*5/100)
      fimse
      escreva(salario)

Fimalgoritmo