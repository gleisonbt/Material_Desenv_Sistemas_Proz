Algoritmo "questao 06"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Gleison Brito
// Autor(a)    : Gleison Brito
// Data atual  : 19/09/2023
Var
// Se��o de Declara��es das vari�veis 
   num, maior, menor:inteiro


Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
   leia(num)
   maior <- num
   menor <- num
   enquanto num > 0 faca
        se num > maior entao
             maior <- num
        senao
             menor <- num
        fimse
        leia(num)
   fimenquanto
   
   escreval("maior: ", maior)
   escreval("menor: ", menor)

Fimalgoritmo