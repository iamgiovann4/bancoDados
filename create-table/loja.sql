create database loja;

use loja;

create table clientes(
	cpf 		int 			primary key,
    rg 			varchar(11) 	unique not null,
    nome 		varchar(20) 	not null,
    endereco 	varchar(20) 	not null,
    cidade 		varchar(20) 	not null,
    uf 			char(2) 		not null,
    telefone 	int 			not null,
    sexo 		char,
    nascimento 	date 			not null,
    salario 	decimal(10,2)
);

show tables;

describe clientes;

show create table clientes;