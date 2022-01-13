CREATE DATABASE db_brusinhashow ;

USE db_brusinhashow ;

CREATE TABLE produtos (
id INT PRIMARY KEY AUTO_INCREMENT,
fabricante VARCHAR (25) NOT NULL ,
produto VARCHAR (25) ,
cor VARCHAR (25) ,
tamanho VARCHAR (10),
preço FLOAT 
);

INSERT INTO  produtos ( fabricante, produto, cor, tamanho, preço) VALUES
( 'lojinha', 'brusinha', 'rosa', 'pp', '15.10') ,
( 'roupinha' , 'calça jeans', 'preta', 'xg', '80.01') ,
( 'lojona', 'meia', 'arco iris', 'm', '20.10') ,
( 'coisinhas', 'casaco', 'marrom', 'g', '150.10');

SELECT * FROM produtos ;

SELECT * FROM produtos WHERE preço < 500;
SELECT * FROM produtos WHERE preço > 500;

UPDATE produtos SET 
fabricante = 'lookinhos',
produto = 'saia',
cor = 'vermelha',
tamanho = 'm',
preço = '72.80'
WHERE id= 4;


