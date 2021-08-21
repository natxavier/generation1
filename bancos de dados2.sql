create database db_secretariaEscolar;

use db_secretariaEscolar;

create table tb_estudantes(
id int auto_increment,
nome varchar(200) not null,
idade int,
nota float,
sexo char,
primary key (id)
);

select * from tb_estudantes;
insert into tb_estudantes(nome,idade,nota,sexo)value("Nicole", 25, 10, "F");
insert into tb_estudantes(nome,idade,nota,sexo)value("Natasha", 21, 6, "F");
insert into tb_estudantes(nome,idade,nota,sexo) values ("Andreia", 41, 9, "F");
insert into tb_estudantes(nome,idade,nota,sexo) values ("Railson", 48, 7, "M");
insert into tb_estudantes(nome,idade,nota,sexo) values ("Bruce", 5, 8, "M");
insert into tb_estudantes(nome,idade,nota,sexo) values ("Lincoln", 9, 7, "M");
insert into tb_estudantes(nome,idade,nota,sexo) values ("Ana Clara", 9, 7, "F");

select * from tb_estudantes where nota < 7;
select * from tb_estudantes where nota > 7;

update tb_estudantes set idade = 19 where id = 6;
tb_produtos