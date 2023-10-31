
# Importa o módulo pymysql, que fornece funcionalidades para se conectar a um banco de dados MySQL.
import pymysql

# Cria uma conexão com o banco de dados MySQL local, fornecendo os detalhes de host, usuário, senha e nome do banco de dados.
mydb = pymysql.connect(host="localhost", user="root", passwd="aleister93", database="bdEstoqueLoja")

# Imprime a conexão do banco de dados. Isso é feito para verificar se a conexão foi bem-sucedida.
print(mydb)

# Cria um cursor que permite executar comandos SQL no banco de dados. (É como se fosse o cursor de um terminal esperando comandos)
my_cursor = mydb.cursor()

# Executa uma consulta SQL que seleciona todos os registros da tabela "Produtos".
my_cursor.execute("select * from Produtos;")

# Recupera todos os registros retornados pela consulta SQL.
rows = my_cursor.fetchall()

# Itera sobre os registros (linhas) retornados e imprime cada um deles.
for row in rows:
    print(row)

print("###################################################")

# Executa uma consulta SQL que realiza uma junção (INNER JOIN) entre as tabelas "Fornecedores" (aliás "f") e "Produtos" (aliás "p").
# A junção é feita com base na igualdade entre os campos "ID" da tabela "Fornecedores" e "Fornecedor" da tabela "Produtos".
my_cursor.execute("SELECT * from Fornecedores f INNER JOIN Produtos p ON f.ID = p.Fornecedor;")

# Recupera todos os registros (linhas) retornados pela consulta SQL e armazena-os na variável "rows".
rows = my_cursor.fetchall()

# Itera sobre os registros (linhas) retornados e imprime cada um deles.
for row in rows:
    print(row)
