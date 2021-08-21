create database db_RH;

use db_RH;

create table tb_funcionarios
( id int auto_increment, 
  nome varchar(200) not null,
  idade int,
  sexo char,
  salario float,
  primary key (id)
);


select * from tb_funcionarios;
insert into tb_funcionarios (nome,idade,sexo,salario) values ( "Lincoln", 21, "M", 1800.00);
insert into tb_funcionarios (nome,idade,sexo,salario) values ( "Nicole", 25, "F", 1500.00);
insert into tb_funcionarios (nome,idade,sexo,salario) values ( "Bruce", 21, "M", 1800.00);
insert into tb_funcionarios (nome,idade,sexo,salario) values ( "Andreia", 41, "F", 3000.00);
insert into tb_funcionarios (nome,idade,sexo,salario) values ( "Railson", 48, "M", 2800.00);

select * from tb_funcionarios where salario < 2000.00;
select * from tb_funcionarios where salario > 2000.00;

update tb_funcionarios set salario = 3000.00 where id = 2;

