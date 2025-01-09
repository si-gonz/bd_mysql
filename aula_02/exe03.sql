CREATE DATABASE Escola;
USE Escola;

CREATE TABLE tb_estudantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    turma VARCHAR(50) NOT NULL,
    nota DECIMAL(4, 2) NOT NULL,
    data_matricula DATE NOT NULL
);

INSERT INTO tb_estudantes (nome, idade, turma, nota, data_matricula) VALUES
    ("Ana Silva", 14, "8A", 8.5, "2023-02-10"),
    ("Carlos Souza", 15, "9B", 6.7, "2023-03-12"),
    ("Beatriz Oliveira", 13, "7C", 9.0, "2023-01-20"),
    ("João Santos", 16, "9A", 5.5, "2023-04-15"),
    ("Mariana Costa", 14, "8B", 7.8, "2023-02-25"),
    ("Lucas Pereira", 15, "9C", 6.2, "2023-03-05"),
    ("Fernanda Lima", 13, "7A", 8.9, "2023-01-30"),
    ("Rafael Alves", 14, "8C", 7.1, "2023-02-18");
    
    SELECT * FROM tb_estudantes;
    
    SELECT * FROM tb_estudantes WHERE nota > 7.0;
    
    SELECT * FROM tb_estudantes WHERE nota < 7.0;
    
	SET SQL_SAFE_UPDATES = 0;
	UPDATE tb_estudantes
	SET nota = 9.5
	WHERE nome = "João Santos";
    
	SET SQL_SAFE_UPDATES = 1;