-- Criar banco de dados
CREATE DATABASE db_rh;

-- Seleciona o banco de dados
USE db_rh;

-- Criar tabela de funcionarios
-- Com o autoincrement, se o valor id não é inserido no comando insert,
-- um valor é atribuido automaticamente, incrementando a cada registro
CREATE TABLE funcionarios (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(40) NOT NULL,
    telefone BIGINT(11) NOT NULL,
	cargo VARCHAR(25) NOT NULL,
    salario DECIMAL(7,2) NOT NULL        
);

-- Inserir dados em funcionarios nas colunas informadas
INSERT INTO funcionarios (nome, telefone, cargo, salario)
VALUES ('Camila', '11943455566', 'Gerente', '1500.00');
INSERT INTO funcionarios (nome, telefone, cargo, salario)
VALUES ('Simone', '11946383579', 'Analista', '1800.00');
INSERT INTO funcionarios (nome, telefone, cargo, salario)
VALUES ('Francisco', '11997626788', 'Recepcionista', '2000.00');
INSERT INTO funcionarios (nome, telefone, cargo, salario)
VALUES ('Rebeca', '11933786538', 'Desenvolvedor', '2300.00');
INSERT INTO funcionarios (nome, telefone, cargo, salario)
VALUES ('João', '11942678977', 'Supervisor', '5000.00');

-- Selecionar  todos os dados da tabela funcionarios
SELECT * FROM funcionarios;

-- Selecionar tudo em funcionarios onde salario maior que 2000
SELECT * FROM funcionarios WHERE salario > 2000;

-- Selecionar tudo em funcionarios onde salario menor que 2000;
SELECT * FROM funcionarios WHERE salario < 2000;

-- Alterar dados especificados da tabela funcionarios onde id = 2
UPDATE funcionarios SET 
	nome = 'Maria',
    telefone = '11936789667',
	salario = '1800.00',
    cargo = 'Analista'
    WHERE id = 2;

-- Deletar registro em funcionarios onde id = 1
DELETE FROM funcionarios WHERE id = 1;