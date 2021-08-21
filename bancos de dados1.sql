create database db_doceria;

use db_doceria;

create table tb_produtos(
id bigint auto_increment,
nome varchar(200) not null,
valor float not null,
validade float,
sabor char, 
primary key (id)
);

select * from tb_produtos;
insert into tb_produtos(nome,valor,validade,sabor)value("Bolo Brigadeiro", 30.00, 03.11, "D");
insert into tb_produtos(nome,valor,validade,sabor)value("Cento de Salgados", 100.00, 04.08, "S");
insert into tb_produtos(nome,valor,validade,sabor)value("Cento de empada", 200.00, 07.11, "S");
insert into tb_produtos(nome,valor,validade,sabor)value("Cento Hot-dogs", 400.00, 03.12, "S");
insert into tb_produtos(nome,valor,validade,sabor)value("Festa Salgada", 520.00, 13.01, "S");
insert into tb_produtos(nome,valor,validade,sabor)value("Festa Doce", 580.00, 09.05, "D");
insert into tb_produtos(nome,valor,validade,sabor)value("brigadeirão", 20.00, 03.01, "D");

select * from tb_produtos where valor < 500.00;
select * from tb_produtos where valor > 500.00;
