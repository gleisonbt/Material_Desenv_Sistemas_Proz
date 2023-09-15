Algoritmo "Caixa_Eletronico"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 14/09/2023
Var
// Seção de Declarações das variáveis
   saldo, deposito, saque: real
   operacao:inteiro
   repete: caracter

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
saldo <- 1000

escreval("*=============================================*")
escreval("*======   Algoritmo Caixa Eletronico  ========*")
escreval("*=============================================*")
escreval("*===============    MENU    ==================*")
escreval("* 1- SAQUE                                    *")
escreval("* 2- DEPÓSITO                                 *")
escreval("* 3- SALDO                                    *")
escreval("*=============================================*")
escreva("Informe a operação desejada........: ")

leia(operacao)
repita
   escolha(operacao)
       caso 1
          escreva("Informe o valor do saque...........: ")
          enquanto saque > saldo faca
               escreva("Saldo insuficiente!")
               escreva("Informe o valor do saque...........: ")
               leia(saque)
          fimenquanto
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
   escreval("Deseja realizar outra operação? (s/n)")
   leia(repete)
   limpatela
ate(repete = "n")
Fimalgoritmo