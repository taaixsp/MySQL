use db_escola;

create table tb_estudantes(
id bigint auto_increment,
nome varchar (255) not null,
idade int not null,
serie int not null,
nota decimal (3,2) not null,
responsavel varchar (255) not null,
primary key (id));

select * from tb_estudantes