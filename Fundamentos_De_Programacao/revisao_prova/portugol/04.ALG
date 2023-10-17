Algoritmo "04"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Funcao que verifica se uma lista de números é simétrica
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 10/10/2023
Var
list: vetor[0..4] de inteiro

procedimento verifica_simetria
var
   cont_esquerda, cont_direita:inteiro
   simetrico:logico

inicio
   cont_esquerda <- 0
   cont_direita <- 4
   simetrico <- Verdadeiro
   
   enquanto cont_esquerda <= cont_direita faca
       se list[cont_esquerda] <> list[cont_direita] entao
            simetrico <- Falso
            cont_esquerda <- cont_direita
       fimse
       cont_esquerda <- cont_esquerda + 1
       cont_direita <- cont_direita - 1
   fimenquanto
   
   se simetrico entao
         escreval("É simétrico")
   senao
        escreval("Não é simétrico")
   fimse

fimprocedimento


Inicio

list[0] <- 1
list[1] <- 2
list[2] <- 3
list[3] <- 2
list[4] <- 1

verifica_simetria

list[0] <- 1
list[1] <- 2
list[2] <- 3
list[3] <- 4
list[4] <- 5

verifica_simetria

Fimalgoritmo