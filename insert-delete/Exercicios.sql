use loja;

insert into clientes (cpf, rg, nome, sexo, nascimento, endereco, cidade, uf, telefone)
values (15926348732, 'rj654987123', 'João da Silva', 'M', '1981-12-05', 'Rua dos Ferroviários, 9871, Centro', 'Campos', 'RJ', 551435632145);

insert into clientes (cpf, rg, nome, sexo, nascimento, endereco, cidade, uf, telefone, salario)
values (55566889911, 'es2654987', 'Maria do Socorro', 'F', '1999-09-22', 'Rua Manoel Seraphim, 333, Vila Ema', 'Vitória', 'ES', 553556698745, 5000);

 insert into clientes (cpf, rg, nome, sexo, nascimento, endereco, cidade, uf, telefone)
 values (22255544478, 'mg3265487', 'Talita Laia', 'F', '2015-01-02', 'Rua Prof André Duarte, 55, Pampulha', 'Belo Horizonte', 'MG', 553665498755);
 
 select * from clientes;
 
delete from clientes
where cpf = 15926348732;

delete from clientes
where cpf = 55566889911;

delete from clientes
where cpf = 22255544478;

 delete from clientes;
 
 describe clientes;