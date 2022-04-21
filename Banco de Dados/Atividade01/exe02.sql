-- Crie uma tabela de colaboradores e 
-- determine 5 atributos relevantes dos colaboradores para se trabalhar com o serviço deste RH.

create database db_rh;
use db_rh;
create table tb_colaboradores(
id bigint auto_increment,
nome varchar (255) not null,
data_de_nascimento date not null,
cpf int not null,
endereco varchar (255) not null,
salario decimal not null, 
primary key (id));

select * from tb_colaboradores;

 