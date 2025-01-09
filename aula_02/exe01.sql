create database db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	datanascimento date,
    cargo VARCHAR (255),
	departamento varchar (255),
    PRIMARY KEY (id)
);

alter table tb_colaboradores change datanascimento salario decimal (10,2);

INSERT INTO tb_colaboradores(nome, salario, cargo, departamento) 
VALUES ("Simone Gonzaga", 5000.00, "Desenvolvedora", "TI"),
("Cleiton Klechen", 8000.00, "Product Owner", "TI"),
("Patricia Gonzaga", 4000.00, "Psicologa", "RH"),
("Geraldo Gonzaga", 16780.00, "Gerente TI", "TI"),
("Marcia Santos", 5000.00, "Desenvolvedora", "TI"),
("Rubi Gonzaga", 3000.00, "Estagiária", "Contabilidade");

UPDATE tb_colaboradores 
SET salario = 2000.00 
WHERE salario < 4000.00 AND id > 0;

select * from tb_colaboradores;

/* 1. Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000*/

select * from tb_colaboradores where salario > 2000.00;

/*Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000.*/

select * from tb_colaboradores where salario < 2000.00;


