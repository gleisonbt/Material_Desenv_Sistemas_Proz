Algoritmo "Calculadora_IMC"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Gleison Brito
// Autor(a)    : Gleison Brito
// Data atual  : 13/09/2023
Var
// Se��o de Declara��es das vari�veis 
   peso, altura, imc: real
   operacao: inteiro
   status: caracter

Inicio
   escreval("*=============================================*")
   escreval("*======   Algoritmo Calculadora de IMC   =====*")
   escreval("*=============================================*")
   
   escreva("Informe o peso em Kg......: ")
   leia(peso)
   escreva("Informe a altura em M.....: ")
   leia(altura)
   
   imc <- peso/(altura*altura)

   escreval("*=============================================*")
   escreval("* Sua classificacao �...: ")
   
   se imc < 18.5 entao
       status <- "Abaixo do peso"
   senao
       se imc < 24.9 entao
            status <- "Peso nomal"
       senao
            se imc < 29.9 entao
               status <- "Sobrepeso"
            senao
               status <- "Obeso"
            fimse
       fimse
   fimse


   
escreval(" ______________ ")
escreval("||            ||")
escreval("||", status)
escreval("||            ||")
escreval("||____________||")
escreval("|______________|")
escreval(" \\############\\")
escreval("  \\############\\")
escreval("   \      ____    \")
escreval("    \_____\___\____\ � G. Brito")
   
escreval("*=============================================*")

Fimalgoritmo