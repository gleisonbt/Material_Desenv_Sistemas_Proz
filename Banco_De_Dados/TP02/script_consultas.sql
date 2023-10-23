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