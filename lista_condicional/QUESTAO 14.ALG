Algoritmo "questao 14"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Gleison Brito
// Autor(a)    : Gleison Brito
// Data atual  : 13/09/2023
Var
   lado1, lado2, lado3: inteiro
   cateto1, cateto2, hipotenusa: inteiro


Inicio
   leia(lado1, lado2, lado3)
   
   se (lado1 > lado2) e (lado1 > lado3) entao
       hipotenusa <- lado1
       cateto1 <- lado2
       cateto2 <- lado3
   senao
        se (lado2 > lado1) e (lado2 > lado3) entao
             hipotenusa <- lado2
             cateto1 <- lado1
             cateto2 <- lado3
        senao
             hipotenusa <- lado3
             cateto1 <- lado1
             cateto2 <- lado2
        fimse
   fimse

   se cateto1^2 + cateto2^2 = hipotenusa^2 entao
      escreva("Triângulo retângulo")
   senao
      escreva("Não é triângulo retângulo")
   fimse

Fimalgoritmo