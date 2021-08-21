create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id int auto_increment,
genero varchar(255) not null,
atributo varchar(255) not null,
primary key (id)
);
insert into tb_classe(genero,atributo) values ("Livre","Rapidez");
insert into tb_classe(genero,atributo) values ("Luta","Força");
insert into tb_classe(genero,atributo) values ("Combate","Rapidez");

select * from tb_classe;


create table tb_personagem(
id int auto_increment,
nome varchar(255) not null,
idade int,
jogo varchar(255) not null,
categoria varchar(255) not null,
classe_id int,
ataque int,
defesa int,
primary key (id),
foreign key (classe_id) references tb_classe (id)
);


insert into tb_personagem (nome, idade, jogo,categoria,classe_id,ataque,defesa) values ("Mario",45 ,"Super Mario","Principal",1,1300,900);
insert into tb_personagem (nome, idade, jogo,categoria,classe_id,ataque,defesa) values ("Luigi",45 ,"Super Mario","Agregado",1,2700,800);
insert into tb_personagem (nome, idade, jogo,categoria,classe_id,ataque,defesa) values ("Peach",25 ,"Super Mario","Objetivo",1,1300,600);
insert into tb_personagem (nome, idade, jogo,categoria,classe_id,ataque,defesa) values ("Graves",38 ,"League of Legends","Campeão",2,2700,900);
insert into tb_personagem (nome, idade, jogo,categoria,classe_id,ataque,defesa) values ("Akali",27 ,"League of Legends","Campeã",2,3000,800);
insert into tb_personagem (nome, idade, jogo,categoria,classe_id,ataque,defesa) values ("Ragnarok",52 ,"Fortnite","Lutador",3,2700,900);
insert into tb_personagem (nome, idade, jogo,categoria,classe_id,ataque,defesa) values ("Huntress",37 ,"Fortnite","Lutador",3,1600,900);,

select * from tb_personagem;

select * from tb_personagem where ataque > 2000;

select * from tb_personagem where defesa between 1000 and 2000;

select * from tb_personagem where nome like "%c%";

select * from tb_personagem inner join tb_classe 
on tb_personagem.classe_id = tb_classe.id;

select * from tb_personagem.nome, tb_classe.nome from tb_personagem inner join tb_classe
on tb_personagem.classe_id = tb_classe.id
where tb_classe.id = 2;








