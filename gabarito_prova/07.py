opcao = int(input("""
1 - Residencial
2 - Comercial
3 - Industrial
                  
Informe a opcao desejada: 
"""))

if opcao == 1:
    tarifa = 0.60
elif opcao == 2:
    tarifa = 0.75
elif opcao == 3:
    tarifa = 1.20

consumo = float(input("Informe o consumo: "))
valor = tarifa * consumo

print("Valor: ", valor)
