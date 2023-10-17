"""
funcao para imprimir turma
"""
def imprime_turma(turma):
    print("impressao dos dicionarios")
    for aluno in turma:
        print(aluno)


"""
declaracao de dois dicionarios para
representar alunos
"""
pamela = {
    "nome":"pamela",
    "turma":"BHZM",
    "matricula":123
}

carlos = {
    "nome":"carlos",
    "turma":"BHZM",
    "matricula":124
}

"""
insercao dos dois dicionarios em uma lista
e acesso aos dicionarios
"""
turma = [pamela, carlos]

imprime_turma(turma)


"""
acesso a chaves dos dicionarios
"""
for aluno in turma:
    print("Aluno: ", aluno["nome"])
    for chave in aluno:
        print(chave, ": ", aluno[chave])


"""
alterando o valor das chaves 
"""
turma[1]["turma"] = "BHZT"

imprime_turma(turma)


"""
insercao de novas chaves
nos dicionarios
"""
for aluno in turma:
    aluno["notas"] = []

print("impressao dos dicionarios")
for aluno in turma:
    print(aluno)

"""
inicializacao das listas de notas
"""
for aluno in turma:
    for cont in range(0,5):
        aluno["notas"].append(0)

imprime_turma(turma)

"""
inserindo as notas dos alunos
"""
for aluno in turma:
    print("Notas do(a) aluno(a): ", aluno["nome"])
    for cont in range(0,len(aluno["notas"])):
        aluno["notas"][cont] = float(input("Informe o valor da nota: "))

imprime_turma(turma)

"""
funcao para retornar um aluno passando 
a matricula como parametro. Se o aluno
nao for encontrado, retorna o valor None
(no python None é utilizado para representar 
valores nulos)
"""
def encontra_aluno(matricula):
    for aluno in turma:
        if aluno["matricula"] == matricula:
            return aluno
    return None

print("Aluno de matricula 124: ")
print(encontra_aluno(124))

