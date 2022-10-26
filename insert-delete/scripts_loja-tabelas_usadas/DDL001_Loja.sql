DROP DATABASE IF EXISTS loja;

CREATE DATABASE loja;

USE loja;

CREATE TABLE clientes (
    cpf        BIGINT UNSIGNED   PRIMARY KEY,
    rg         VARCHAR(11)       UNIQUE NOT NULL,
    nome       VARCHAR(50)              NOT NULL,
    nascimento DATE                     NOT NULL,
    sexo       CHAR,
    endereco   VARCHAR(50)              NOT NULL,
    cidade     VARCHAR(20)              NOT NULL  DEFAULT 'Caraguatatuba',
    uf         VARCHAR(2)               NOT NULL,
    telefone   BIGINT UNSIGNED          NOT NULL,
    salario    DECIMAL(10,2)
);

CREATE TABLE vendedores (
    registro   BIGINT UNSIGNED   PRIMARY KEY AUTO_INCREMENT,
    cpf        BIGINT UNSIGNED   UNIQUE NOT NULL,
    nome       VARCHAR(50)              NOT NULL,
    nascimento DATE                     NOT NULL,
    sexo       CHAR                     NOT NULL,
    telefone   BIGINT UNSIGNED          NOT NULL,
    salario    DECIMAL(10,2)            NOT NULL,
    comissao   DECIMAL(10,2)            NOT NULL
);

CREATE TABLE produtos (
    numero     BIGINT UNSIGNED   PRIMARY KEY AUTO_INCREMENT,
    nome       VARCHAR(20)       NOT NULL,
    descricao  VARCHAR(100)      NOT NULL,
    preco      DECIMAL(10,2)     NOT NULL,
    peso       DECIMAL(10,2),
    dimensoes  VARCHAR(15),
    validade   DATE              NOT NULL
);

CREATE TABLE compras (
    codigo     INTEGER           PRIMARY KEY AUTO_INCREMENT,
    cpf        BIGINT UNSIGNED   NOT NULL,
    registro   BIGINT UNSIGNED   NOT NULL,
    numero     BIGINT UNSIGNED   NOT NULL,
    data       DATE              NOT NULL,
    hora       TIME              NOT NULL,
    quantidade INT               NOT NULL,
    status     VARCHAR(20)       NOT NULL,
    CONSTRAINT FK_CLIENTES   FOREIGN KEY (cpf)      REFERENCES clientes(cpf),
    CONSTRAINT FK_VENDEDORES FOREIGN KEY (registro) REFERENCES vendedores(registro),
    CONSTRAINT FK_PRODUTOS   FOREIGN KEY (numero)   REFERENCES produtos(numero)
);