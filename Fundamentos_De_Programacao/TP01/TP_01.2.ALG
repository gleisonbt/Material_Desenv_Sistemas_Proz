Algoritmo "Caixa_Eletronico"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 14/09/2023
Var
// Se��o de Declara��es das vari�veis
   saldo, deposito, saque: real
   operacao:inteiro
   repete: caracter

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc...
saldo <- 1000

escreval("*=============================================*")
escreval("*======   Algoritmo Caixa Eletronico  ========*")
escreval("*=============================================*")
escreval("*===============    MENU    ==================*")
escreval("* 1- SAQUE                                    *")
escreval("* 2- DEP�SITO                                 *")
escreval("* 3- SALDO                                    *")
escreval("*=============================================*")
escreva("Informe a opera��o desejada........: ")

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
          escreva("Informe o valor do dep�sito........: ")
          leia(deposito)
          saldo <- saldo + deposito
          escreval("Valor do saldo.....................:", saldo)
       caso 3
          escreval("Valor do saldo.....................:", saldo)
       outrocaso
          escreval("Opcao Invalida!")
   fimescolha
   escreval("Deseja realizar outra opera��o? (s/n)")
   leia(repete)
   limpatela
ate(repete = "n")
Fimalgoritmo