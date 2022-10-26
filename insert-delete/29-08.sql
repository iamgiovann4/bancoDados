select * from clientes;

insert into clientes
values (12345678911, 'MG555555', 'André Duarte', '1971-09-08', 'M', 'Rua A, 74', 'Maria da Fé', 'MG', 5535999999999, 5000);

insert into clientes (cpf, rg, nome, nascimento, endereco, cidade, uf, telefone)
values (98765432111, 'SP321654987', 'Ana Clara', '1985-02-01', 'Av Minas Gerais, 512', 'Caraguatatuba', 'SP', '5535999999988');

describe vendedores;

select * from vendedores;

insert into vendedores (cpf, nome, nascimento, sexo, telefone, salario, comissao)
values (11122233344, 'Jacinto Leite', '1988-01-02', 'M', 3522215547, 6000, 10);

insert into clientes (cpf, rg, nome, nascimento, endereco, uf, telefone)
values (11111111110, 'mg001122335', 'André Duarte', '1971-01-01', 'rua e', 'mg', '35123456');