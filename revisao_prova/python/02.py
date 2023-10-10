"""
Algoritmo que permite o usuário escolher
calcular a área de um 1 - retângulo, 2 - triangulo, 3 - circulo
"""
area = 0
opcao = int(input("Informe a opcao: "))

if opcao == 1:
    base = float(input("Leia a base: "))
    altura = float(input("Leia altura: "))
    area = base * altura
elif opcao == 2:
    base = float(input("Leia a base: "))
    altura = float(input("Leia altura: "))
    area = (base * altura)/2
elif opcao == 3:
    raio = float(input("Leia o raio: "))
    area = 3.14 * raio * raio
else:
    print("Opcao invalida")

print(area)