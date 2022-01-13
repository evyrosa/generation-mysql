CREATE DATABASE db_elitewayschool;

USE db_elitewayschool;
DROP TABLE alunos;
CREATE TABLE alunos (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (20),
endereço VARCHAR (40),
telefone BIGINT,
notas FLOAT NOT NULL,
idade INT 
);
INSERT INTO alunos (nome, endereço, telefone, notas, idade)
VALUES ( 'gabriela', 'rua rosa', '1234567', '10', '20'),
('edgar', 'rua verde', '8907765', '9','20'),
('tiago', 'rua laranja', '2345678', '9', '20'),
('evelyn','rua azul', '9853678', '9', '20');

SELECT * FROM alunos;
SELECT * FROM alunos WHERE notas <7;
SELECT * FROM alunos WHERE notas >7;





