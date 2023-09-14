Algoritmo "Caixa_Eletronico"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Gleison Brito
// Autor(a)    : Gleison Brito
// Data atual  : 14/09/2023
Var
// Seção de Declarações das variáveis
   saldo, deposito, saque: real
   operacao:inteiro


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
escreval("*=============================================*")
escreval("*======   Algoritmo Caixa Eletronico  ========*")
escreval("*=============================================*")
escreval("*===============    MENU    ==================*")
escreval("* 1- SAQUE                                    *")
escreval("* 2- DEPÓSITO                                 *")
escreval("* 3- SALDO                                    *")
escreval("*=============================================*")
escreva("Informe a operação desejada........: ")

saldo <- 1000
leia(operacao)

escolha(operacao)
    caso 1
       repita
           escreva("Informe o valor do saque...........: ")
           leia(saque)
       ate(saque <= saldo)
       saldo <- saldo - saque
       escreval("Valor do saldo.....................:", saldo)
    caso 2
       escreva("Informe o valor do depósito........: ")
       leia(deposito)
       saldo <- saldo + deposito
       escreval("Valor do saldo.....................:", saldo)
    caso 3
       escreval("Valor do saldo.....................:", saldo)
    outrocaso
       escreval("Opcao Invalida!")
fimescolha

Fimalgoritmo
