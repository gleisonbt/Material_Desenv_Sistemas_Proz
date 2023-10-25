-- questao 01
select * from Produtos;

-- questao 02
select nome from Fornecedores;

-- questao 03
select * from CategoriasDeProdutos;

-- questao 04
select * from Produtos where Fornecedor = 2;

-- questao 05
select * from Produtos where Preco > 5;


-- questao 06
-- step 01
select * from Vendas inner join ItensDeVenda; -- cruza todas as linhas de Vendas com ItensDeVenda

-- step 02
select * from Vendas V inner join ItensDeVenda IV; -- coloca apelidos nas tabelas para evitar ambiguidade (ItensDeVenda e Vendas tem o mesmo campo ID) 

-- step 03
select * from Vendas V inner join ItensDeVenda IV 
on V.ID = IV.IDDaVenda; -- seleciona a intersecção das duas tabelas (onde o ID da Venda é igual o IDDaVenda de ItensDeVenda)

-- step 04
select * from Vendas V inner join ItensDeVenda IV 
on V.ID = IV.IDDaVenda where IV.IDDoProduto = 2; -- filtra pelo ID do produto

-- questao 07
select SUM(QuantidadeEmEstoque * Preco) from Produtos;

-- questao 08
select Categoria, SUM(QuantidadeEmEstoque * Preco) from Produtos
group by Categoria;

-- questao 09
select * from Produtos where Categoria = 2;

-- questao 10
select * from Vendas where Funcionario = "Maria Santos";

-- questao 11
select * from ItensDeVenda iv
inner join Produtos p on iv.IDDoProduto = p.ID
where iv.IDDaVenda = 1; 

-- questao 12
-- desconsiderar, necessita de recursos mais avançados

-- questao 13
