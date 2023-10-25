INSERT INTO CategoriasDeProdutos (ID, NomeDaCategoria)
VALUES 
(1, "Padaria"),
(2, "Carnes"),
(3, "Mercearia"),
(4, "Matinais"),
(5, "Laticínios"),
(6, "Bebidas"),
(7, "Limpeza"),
(8, "Higiene"),
(9, "Hortifruti");

INSERT INTO Fornecedores (ID, Nome, Endereco, Telefone)
VALUES
    (1, 'Fornecedor 1', 'Rua A, 123 São Paulo', '(11) 1234-5678'),
    (2, 'Fornecedor 2', 'Avenida B, 456 Rio de Janeiro', '(21) 2345-6789'),
    (3, 'Fornecedor 3', 'Travessa C, 789 Belo Horizonte', '(31) 3456-7890'),
    (4, 'Fornecedor 4', 'Rua D, 234 Porto Alegre', '(51) 4567-8901'),
    (5, 'Fornecedor 5', 'Avenida E, 567 Salvador', '(71) 5678-9012'),
    (6, 'Fornecedor 6', 'Travessa F, 890 Brasília', '(61) 6789-0123'),
    (7, 'Fornecedor 7', 'Rua G, 123 Curitiba', '(41) 7890-1234'),
    (8, 'Fornecedor 8', 'Avenida H, 234 Fortaleza', '(85) 8901-2345'),
    (9, 'Fornecedor 9', 'Travessa I, 567 Recife', '(81) 9012-3456'),
    (10, 'Fornecedor 10', 'Rua J, 890 Manaus', '(92) 0123-4567');

INSERT INTO Produtos (ID, Nome, Descricao, Preco, QuantidadeEmEstoque, Categoria, Fornecedor)
VALUES
    -- Produtos de Padaria (Categoria 1)
    (1, 'Pão Francês', 'Pão tradicional de padaria', 2.50, 100, 1, 3),
    (2, 'Baguete', 'Pão francês alongado', 2.99, 80, 1, 8),
    (3, 'Croissant', 'Croissant fresco', 1.99, 60, 1, 5),
    (4, 'Rosquinha', 'Rosquinha doce', 0.99, 120, 1, 6),
    (5, 'Bolo de Cenoura', 'Bolo caseiro de cenoura', 4.99, 40, 1, 10),
    (6, 'Pão de Forma', 'Pão de forma integral', 3.49, 90, 1, 1),
    (7, 'Pastel de Nata', 'Pastel tradicional português', 2.79, 50, 1, 4),
    (8, 'Bolachas', 'Pacote de bolachas sortidas', 2.29, 150, 1, 2),
    (9, 'Pão de Queijo', 'Pão de queijo mineiro', 5.99, 70, 1, 9),
    (10, 'Sonho', 'Sonho recheado', 1.49, 80, 1, 7),

    -- Produtos de Carnes (Categoria 2)
    (11, 'Carne Bovina (Filé Mignon)', 'Carne bovina de alta qualidade', 15.99, 50, 2, 2),
    (12, 'Frango', 'Peito de frango', 7.99, 90, 2, 5),
    (13, 'Carne Suína (Costeletas)', 'Costeletas de porco', 9.99, 60, 2, 7),
    (14, 'Peixe (Salmão)', 'Filé de salmão fresco', 12.99, 40, 2, 4),
    (15, 'Linguiça', 'Linguiça artesanal', 6.99, 70, 2, 6),
    (16, 'Carne Moída', 'Carne moída magra', 4.99, 80, 2, 1),
    (17, 'Costela de Porco', 'Costela de porco defumada', 8.99, 30, 2, 3),
    (18, 'Picanha', 'Picanha angus', 17.99, 35, 2, 8),
    (19, 'Bacon', 'Bacon defumado', 3.99, 45, 2, 10),
    (20, 'Carne de Cordeiro', 'Carne de cordeiro premium', 19.99, 25, 2, 9),

    -- Produtos de Mercearia (Categoria 3)
    (21, 'Arroz', 'Pacote de arroz branco', 3.99, 200, 3, 10),
    (22, 'Feijão', 'Feijão preto', 2.49, 150, 3, 2),
    (23, 'Macarrão', 'Macarrão espaguete', 1.99, 180, 3, 6),
    (24, 'Azeite de Oliva', 'Azeite de oliva extra virgem', 7.99, 100, 3, 8),
    (25, 'Molho de Tomate', 'Molho de tomate tradicional', 1.79, 120, 3, 5),
    (26, 'Enlatados', 'Milho em lata', 0.99, 130, 3, 1),
    (27, 'Farinha de Trigo', 'Farinha de trigo branca', 2.29, 90, 3, 7),
    (28, 'Café', 'Café moído', 5.49, 80, 3, 3),
    (29, 'Açúcar', 'Açúcar refinado', 2.19, 120, 3, 4),
    (30, 'Sal', 'Sal de cozinha', 0.89, 150, 3, 9),

    -- Produtos Matinais (Categoria 4)
    (31, 'Cereal Matinal', 'Cereal matinal nutritivo', 4.99, 80, 4, 2),
    (32, 'Leite', 'Leite fresco', 2.99, 100, 4, 6),
    (33, 'Aveia', 'Aveia em flocos', 1.99, 60, 4, 8),
    (34, 'Iogurte', 'Iogurte de morango', 1.99, 120, 4, 1),
    (35, 'Granola', 'Granola crocante', 3.49, 70, 4, 7),
    (36, 'Mel', 'Mel puro', 4.99, 50, 4, 5),
    (37, 'Frutas', 'Bananas (kg)', 2.49, 40, 4, 4),
    (38, 'Suco de Laranja', 'Suco de laranja natural', 3.99, 60, 4, 10),
    (39, 'Ovos', 'Dúzia de ovos', 2.29, 90, 4, 9),
    (40, 'Pão Integral', 'Pão integral de grãos', 3.29, 70, 4, 3),

    -- Produtos de Laticínios (Categoria 5)
    (41, 'Leite', 'Leite fresco', 2.99, 100, 5, 4),
    (42, 'Queijo Cheddar', 'Queijo cheddar fatiado', 4.99, 80, 5, 5),
    (43, 'Iogurte', 'Iogurte natural', 1.29, 120, 5, 6),
    (44, 'Manteiga', 'Manteiga sem sal', 3.49, 60, 5, 7),
    (45, 'Requeijão', 'Requeijão cremoso', 2.99, 70, 5, 8),
    (46, 'Queijo Suíço', 'Queijo suíço fatiado', 5.99, 50, 5, 9),
    (47, 'Cream Cheese', 'Cream cheese Philadelphia', 3.99, 40, 5, 10),
    (48, 'Leite Condensado', 'Leite condensado Moça', 2.79, 60, 5, 1),
    (49, 'Queijo Parmesão', 'Queijo parmesão ralado', 4.29, 40, 5, 2),
    (50, 'Iogurte Grego', 'Iogurte grego natural', 2.99, 70, 5, 3),

    -- Produtos de Bebidas (Categoria 6)
    (51, 'Refrigerante', 'Coca-Cola 2L', 2.49, 60, 6, 3),
    (52, 'Água Mineral', 'Garrafa de água mineral', 1.49, 120, 6, 7),
    (53, 'Suco de Laranja', 'Suco de laranja natural', 3.99, 80, 6, 10),
    (54, 'Café', 'Café moído', 5.49, 90, 6, 2),
    (55, 'Chá', 'Pacote de chá preto', 2.99, 70, 6, 5),
    (56, 'Cerveja', 'Cerveja artesanal', 6.99, 50, 6, 6),
    (57, 'Vinho Tinto', 'Garrafa de vinho tinto', 12.99, 30, 6, 8),
    (58, 'Água de Coco', 'Água de coco natural', 2.29, 40, 6, 9),
    (59, 'Refrigerante de Limão', 'Sprite 2L', 2.29, 60, 6, 1),
    (60, 'Energético', 'Lata de energético', 3.49, 25, 6, 4),

    -- Produtos de Limpeza (Categoria 7)
    (61, 'Detergente', 'Detergente de limão', 1.29, 150, 7, 9),
    (62, 'Sabão em Pó', 'Sabão em pó para roupas', 5.99, 80, 7, 8),
    (63, 'Desinfetante', 'Desinfetante de lavanda', 2.49, 100, 7, 10),
    (64, 'Esponjas', 'Pacote de esponjas', 1.99, 120, 7, 7),
    (65, 'Papel Toalha', 'Rolo de papel toalha', 2.79, 70, 7, 2),
    (66, 'Limpador Multiuso', 'Limpador multiuso', 3.49, 60, 7, 4),
    (67, 'Amaciante de Roupa', 'Amaciante floral', 4.99, 50, 7, 5),
    (68, 'Sacos de Lixo', 'Pacote de sacos de lixo', 3.29, 80, 7, 3),
    (69, 'Alvejante', 'Alvejante sem cloro', 2.59, 70, 7, 1),
    (70, 'Mop', 'Mop de limpeza', 9.99, 40, 7, 6),

    -- Produtos de Higiene (Categoria 8)
    (71, 'Sabonete', 'Sabonete em barra', 0.99, 300, 8, 6),
    (72, 'Shampoo', 'Shampoo hidratante', 4.49, 150, 8, 2),
    (73, 'Escova de Dentes', 'Escova de dentes macia', 2.49, 200, 8, 4),
    (74, 'Creme Dental', 'Creme dental branqueador', 2.99, 180, 8, 7),
    (75, 'Papel Higiênico', 'Rolo de papel higiênico', 1.79, 220, 8, 5),
    (76, 'Lenços Umedecidos', 'Lenços umedecidos', 3.99, 120, 8, 1),
    (77, 'Fio Dental', 'Fio dental com sabor', 1.29, 160, 8, 3),
    (78, 'Desodorante', 'Desodorante roll-on', 2.99, 140, 8, 10),
    (79, 'Sabonete Líquido', 'Sabonete líquido de lavanda', 3.49, 110, 8, 8),
    (80, 'Absorvente Feminino', 'Absorvente com abas', 4.99, 100, 8, 9),

    -- Produtos de Hortifruti (Categoria 9)
    (81, 'Maçãs', 'Maçãs vermelhas frescas', 0.79, 80, 9, 3),
    (82, 'Bananas', 'Bananas maduras', 0.59, 100, 9, 9),
    (83, 'Cenouras', 'Cenouras orgânicas', 1.29, 70, 9, 7),
    (84, 'Alface', 'Alface americana', 1.99, 60, 9, 4),
    (85, 'Tomates', 'Tomates orgânicos', 2.49, 50, 9, 5),
    (86, 'Brócolis', 'Brócolis frescos', 1.79, 40, 9, 6),
    (87, 'Morangos', 'Morangos frescos', 2.99, 30, 9, 1),
    (88, 'Laranjas', 'Laranjas suculentas', 1.49, 70, 9, 8),
    (89, 'Uvas', 'Uvas sem sementes', 3.99, 40, 9, 2),
    (90, 'Abacaxi', 'Abacaxi maduro', 2.99, 30, 9, 10);

INSERT INTO Vendas (ID, DataDaVenda, ValorTotal, Funcionario)
VALUES
    (1, '2023-10-01', 24.05, 'João Silva'),
    (2, '2023-10-02', 75.95, 'Maria Santos'),
    (3, '2023-10-03', 31.92, 'Pedro Oliveira'),
    (4, '2023-10-04', 42.82, 'Ana Costa'),
    (5, '2023-10-05', 23.97, 'José Almeida'),
    (6, '2023-10-06', 14.74, 'Marta Pereira'),
    (7, '2023-10-07', 41.96, 'Luís Rodrigues'),
    (8, '2023-10-08', 24.95, 'Sara Ferreira'),
    (9, '2023-10-09', 93.93, 'Carlos Sousa'),
    (10, '2023-10-10', 11.96, 'Catarina Gomes');


-- Inserção de 20 registros na tabela ItensDeVenda com valores numéricos fixos no campo PrecoUnitario
INSERT INTO ItensDeVenda (ID, IDDoProduto, IDDaVenda, QuantidadeVendida, PrecoUnitario)
VALUES
    (1, 1, 1, 5, 2.50),
    (2, 3, 1, 3, 1.99),
    (3, 7, 1, 2, 2.79),
    (4, 12, 2, 4, 17.99),
    (5, 16, 2, 1, 3.99),
    (6, 2, 3, 6, 2.99),
    (7, 6, 3, 2, 6.99),
    (8, 15, 4, 3, 4.29),
    (9, 10, 4, 5, 5.99),
    (10, 5, 5, 2, 6.99),
    (11, 19, 5, 1, 9.99),
    (12, 9, 6, 4, 2.19),
    (13, 8, 6, 2, 2.99),
    (14, 18, 7, 3, 12.99),
    (15, 14, 7, 1, 2.99),
    (16, 20, 8, 2, 4.99),
    (17, 11, 8, 3, 4.99),
    (18, 4, 9, 5, 15.99),
    (19, 17, 9, 2, 6.99),
    (20, 13, 10, 4, 2.99);
