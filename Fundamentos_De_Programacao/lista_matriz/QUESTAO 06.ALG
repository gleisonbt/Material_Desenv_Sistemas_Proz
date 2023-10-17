Algoritmo "questao 06"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Gleison Brito
// Autor(a)    : Gleison Brito
// Data atual  : 27/09/2023
Var
   // Seção de Declarações das variáveis
   alternativas: vetor[0..4] de caractere //cada posicao do vetor é uma alternativa
   gabarito: vetor[0..9] de caractere
   questoesPorAluno: vetor[0..2, 0..9] de caractere
   //coluna 0 = matricula;  coluna 1  = nota
   notasPorAluno: vetor[0..2, 0..0] de inteiro
   cont:inteiro
   continue:caractere

funcao geraResposta: inteiro
inicio
   retorne randi(4)
fimfuncao

procedimento inicializaAlternativas
var
   cont:inteiro
inicio
   alternativas[0] <- "a"
   alternativas[1] <- "b"
   alternativas[2] <- "c"
   alternativas[3] <- "d"
   alternativas[4] <- "e"
fimprocedimento

procedimento inicializaMatriculasAluno
var
   cont:inteiro
inicio
   para cont de 0 ate 2 faca
      notasPorAluno[cont,0] <- randi(899) + 100
   fimpara
fimprocedimento

procedimento inicializaQuestoesPorAluno(matricula:inteiro)
var
   contAluno, contQuestao: inteiro
inicio
   para contAluno de 0 ate 2 faca
      se notasPorAluno[contAluno, 0] = matricula entao
         para contQuestao de 0 ate 9 faca
            questoesPorAluno[contAluno,contQuestao] <- "*"
         fimpara
      fimse
   fimpara
fimprocedimento

procedimento inicializaGabarito
var
   cont:inteiro
inicio
   para cont de 0 ate 9 faca
      gabarito[cont] <- alternativas[geraResposta]
   fimpara
fimprocedimento

funcao informaStatus(notaMedia:inteiro): caractere
inicio
   se notaMedia < 7  entao
      retorne "REPROVADO"
   senao
      retorne "APROVADO"
   fimse
fimfuncao

procedimento relatorioPorAluno(matricula:inteiro)
var
   contAluno, contQuestao: inteiro
   notaDoAluno: real
inicio
   escreva("Matricula: ", matricula)
   para contAluno de 0 ate 2 faca
      se notasPorAluno[contAluno, 0] = matricula entao
         escreva("| Alternativas: ")
         para contQuestao de 0 ate 9 faca
            escreva(questoesPorAluno[contAluno, contQuestao])
         fimpara
         notaDoAluno <- calculaNotaDoAluno(matricula)
         escreva("| Nota: ", notaDoAluno)
         escreva("| Status: ", informaStatus(notaDoAluno))
      fimse
   fimpara
fimprocedimento

procedimento imprimaGabarito
var
   cont:inteiro
inicio
   escreval("GABARITO")
   para cont de 0 ate 9 faca
      escreval("questão ", cont+1, " - ",gabarito[cont])
   fimpara
fimprocedimento

procedimento informaRespostasDoAluno(matricula:inteiro)
var
   contAluno, contQuestao: inteiro
inicio
   escreval("Matrícula: ", matricula)
   para contAluno de 0 ate 2 faca
      se notasPorAluno[contAluno, 0] = matricula entao
         para contQuestao de 0 ate 9 faca
            escreval("questao ", contQuestao, ": ")
            //gerando automaticamente para fins de teste
            questoesPorAluno[contAluno,contQuestao] <- alternativas[geraResposta]
            //leia(questoesPorAluno[contAluno,contQuestao])
         fimpara
      fimse
   fimpara
fimprocedimento

funcao calculaNotaDoAluno(matricula: inteiro):inteiro
var
   contAluno, contQuestao: inteiro
   nota: inteiro
inicio
   nota <- 0
   para contAluno de 0 ate 2 faca
      se notasPorAluno[contAluno, 0] = matricula entao
         para contQuestao de 0 ate 9 faca
            se questoesPorAluno[contAluno, contQuestao] = gabarito[contQuestao] entao
               //notasPorAluno[contAluno] <- notasPorAluno[contAluno] + 1
               nota <- nota + 1
            fimse
         fimpara
      fimse
   fimpara
   retorne nota
fimfuncao

procedimento inicializaSistema
var
   cont:inteiro
inicio
   inicializaAlternativas
   inicializaGabarito
   imprimaGabarito
   inicializaMatriculasAluno

   para cont de 0 ate 2 faca
      inicializaQuestoesPorAluno(notasPorAluno[cont,0]))
   fimpara
fimprocedimento

procedimento imprimeRelatorioCompleto
inicio
   para cont de 0 ate 2 faca
      relatorioPorAluno(notasPorAluno[cont,0])
      escreval("")
   fimpara
fimprocedimento

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   repita
   
   inicializaSistema
   escreval("***************************************")
   para cont de 0 ate 2 faca
      informaRespostasDoAluno(notasPorAluno[cont,0])
      escreval("\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\")
   fimpara
   imprimeRelatorioCompleto
   
   escreva("Deseja gerar relatório de uma nova turma?(ENTER para continuar/ESC para sair)")
   leia(continue)
   escreval(continue)
   
   ate(continue = "q")

Fimalgoritmo