create database banco;

use banco;

create table clientes(
	cpf 		int 			primary key,
    rg 			varchar(11) 	unique not null,
    pnome 		varchar(10) 	not null,
    mnome 		varchar(10)		not null,
    unome 		varchar(10) 	not null,
    nascimento 	date 			not null,
    endereco 	varchar(20) 	not null,
    cidade 		varchar(20) 	not null,
    uf 			char(2) 		not null,
    telefone 	int 			not null,
    sexo 		char,
    salario 	decimal(10,2)
);

create table contas(
	numero 		int 			primary key,
    tipo 		int 			not null,
    senha 		varchar(10) 	not null,
    saldo 		decimal(10,2)
);

create table clienteconta(
	cpf 			int,
    numero 			int,
    dataabertura 	date 	not null,
    horaabertura 	time 	not null,
    constraint FK_CLIENTES_CPF foreign key (cpf) references clientes(cpf),
    constraint FK_CONTAS_NUMERO foreign key (numero) references contas(numero)
);

describe clienteconta;

drop table conta;

show create table clienteconta;

drop table clienteconta;