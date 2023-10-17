Algoritmo "questao 13"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Gleison Brito
// Autor(a)    : Gleison Brito
// Data atual  : 13/09/2023
Var
  ano:inteiro


Inicio
  leia(ano)

  se (ano mod 4 = 0) e ((ano mod 100 <> 0) ou (ano mod 400 = 0)) entao
       escreval("Bissexto")
  senao
       escreval("Não é bissexto")
  fimse


Fimalgoritmo