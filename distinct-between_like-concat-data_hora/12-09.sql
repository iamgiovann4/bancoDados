use loja;
select * from compras;

select distinct(uf)
from clientes;

select nome, nascimento
from clientes
where nascimento between '2000-01-01' and '2000-12-31'
order by nascimento;

select salario
from vendedores
order by salario;

select registro, nome, salario, comissao
from vendedores
where salario between 1000 and 2000;

select * from clientes
where nome between 'Andre' and 'Gabrielle';

select nome from clientes
where nome between 'Giovanna' and 'Vitor'
order by nome;

select * from compras
where hora between '00:00' and '6:00'
order by hora;

select *
from clientes
where nome like 'V%';

select *
from clientes
where nome like '_V%';

select *
from clientes
where nome like 'A__S%';

select *
from clientes
where nascimento like '____-02-__';

select *
from clientes
where nascimento like '____-02-__' or
	  nascimento like '____-06-__';
      
select * from compras;

select * 
from compras
where status like '%\%%'; 
/*comece com qualquer coisa, depois tenha o '%', e por ultimo termine com qualquer coisa.*/

/*Exercício - slide 06*/

select distinct(sexo)
from clientes;

select distinct(cidade)
from clientes;

select distinct(nascimento)
from clientes
order by nascimento;

select comissao from vendedores;

select distinct(status)
from compras;

/*Exercício - slide 10*/

select cpf, nome, nascimento
from clientes
where nome between 'Abbie Addenbrooke' and 'Justis Shailer' and 
	  nascimento between '2000-01-01' and '2000-06-01';
      
select * from vendedores
where sexo = 'F' and 
	  comissao between '10\%' and '15\%';

select *
from compras
where data between '2021-01-01' and '2021-01-03' and
	  status <> 'Suspenso' and status <> 'Cancelado';
      
/*Exercício - slide 17*/

/*select cpf, nome, nascimento
from clientes
where nome like 'A%' or
	  nome like 'J%' and
      nascimento between '2000-01-01' and '2000-06-01'
      order by nome;*/
      
select * from vendedores
where nome like 'L% M%';

select nome, descricao 
from produtos
where descricao like 'ut ____ %';

/*=============================================================*/
/*Data e Hora*/

select nome as Nome, nascimento as Nascimento, day(nascimento) as Dia, 
						 month(nascimento) as Mês, 
						 year(nascimento) as Ano
from clientes
where year(nascimento) = 2000;


/*concat - Juntar*/

select nome, nascimento, concat(day(nascimento), '/', month(nascimento), '/', year(nascimento)) as nascimentoBR
from clientes
where year(nascimento) = 2000;

select hour(hora) as Horas,
	   minute(hora) as Minutos,
	   second(hora) as Segundos
from compras;

select now(), sleep(5), now(); 
select sysdate(), sleep(5), sysdate();

select *, data + interval 10 year from compras;
select *, data + interval 10 month from compras;
select *, data + interval 10 day from compras;

select *, data - interval 10 year from compras;
select *, data - interval 10 month from compras;
select *, data - interval 10 day from compras;

describe compras;

select *, data + interval 10 hour from compras;

select now() as hoje, 
				nascimento, datediff(now(), nascimento) as Diferença,
                datediff(now(), nascimento) div 365
from clientes;

select hora, timediff(hora, '10:00:00') as horadiff
from compras;

/*Exercício - slide 35*/

select nome, endereco, sexo
from clientes
where sexo is null;

select nome, endereco, salario
from clientes
where salario is null;

/*Exercício - slide 36*/

select * from compras;

select distinct(codigo)
from compras
order by codigo;

select nome, nascimento
from clientes;