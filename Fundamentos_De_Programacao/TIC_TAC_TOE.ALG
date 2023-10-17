Algoritmo "tic_tac_toe"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Gleison Brito
// Autor(a)    : Gleison Brito
// Data atual  : 21/09/2023
Var
// Seção de Declarações das variáveis
   linha, coluna: inteiro
   tabuleiro: vetor [1..3, 1..3] de caractere
   jogadorAtual: caractere
   turno: inteiro
   jogadaValida: logico
   haVencedor: logico

procedimento DesenhaTabuleiro()
var
   linha, coluna: inteiro

inicio
   para linha de 1 ate 3 faca
       para coluna de 1 ate 3 faca
           escreva(tabuleiro[linha, coluna])
           se coluna < 3 entao
               escreva(" | ")
           fimse
       fimpara
       escreval("")
       se linha < 3 entao
           escreva("---------")
           escreval("")
       fimse
   fimpara
fimprocedimento

funcao VerificaVitoria(jogador: caractere): logico
var
   i: inteiro

inicio
   haVencedor <- Falso
   
   // Verifica linhas e colunas
   para i de 1 ate 3 faca
      se (tabuleiro[i, 1] = jogador) e (tabuleiro[i, 2] = jogador) e (tabuleiro[i, 3] = jogador) ou (tabuleiro[1, i] = jogador) e (tabuleiro[2, i] = jogador) e (tabuleiro[3, i] = jogador) entao
         haVencedor <- Verdadeiro
      fimSe
   fimpara

   // Verifica diagonais
   se (tabuleiro[1, 1] = jogador) e (tabuleiro[2, 2] = jogador) e (tabuleiro[3, 3] = jogador) ou (tabuleiro[1, 3] = jogador) e (tabuleiro[2, 2] = jogador) e (tabuleiro[3, 1] = jogador) entao
      haVencedor <- Verdadeiro
   fimSe

   retorne haVencedor
fimfuncao

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
    para linha de 1 ate 3 faca
         para coluna de 1 ate 3 faca
            tabuleiro[linha, coluna] <- " "
         fimpara
    fimpara
    
    jogadorAtual <- "X"
    turno <- 1
    haVencedor <- Falso
    
    enquanto (turno <= 9) e (haVencedor = Falso) faca
          jogadaValida <- Falso

          escreval("Tabuleiro Atual: ")
          DesenhaTabuleiro()
          
          escreval("Jogador ", jogadorAtual, ", é sua vez.")
          escreva("Digite a linha (1 a 3): ")
          leia(linha)
          escreva("Digite a coluna (1 a 3): ")
          leia(coluna)
          
          // Verifica se a posição está válida e vazia
          se (linha >= 1) e (linha <= 3) e (coluna >= 1) e (coluna <= 3) entao
            se tabuleiro[linha, coluna] = " " entao
               tabuleiro[linha, coluna] <- jogadorAtual
               jogadaValida <- Verdadeiro
            senao
               jogadaValida <- Falso
            fimse
         senao
            jogadaValida <- Falso
         fimSe

         se nao jogadaValida entao
               escreva("Posição inválida. Tente novamente.")
         fimse
          
         // Verifica se o jogador atual ganhou
         haVencedor <- VerificaVitoria(jogadorAtual)
         haVencedor <- haVencedor e jogadaValida
         
         se haVencedor entao
            escreva("Jogador ", jogadorAtual, " venceu!")
         fimse
         
         // Alternar jogador
         se jogadorAtual = "X" entao
            jogadorAtual <- "O"
         senao
            jogadorAtual <- "X"
         fimSe
          
         turno <- turno + 1
    fimenquanto
    
    Se nao haVencedor entao
      escreval("O jogo terminou em empate.")
   FimSe

Fimalgoritmo