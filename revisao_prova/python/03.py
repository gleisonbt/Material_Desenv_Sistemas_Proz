"""
Informar a categoria de massa corporal de acordo
com o IMC
"""
altura = float(input("Informe o a altura:" ))
peso = float(input("Informe o peso: "))
imc = peso/(altura * altura)

if imc <= 18.5:
    print("Abaixo do peso")
elif imc <= 24.9:
    print("Peso normal")
elif imc <= 29.9:
    print("Sobrepeso")
else:
    print("Obeso") 