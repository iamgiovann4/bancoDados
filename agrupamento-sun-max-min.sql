use banco;

describe clientes;

select * from clientes;

select count(*) as qtd
from clientes;

select count(*) as qtd
from clientes
where sexo = 'F';

select sum(salario) as total
from gerentes;

select max(salario) as maior,
	   min(salario) as menor
       from clientes;
       
select max(pnome) as ultimo,
	   min(pnome) as primeiro
       from clientes;

select max(nascimento) as mais_novo,
	   min(nascimento) as mais_velho
       from clientes;

select sum(salario) as total, count(salario) as contagem, avg(salario) as media_salarial
from clientes;

select sexo, count(*) as qtd
from clientes
group by sexo;

select pnome, count(pnome) as qtd
from clientes
group by pnome;

select year(now()) - year(nascimento) as idade, count(*) as quantidade
from clientes
where sexo = 'F'
group by idade;

select sexo, sum(salario) as somatoria
from clientes
group by sexo;

select uf, sexo, count(uf) as qtduf, year(now()) - year(nascimento) as idade,
		avg(salario) as mediasalarial
from clientes
group by uf, sexo, idade;

select * from gerentes;

select month(admissao) as mes, count(month(admissao)) as qtd
from gerentes
group by mes
having qtd > 2;
