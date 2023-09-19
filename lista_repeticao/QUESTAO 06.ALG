Algoritmo "questao 06"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Gleison Brito
// Autor(a)    : Gleison Brito
// Data atual  : 19/09/2023
Var
// Seção de Declarações das variáveis 
   num, maior, menor:inteiro


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
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