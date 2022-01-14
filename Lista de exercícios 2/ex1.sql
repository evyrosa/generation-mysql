CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classe(
	id_Classe INT PRIMARY KEY AUTO_INCREMENT,
    classe VARCHAR(15),
    poderzinho VARCHAR(30)
    
);

INSERT INTO tb_classe(classe, poderzinho) VALUES
("bruxa","magia"),
("vampiro","brilhar"),
("lobisomem","virar cachorro"),
("ciclope","lazerzinho"),
("gesonel","mestre dos disfarces");



CREATE TABLE tb_personagem (
	id_Personagem INT PRIMARY KEY AUTO_INCREMENT,
    nomePersonagem VARCHAR(30) NOT NULL,
    idadePersonagem INT NOT NULL,
    ataque FLOAT ,
    defesa FLOAT,
   id_Classe INT,
    FOREIGN KEY (id_Classe) REFERENCES tb_classe(id_Classe)
);



INSERT INTO tb_personagem(nomePersonagem,
idadePersonagem,ataque,defesa,id_Classe)
VALUES("bonnie", "22","3227","655", "1"),
("edward","120","5000","1000","2"),
("jacob","15","2000","700","3"),
("ciclope","130","500","300","4"),
("gesonel","27","3000","1000","5"),
("vovo juju","67","2000","600","2"),
("seu madruga", "64", "1000", "400", "4"),
("papai noel", "500", "840", "500", "1");


SELECT * FROM tb_personagem;
SELECT * FROM tb_classe;

/*Faça um select que retorne os personagens com o poder de ataque maior do que 2000.*/
SELECT * FROM tb_personagem
WHERE ataque >= 2000;

/*
Faça um select trazendo  os personagens com poder de defesa entre 1000 e 2000.
*/
SELECT * FROM tb_personagem 
WHERE defesa >= 1000 AND  defesa <= 2000;

/*Faça um select  utilizando LIKE buscando os personagens com a letra C.*/
SELECT * FROM tb_personagem
WHERE nomePersonagem LIKE 'c%';


/* Faça um um select com Inner join entre  tabela classe e personagem.*/
SELECT nomePersonagem,idadePersonagem,ataque,defesa,
tb_Classe.id_Classe,tb_Classe.classe,tb_Classe.poderzinho
FROM tb_personagem
INNER JOIN tb_Classe
ON tb_personagem.id_Classe = tb_Classe.id_Classe;


/* Faça um select onde traga todos os personagem de uma classe específica 
(exemplo todos os personagens que são arqueiros). */
SELECT * FROM tb_personagem
WHERE id_Classe = 1;