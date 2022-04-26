create database db_generation_game_online;

USE db_generation_game_online;

create table tb_classes(
id bigint auto_increment,
funcao varchar(255) not null,
dano float not null,
defesa float not null,
primary key (id)
);

INSERT INTO tb_classes (funcao, dano, defesa) VALUES ("Duelista", 2000, 1500);
INSERT INTO tb_classes (funcao, dano, defesa) VALUES ("Controlador", 800, 1500);
INSERT INTO tb_classes (funcao, dano, defesa) VALUES ("Sentinela", 700, 1500);
INSERT INTO tb_classes (funcao, dano, defesa) VALUES ("Iniciador", 1000, 1500);
INSERT INTO tb_classes (funcao, dano, defesa) VALUES ("Controlador 2", 800, 1500);


create table tb_personagens(
id bigint auto_increment,
nome varchar(255) not null,
habilidade varchar(255) not null,
ult varchar(255) not null,
jogadores int not null,
classes_id bigint,
primary key (id),
FOREIGN KEY (classes_id) references tb_classes(id)
);

-- registro
insert into tb_personagens (nome, habilidade, ult, jogadores, classes_id)
values ("Viper", "Cortina Tóxica", "Poço peçonhento", 5, 2);

insert into tb_personagens (nome, habilidade, ult, jogadores, classes_id)
values ("Phoenix", "Mãos quentes", "Renascimento", 5, 1);

insert into tb_personagens (nome, habilidade, ult, jogadores, classes_id)
values ("Sova", "Flecha", "Fúria do Caçador", 5, 4);

insert into tb_personagens (nome, habilidade, ult, jogadores, classes_id)
values ("Sage", "Orbe curativo", "Ressureição", 5, 3);

insert into tb_personagens (nome, habilidade, ult, jogadores, classes_id)
values ("Raze", "Cartuchos de tinta", "Estraga Prazeres", 5, 1);

insert into tb_personagens (nome, habilidade, ult, jogadores, classes_id)
values ("Omen", "Manto Sombrio", "Salto das sombras", 5, 2);

insert into tb_personagens (nome, habilidade, ult, jogadores, classes_id)
values ("Neon", "Equipamento Voltaico", "Sobrecarga", 5, 1);

insert into tb_personagens (nome, habilidade, ult, jogadores, classes_id)
values ("Chamber", "Rendezvous", "Tour de Force ", 5, 3);

-- seleção
select * from tb_classes WHERE dano > 2000;

select * from tb_classes WHERE defesa BETWEEN 1000 AND 2000;

-- selação de personagem com a letra C
select * from tb_personagens WHERE nome like "%C%";

select * from tb_classes inner join tb_personagens
on tb_classes.id = tb_personagens.id;

select * from tb_personagens inner join tb_classes 
on tb_classes.id = tb_personagens.classes_id 
where tb_classes.funcao = "Duelista";

select * from tb_personagens;