Algoritmo "questao 04"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Gleison Brito
// Autor(a)    : Gleison Brito
// Data atual  : 19/09/2023
Var
// Se��o de Declara��es das vari�veis
numSecreto, palpite:inteiro


Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
numSecreto <- randi(10)

repita
    escreva("Informe um numero: ")
    leia(palpite)
    se palpite < numSecreto entao
        escreval("Chute um numero maior")
    senao
        se palpite > numSecreto entao
             escreval("Chute um numero menor")
        senao
             escreval("Acertou!")
        fimse
    fimse
ate(numSecreto = palpite)

Fimalgoritmo