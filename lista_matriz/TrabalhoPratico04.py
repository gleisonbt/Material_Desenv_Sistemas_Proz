"""
variaveis globais, i.e, que são acessadas por 
todas as funções
"""
#lista para armazenar os alunos
turma = [] 

#lista de disciplinas; a posição da disciplina na lista é seu código
#ex.: o código da disciplina Algoritmos é 0
disciplinas = ["Algoritmos","Segurança","Desenv. Web"]

"""
Função responsável por retornar o dicionário de um aluno
dada sua matrícula; caso o aluno não seja encontrado retorna None
"""
def encontra_aluno(matricula):
    for aluno in turma:
        if aluno["matricula"] == matricula:
            return aluno
    return None


"""
Função responsável por criar um dicionário para
cada aluno cadastrado e armazenálo na lista turma
"""
def cadastra_aluno(matricula, nome, idade):
    turma.append(
        #dicionario que representa um aluno
        {
            "matricula":matricula,
            "nome":nome,
            "idade":idade,
            "notas":[[],[],[]] #quando um aluno é criado ele ainda não tem notas
        }
    )

"""
Função responsável por inicializar as notas do aluno no sistema
Para cada disciplina (linha da matriz notas) é adicionado 5 notas 0 
"""
def inicializa_notas_aluno(matricula):
    aluno = encontra_aluno(matricula)
    for notas_disciplina in aluno["notas"]:
        for cont_notas in range(0,5):
            notas_disciplina.append(0)

"""
Função responsável por validar uma nota informada
Se a nota não for entre 0 e 10 é inválida, cado contrário é válida
"""
def valida_nota(nota):
    if nota < 0 or nota > 10:
        return False
    return True


"""
Função responsável por cadastrar as notas do aluno no sistema
em uma dada disciplina; para cada disciplina é solicitado 5 notas
"""
def cadastra_notas_aluno(matricula, cod_disciplina):
    aluno = encontra_aluno(matricula)
    for cont_notas in range(0,5): #5 notas a serem inseridas
        mensagem = "Informe a " + str(cont_notas + 1) + " nota: " #mensagem para o usuario; '+' é utilizado para juntar strings 
        nota = float(input(mensagem))
        while not valida_nota(nota):   #enquanto a nota informada *não* for válida, informe novamente 
            print("Nota inválida!")
            mensagem = "Informe a " + str(cont_notas + 1) + " nota: " #mensagem para o usuario; '+' é utilizado para juntar strings 
            nota = float(input(mensagem))
        aluno["notas"][cod_disciplina][cont_notas] = nota #nota inserida na matriz notas do aluno, na linha do codigo da disciplina


"""
Função responsável por gerar os relatórios de desempenho de cada aluno
exibindo a média de notas para cada disciplina
"""
def gera_relatorio_desempenho(matricula):
    aluno = encontra_aluno(matricula)
    cont_disciplina = 0 #contador utilizado para acessar o nome das diciplinas na lista disciplinas
    for notas_disciplina in aluno["notas"]: #percorre as linhas da matriz de notas (cada linha á uma disciplina)
        media = 0
        for nota in notas_disciplina: #percorre as notas de cada disciplina
            media += nota #média é atualizada somando-se cada nota da disciplina (mé dia é variável acumuladora)
        media /= len(notas_disciplina) #média é atualizada dividindo su valor pela quantidade de notas por disciplina (x /= y é equivalente a x = x/y)
        print(disciplinas[cont_disciplina] + ": ", + media) #exibe a média de cada disciplina
        cont_disciplina += 1

"""
Função responsável por exibir as notas de cada aluno para cada disciplina
"""
def consulta_informacoes_aluno(matricula):
    aluno = encontra_aluno(matricula)
    print("Nome: ", aluno["nome"])
    cont_disciplina = 0 #contador utilizado para acessar o nome das diciplinas na lista disciplinas
    for notas_disciplina in aluno["notas"]: #percorre as linhas da matriz de notas (cada linha á uma disciplina)
        print(disciplinas[cont_disciplina] + ": ", notas_disciplina) #exibe a lista de notas de cada disciplina
        cont_disciplina += 1


opcao = 0 #variavel onde o usuário vai informar o que deseja acessar no sistema

"""
Função responsável por exibir o menu para o usuário
e chamar as funções
"""
def menu():
    #em python temos a possibilidade de strings com mais de uma linha utilizando-se os
    #delimitadores """ ... """
    opcao = int(input("""
                    1 - Cadastrar novo aluno
                    2 - Incluir notas
                    3 - Gerar relatório de desempenho
                    4 - Consultar informações
                    Informe a opcao desejada: """))

    if(opcao == 1):
        matricula = int(input("Informe a matrícula: "))
        nome = input("Informe o nome: ")
        idade = int(input("Informe a idade: "))
        cadastra_aluno(matricula, nome, idade)
        inicializa_notas_aluno(matricula)
    elif(opcao == 2):
        matricula = int(input("Informe a matrículza: "))
        cod_disciplina = int(input("Informe o código da disciplina: "))
        cadastra_notas_aluno(matricula, cod_disciplina)
    elif(opcao == 3):
        matricula = int(input("Informe a matrícula: "))
        gera_relatorio_desempenho(matricula)
    elif(opcao == 4):
        matricula = int(input("Informe a matrícula: "))
        consulta_informacoes_aluno(matricula)
    else:
        print("Opção inválida")

#exibe o menu e pergunta de o usuário deseja continuar
menu()
repete = input("Deseja realizar mais alguma operação? (s/n)")
while repete == "s":
    menu() 
    repete = input("Deseja realizar mais alguma operação? (s/n)")



"""
Alguns testes:

cadastra_aluno(123,"gleison",28)
cadastra_aluno(245,"carlos",19)
inicializa_notas_aluno(123)
inicializa_notas_aluno(245)
cadastra_notas_aluno(123,0)
print(encontra_aluno(123))
gera_relatorio_desempenho(123)
consulta_informacoes_aluno(123)
print(turma)
"""


