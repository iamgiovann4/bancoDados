use loja;

select * from clientes;
select * from vendedores;
select * from produtos;
select * from compras;

select cpf, nome, nascimento from clientes;

select nome, sexo, salario from vendedores;

select nome, preco from produtos;

select codigo, data, hora, status from compras;

select cpf, nome, nascimento 
from clientes
where sexo = 'F';

select cpf, sexo, salario
from vendedores
where  nascimento > '2000-12-31';

select nome, preco
from produtos
where preco >= 1000 and preco <= 2000;

select codigo, data, hora, status
from compras
where quantidade >= 3;

select * from clientes
where sexo is null;

select cpf, nome, nascimento 
from clientes
where sexo = 'F' and nascimento <= '2004-09-05';

select * from vendedores
where sexo = 'M' and salario > 3000;

select * from produtos
where preco >= 1500 and preco <= 2000 and nome <> 'CELULAR LG';

select * 
from compras
where data = '2021-01-02' and quantidade <= 2;

select * from clientes
where sexo is null;

select * from clientes 
where sexo is null and salario is null;

select *
from clientes
order by nome asc;

select  * from compras
order by data desc, hora asc;

select *
from vendedores
limit 5, 3;

select *
from clientes
order by nascimento asc;

select *
from produtos
where preco >= 1000 and preco <= 1500
order by validade desc;

select * 
from vendedores
where sexo = 'F' and salario < 5000
order by comissao desc;

select *
from compras
where quantidade > 2
order by data desc, hora asc;

select *
from vendedores
where sexo = 'F'
order by salario desc
limit 3;

select *
from clientes
where salario is not null
order by salario asc
limit 10, 5;

select nome, preco
from produtos
limit 20, 5;

select cpf, data, hora 
from compras
where numero = 199
order by numero desc
limit 3;
