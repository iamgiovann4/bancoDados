create database store;

use store;

create table clientes(
	cpf 			int 				primary key,
    rg 				varchar(11) 		unique not null,
    nome 			varchar(10) 		not null,
    nascimento 		date,
    sexo 			char,
    salario 		decimal(10,2),
    uf 				char(2) 			not null,
    telefone 		int 				not null,
    endereco 		varchar(20) 		not null,
    cidade 			varchar(20) 		not null
);

create table produtos(
	codigo serial,
    nome varchar(10) not null,
    descricao varchar(30) not null,
    preco decimal(10,2) not null,
    peso decimal(10,2) not null,
    dimensoes decimal(10,2) not null,
    validade date not null
);

create table clienteproduto(
	cpf int,
    codigo serial,
    data_compra date not null,
    hora_compra time not null,
    quantidade int not null,
    entregue boolean,
    constraint FK_CLIENTES_CPF foreign key (cpf) references clientes(cpf),
    constraint FK_PRODUTOS_CODIGO foreign key (codigo) references produtos(codigo)
);

drop table clienteproduto;