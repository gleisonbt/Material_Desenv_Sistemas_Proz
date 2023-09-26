Algoritmo "CAIXA REGISTRADORA"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Gleison Brito
// Autor(a)    : Gleison Brito
// Data atual  : 15/09/2023
Var
   valorTotalCompra, valorRecebido, troco: real
   valoresCedulas: vetor[0..5] de real
   valoresMoedas: vetor[0..4] de real
   quantNotas: vetor[0..5] de inteiro
   quantMoedas: vetor[0..4] de inteiro
   quantTroco:inteiro

   cont:inteiro
   repetirOperacao:caractere

Inicio
   valoresCedulas[0] <- 100
   valoresCedulas[1] <- 50
   valoresCedulas[2] <- 20
   valoresCedulas[3] <- 10
   valoresCedulas[4] <- 5
   valoresCedulas[5] <- 2
   valoresMoedas[0] <- 1
   valoresMoedas[1] <- 0.50
   valoresMoedas[2] <- 0.25
   valoresMoedas[3] <- 0.10
   valoresMoedas[4] <- 0.05

   quantNotas[0] <- 10  // 10 quantNotas de 100 reais
   quantNotas[1] <- 20   // 20 quantNotas de 50 reais
   quantNotas[2] <- 30   // 30 quantNotas de 20 reais
   quantNotas[3] <- 40   // 40 quantNotas de 10 reais
   quantNotas[4] <- 50    // 50 quantNotas de 5 reais
   quantNotas[5] <- 100   // 100 quantNotas de 2 reais

   quantMoedas[0] <- 0 // 100 quantMoedas de 1 real
   quantMoedas[1] <- 200 // 200 quantMoedas de 50 centavos
   quantMoedas[2] <- 300 // 300 quantMoedas de 25 centavos
   quantMoedas[3] <- 400 // 400 quantMoedas de 10 centavos
   quantMoedas[4] <- 500 // 500 quantMoedas de 5 centavos


   repita

      escreva("Digite o valor total da compra: ")
      leia(valorTotalCompra)

      escreva("Digite o valor recebido: ")
      leia(valorRecebido)

      // Calcula o troco
      troco <- valorRecebido - valorTotalCompra

      // Exibe o troco
      escreval("O troco a ser devolvido é de: R$", troco)
      escreval("Quantidade de quantNotas e quantMoedas a serem devolvidas:")

      // Para cada tipo de nota e moeda, calcula a quantidade e exibe

      // Calculo das cédulas      ]
      para cont de 0 ate 5 faca
         quantTroco <- int(troco/valoresCedulas[cont])
         se (quantTroco > 0) e (quantTroco <= quantNotas[cont]) entao
            escreval("quantNotas de",  valoresCedulas[cont]," reais: ", quantTroco)
            troco <- troco - (quantTroco * valoresCedulas[cont])
         fimse
      fimpara

      // Calculo das quantMoedas
      quantTroco <- int(troco/valoresMoedas[0])
      se (quantTroco > 0) e (quantTroco <= quantMoedas[0]) entao
         escreval("quantMoedas de 1 real: ", quantTroco)
         troco <- troco - (quantTroco * valoresMoedas[0])
      fimse

      para cont de 1 ate 4 faca
         quantTroco <- int(troco/valoresMoedas[cont])
         se (quantTroco > 0) e (quantTroco <= quantMoedas[cont]) entao
            escreval("quantMoedas de",  valoresMoedas[cont]," centavos: ", quantTroco)
            troco <- troco - (quantTroco * valoresMoedas[cont])
         fimse
      fimpara

      escreva("Deseja relaizar outra compra? (s/n)")
      leia(repetirOperacao)
      limpatela
   ate(repetirOperacao = "n")
Fimalgoritmo