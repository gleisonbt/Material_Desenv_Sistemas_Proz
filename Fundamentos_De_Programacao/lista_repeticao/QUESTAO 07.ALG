Algoritmo "questao 07"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Gleison Brito
// Autor(a)    : Gleison Brito
// Data atual  : 19/09/2023
Var
// Se��o de Declara��es das vari�veis 
    num, contImpar, contPar:inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
    repita
        se num mod 2 = 0 entao
           contPar <- contPar + 1
        senao
           contImpar <- contImpar + 1
        fimse
    ate(num <= 0)

Fimalgoritmo