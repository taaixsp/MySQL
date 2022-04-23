use db_ecommerce;
create table tb_produtos(
	id bigint auto_increment,
    produto varchar (255) not null,
    marca varchar (255) not null,
    preco decimal (6,2) not null,
    peso decimal (6,2) not null,
    estoque int not null,
    primary key (id)
    );
    
    select * from tb_produtos
    