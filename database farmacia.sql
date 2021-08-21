DROP DATABASE IF EXISTS db_farmacia_do_bem;
CREATE DATABASE IF NOT EXISTS db_farmacia_do_bem
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria(
id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
antibiotico VARCHAR(255),
vitamina VARCHAR(255)
);
 
INSERT INTO tb_categoria(antibiotico,vitamina) VALUES
('Zitromax','Centrun'),
('Amoxil','Pharmaton'),
('Cefadroxil','Redoxom'),
('Cefalexina','Gerovital'),
('Rocefin','Vitergan Zinco Plus');

SELECT * FROM tb_categoria;

CREATE TABLE tb_produtos(
id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
estoque INT,
dosagem VARCHAR(255),
laboratorio VARCHAR(255),
valor_unid DECIMAL(6,2),
id_categoria INT NOT NULL,
FOREIGN KEY(id_categoria) REFERENCES tb_categoria(id)
);

INSERT INTO tb_produtos(estoque,dosagem,laboratorio,valor_unid,id_categoria) VALUES
(20,'500mg','Bayer',30.00,1),
(18,'2mg','Roche',43.00,2),
(4,'500mg','Bayer',36.80,1),
(7,'50mg','Marjan Farman',39.00,3),
(10,'100mg','Marjan Farman',67.50,3),
(15,'1g','Ems',60.00,5),
(15,'1g','Pfizer',20.99,4),
(30,'1g','Pfizer',27.99,4);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE valor_unid > 50.00;

SELECT * FROM tb_produtos WHERE valor_unid BETWEEN 3.00 AND 60.00;

SELECT * FROM tb_produtos WHERE laboratorio LIKE "%b%";

SELECT antibiotico AS antibiótico, dosagem, valor_unid AS valor
FROM tb_categoria a
INNER JOIN tb_produtos b
ON a.id = b.id_categoria;

SELECT vitamina FROM tb_categoria ORDER BY vitamina; -- seleciona todos os dados da coluna e organiza em ordem alfabetica














