Algoritmo "TRABALHO PRATICO 03"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Gleison Brito
// Autor(a)    : Gleison Brito
// Data atual  : 02/10/2023

Var
   // Seção de Declarações das variáveis
   idadeMatriculaAluno:  vetor[0..1, 0..14] de inteiro
   nomeAluno: vetor[0..14] de caractere
   qtdeAlunos:inteiro
   notasAlunosDisciplinas: vetor[0..14, 0..14] de real
   disciplinas: vetor[0..2] de caractere
   matricula, idade, codDisciplina: inteiro
   nome:caractere
   opcao:inteiro
   continua: caractere


funcao validaNota(nota:inteiro):logico
inicio
   se (nota < 0) ou (nota > 10) entao
      retorne falso
   senao
      retorne verdadeiro
   fimse
fimfuncao

funcao posicaoAluno(matricula:inteiro):inteiro
var
   contAluno, posicao:inteiro
inicio
   posicao <- -1
   para contAluno de 0 ate (qtdeAlunos - 1) faca
      se idadeMatriculaAluno[0, contAluno] = matricula entao
         posicao <- contAluno
         contAluno <- (qtdeAlunos - 1)
      fimse
   fimpara
   retorne posicao
fimfuncao

procedimento cadastroAluno(matricula, idade: inteiro; nome: caractere)
var
inicio
   idadeMatriculaAluno[0, qtdeAlunos] <- matricula
   idadeMatriculaAluno[1, qtdeAlunos] <- idade
   nomeAluno[qtdeAlunos] <- nome
   qtdeAlunos <- qtdeAlunos + 1
fimprocedimento


procedimento incluiNotas(matricula, codDiscliplina: inteiro)
var
   posicao, contNota:inteiro
   nota:real
inicio
   posicao <- posicaoAluno(matricula)
   para contNota de codDisciplina*5 ate codDisciplina*5 + 4 faca
      repita
         escreva("Informe a ", (contNota mod 5) + 1, "º nota: ")
         leia(nota)
      ate(validaNota(nota))
      notasAlunosDisciplinas[posicao, contNota] <- nota
   fimpara
fimprocedimento

procedimento geraRelatorioDesempenho(matricula:inteiro)
var
   posicao, contDisciplina, contNota:inteiro
   media:real
inicio
   posicao <- posicaoAluno(matricula)
   para contDisciplina de 0 ate 2 faca
      media <- 0
      para contNota de contDisciplina*5 ate contDisciplina*5 + 4 faca
         media <- media + notasAlunosDisciplinas[posicao, contNota]
      fimpara
      media <- media/5
      escreval("Média da disciplina ", disciplinas[contDisciplina], ": ", media)
   fimpara
fimprocedimento

procedimento consultaInformacoes(matricula:inteiro)
var
   posicao, contDisciplina, contNota:inteiro
inicio
   posicao <- posicaoAluno(matricula)

   escreval("Nome: ", nomeAluno[posicao])
   para contDisciplina de 0 ate 2 faca
      escreval("Disciplina: ", disciplinas[contDisciplina])
      para contNota de contDisciplina*5 ate contDisciplina*5 + 4 faca
         escreva("Nota ", (contNota mod 5) + 1,": ", notasAlunosDisciplinas[posicao, contNota], " ")
      fimpara
      escreval("")
   fimpara

fimprocedimento

procedimento inicializa
var
   contAluno, contNota: inteiro
inicio
   disciplinas[0] <- "Algoritmos"
   disciplinas[1] <- "Seguranca"
   disciplinas[2] <- "Desenv. Web"
   qtdeAlunos <- 0

   para contAluno de 0 ate 14 faca
      para contNota de 0 ate 14 faca
         notasAlunosDisciplinas[contAluno, contNota] <- 0
      fimpara
   fimpara
fimprocedimento

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   inicializa

   repita
      escreval("Controle Academico")
      escreval("1 - Cadastro de Alunos")
      escreval("2 - Inclusão de Notas")
      escreval("3 - Gerar Relatórios")
      escreval("4 - Consulta de Informações")
      escreva("Informe a opção desejada: ")
      leia(opcao)

      escolha(opcao)
      caso 1
         se qtdeAlunos < 15 entao
            escreva("Informe a matricula: ")
            leia(matricula)
            escreva("Informe nome: ")
            leia(nome)
            escreva("Informe a idade: ")
            leia(idade)
            cadastroAluno(matricula, idade, nome)
         senao
            escreval("Turma lotada!")
         fimse
      caso 2
         escreva("Informe a matricula: ")
         leia(matricula)
         escreva("Informe o Cód da disciplina: ")
         leia(codDisciplina)
         incluiNotas(matricula, codDisciplina)
      caso 3
         escreva("Informe a matricula: ")
         leia(matricula)
         geraRelatorioDesempenho(matricula)
      caso 4
         escreva("Informe a matricula: ")
         leia(matricula)
         consultaInformacoes(matricula)
      outrocaso
         escreval("Opção inválida!")
      fimescolha

      escreva("Deseja continuar? (s/n)")
      leia(continua)
      limpatela
   ate(continua = "n")

Fimalgoritmo