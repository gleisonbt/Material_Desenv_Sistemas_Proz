Algoritmo "questao 04"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Gleison Brito
// Autor(a)    : Gleison Brito
// Data atual  : 19/09/2023
Var
// Seção de Declarações das variáveis
numSecreto, palpite:inteiro


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
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