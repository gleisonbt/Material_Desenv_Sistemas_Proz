Algoritmo "09"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Gleison Brito
// Data atual  : 11/10/2023
Var
list: vetor[0..4] de caractere

funcao verifica_simetria: logico
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

   retorne simetrico

fimfuncao


Inicio

list[0] <- "a"
list[1] <- "r"
list[2] <- "a"
list[3] <- "r"
list[4] <- "a"

escreval(verifica_simetria)

list[0] <- "a"
list[1] <- "b"
list[2] <- "c"
list[3] <- "d"
list[4] <- "e"

escreval(verifica_simetria)

Fimalgoritmo