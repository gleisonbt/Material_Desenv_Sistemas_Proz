Algoritmo "03"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Gleison Brito
// Informar a categoria de massa corporal de acordo
// com o IMC
// Autor(a)    : Gleison Brito
// Data atual  : 10/10/2023
Var
altura, peso, imc:real


Inicio
escreva("Informe o a altura: ")
leia(altura)
escreva("Informe o peso: ")
leia(peso)

imc <- peso/(altura*altura)

se imc <= 18.5 entao
   escreval("Abaixo do peso")
senao
     se imc <= 24.9 entao
        escreval("Peso normal")
     senao
          se imc <= 29.9 entao
             escreval("Sobrepeso")
          senao
               escreval("Obeso")
          fimse
     fimse
fimse

Fimalgoritmo