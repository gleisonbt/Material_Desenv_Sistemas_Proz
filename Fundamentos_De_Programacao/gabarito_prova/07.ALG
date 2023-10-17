Algoritmo "07"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Gleison Brito
// Data atual  : 11/10/2023
Var
opcao:inteiro
consumo,tarifa,valor:real

Inicio
escreval("1 - Residencial")
escreval("2 - Comercial")
escreval("3 - Industrial")

escreva("Informe a opcao desejada: ")
leia(opcao)

escolha opcao
     caso 1
        tarifa <- 0.60
     caso 2
        tarifa <- 0.75
     caso 3
        tarifa <- 1.20
fimescolha

escreva("Informe o consumo: ")
leia(consumo)
valor <- tarifa * consumo
escreval("Valor: ", valor)
Fimalgoritmo