Algoritmo "02"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Gleison Brito
// Algoritmo que permite o usuário escolher
// calcular a área de um 1 - retângulo, 2 - triangulo, 3 - circulo
// Autor(a)    : Gleison Brito
// Data atual  : 10/10/2023
Var
area, base, altura, raio: real
opcao: inteiro

Inicio
area <- 0
escreva("Informe a opcao: ")
leia(opcao)

escolha opcao
        caso 1
           escreva("Leia a base: ")
           leia(base)
           escreva("Leia a altura: ")
           leia(altura)
           area <- base * altura
        caso 2
           escreva("Leia a base: ")
           leia(base)
           escreva("Leia a altura: ")
           leia(altura)
           area <- base * altura / 2
        caso 3
           escreva("Leia o raio: ")
           leia(raio)
           area <- 3.14 * raio * raio
        outrocaso
           escreva("Opcao invalida")
fimescolha

escreva(area)


Fimalgoritmo