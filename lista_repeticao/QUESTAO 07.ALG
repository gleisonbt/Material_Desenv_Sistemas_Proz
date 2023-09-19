Algoritmo "questao 07"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Gleison Brito
// Autor(a)    : Gleison Brito
// Data atual  : 19/09/2023
Var
// Seção de Declarações das variáveis 
    num, contImpar, contPar:inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
    repita
        se num mod 2 = 0 entao
           contPar <- contPar + 1
        senao
           contImpar <- contImpar + 1
        fimse
    ate(num <= 0)

Fimalgoritmo