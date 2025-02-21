 SELECT * FROM 	tb_classes;
 
 INSERT INTO tb_classes (nome_classe, descricao, habilidade_especial) VALUES
('Guerreiro', 'Especialista em combate corpo a corpo', 'Furia do Berserker'),
('Mago', 'Especialista em magias de longo alcance', 'Bola de Fogo'),
('Arqueiro', 'Especialista em ataques a distancia', 'Chuva de Flechas'),
('Curandeiro', 'Especialista em suporte e cura', 'Cura Divina'),
('Assassino', 'Especialista em ataques furtivos', 'Ataque das Sombras');

INSERT INTO tb_personagens (nome_personagem, defesa, vida, ataque, id_classe, data_criacao) VALUES
('Aragorn', 1500, 2000, 2500, 1, '2023-10-01'),
('Gandalf', 2200, 1800, 1800, 2, '2023-10-02'),
('Legolas', 1300, 1500, 2200, 3, '2023-10-03'),
('Elrond', 2100, 1900, 1900, 4, '2023-10-04'),
('Sauron', 2500, 3000, 3000, 5, '2023-10-05'),
('Frodo', 1000, 1200, 1500, 1, '2023-10-06'),
('Galadriel', 2300, 2100, 2100, 2, '2023-10-07'),
('Boromir', 1400, 1600, 2300, 1, '2023-10-08');

 SELECT * FROM 	tb_personagens;
 
 -- Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000.
	select * FROM tb_personagens where ataque >2000;
    
    -- Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000.
    
	select * FROM tb_personagens where defesa >= 1000 and  defesa <= 2000 ;
    
    -- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes, onde traga apenas os personagens que pertençam a uma classe específica (Exemplo: Todes os personagens da classe dos arqueiros).
    
SELECT 
    p.nome_personagem, 
    p.ataque, 
    p.defesa, 
    c.nome_classe, 
    c.descricao, 
    c.habilidade_especial
FROM 
    tb_personagens p
INNER JOIN 
    tb_classes c
ON 
    p.id_classe = c.id_classe
WHERE 
    c.nome_classe = 'Arqueiro';
    
INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Tradicionais', 'Pizzas com sabores clássicos e tradicionais'),
('Especiais', 'Pizzas com combinações exclusivas e ingredientes premium'),
('Vegetarianas', 'Pizzas sem carne, com foco em vegetais e queijos'),
('Doces', 'Pizzas com sabores doces, ideais para sobremesa'),
('Veganas', 'Pizzas sem nenhum ingrediente de origem animal');  



INSERT INTO tb_pizzas (nome_pizza, ingredientes, preco, tb_categorias_id) VALUES
('Margherita', 'Molho de tomate, mussarela, manjericão', 45.00, 1),
('Calabresa', 'Molho de tomate, mussarela, calabresa, cebola', 50.00, 1),
('Quatro Queijos', 'Molho de tomate, mussarela, gorgonzola, parmesão, catupiry', 55.00, 2),
('Vegetariana', 'Molho de tomate, mussarela, pimentão, cebola, champignon, azeitonas', 60.00, 3),
('Chocolate com Morango', 'Chocolate, morangos frescos', 40.00, 4),
('Vegana de Abóbora', 'Abóbora assada, cebola caramelizada, tofu', 65.00, 5),
('Frango com Catupiry', 'Molho de tomate, mussarela, frango desfiado, catupiry', 58.00, 2),
('Portuguesa', 'Molho de tomate, mussarela, presunto, ovo, cebola, azeitonas', 52.00, 1);

select * FROM tb_categorias;
select * FROM tb_pizzas;

-- Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.
select * FROM tb_pizzas where preco > 45.00;
-- Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
select * FROM tb_pizzas where preco >= 50.00 and preco <= 100.00;
-- Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome.
SELECT * FROM tb_pizzas WHERE nome_pizza LIKE '%M%';

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, onde traga apenas as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doce).
SELECT 
    p.nome_pizza,
    p.ingredientes,
    p.preco,
    c.nome_categoria
FROM 
    tb_pizzas p
INNER JOIN 
    tb_categorias c
ON 
    p.tb_categorias_id = c.id
WHERE 
    c.nome_categoria = 'Doce'