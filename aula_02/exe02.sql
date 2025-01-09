create database db_ecommerce;

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	quantidade INT,
    datavalidade DATE,
	preco DECIMAL NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("Arroz", 56, "2025-03-15", 38.00),
("Feijão", 38, "2026-11-15", 14.77),
("Sal", 45, "2028-12-15", 7.98),
("Açucar", 67, "2025-08-15", 5.23),
("Molho Tomate", 134, "2025-09-15", 6.00),
("Manteiga", 80, "2027-08-15", 13.99), 
("Oleo", 345, "2025-12-15", 5.67), 
("Lentilha", 247, "2025-04-15", 12.67);

ALTER TABLE tb_produtos MODIFY preco DECIMAL(10, 2);

select *from tb_produtos;

select * from tb_produtos where preco > 20.00;

select * from tb_produtos where preco < 20.00;
