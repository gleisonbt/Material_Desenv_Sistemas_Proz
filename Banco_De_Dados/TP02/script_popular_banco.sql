insert into CategoriasDeProdutos (ID, NomeDaCategoria)
values (1, "Farinha");

insert into CategoriasDeProdutos (ID, NomeDaCategoria)
values (2, "Grao"),
(3, "Utensilio"),
(4, "Cereal");

insert into fornecedores (ID, Nome, Endereco, Telefone)
	values (1, "Tambasa", "Rua Pedro, nº75 - Centro","31-3335-5555");

insert into fornecedores (ID, Nome, Endereco, Telefone)
	values (2, "Ceasa", "BR 040, nº2000 - Ribeirao das Neves","31-3451-7878"),
(3, "Vilma", "Rua 17, nº854 - Belo Horizonte","31-3574-1524");


insert into Produtos (ID, nome, descricao, preco, QuantidadeEmEstoque, categoria, Fornecedor)
	values (1, "Batata palha", "", "5.50", "10", 3, 3),
	(2, "Toddynho", "", "5", "15", 3, 2);

insert into Vendas (ID, DataDaVenda, ValorTotal, Funcionario)
	values (1, "2023-10-23", "300.00", "fulano de tal"),
    (2, "2023-10-14", "150.00", "cicrano de tal");

insert into ItensDeVenda(ID, IDDoProduto, IDDaVenda, QuantidadeVendida, PrecoUnitario)
	values (1, 1, 1, 30, "10.00"),
    (2, 2, 1, 28, "5.00"),
    (3, 2, 2, 50, "25.00");