idade = int(input("Informe a idade: "))

if idade < 0:
    print("Idade invalida")
elif idade <= 12:
    print("Crianca")
elif idade <= 17:
    print("Adolescente")
elif idade <= 59:
    print("Adulto")
else:
    print("Idoso")