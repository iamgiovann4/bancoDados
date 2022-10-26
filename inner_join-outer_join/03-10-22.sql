use loja;

select * from clientes;
select * from compras;

select *
from clientes c inner join compras cp on c.cpf = cp.cpf
where c.cpf = 78325434079;

select * 
from vendedores v inner join compras c on v.registro = c.registro;

select *
from produtos p inner join compras c on p.numero = c.numero;

select c.cpf, c.nome, v.nome
from clientes c inner join compras cp on c.cpf = cp.cpf
				inner join vendedores v on v.registro = cp.registro;
                
select c.cpf, c.nome, p.nome, p.preco
from clientes c inner join compras cp on c.cpf = cp.cpf
				inner join produtos p on p.numero = cp.numero;
                
/*terminar os exercícios*/

/*OUTER JOIN*/
/*Primeiro ele fará o inner join, após terminar as igualdades ele irá adicionar as linhas que não entraram na resposta da tabela clinete, porque ela está a esquerda*/

/*Left*/
select * 
from clientes c left outer join compras cp on c.cpf = cp.cpf
where cp.codigo is null; 

/*Right: inverte as tabelas*/
select * 
from compras cp right outer join clientes c on c.cpf = cp.cpf
where cp.codigo is null; 

/*Exercícios OUTER JOIN*/
select * from vendedores;
select * from compras;

select * 
from vendedores v left outer join compras cp on v.registro = cp.registro
where codigo is null;

insert into vendedores (cpf, nome, nascimento, sexo, telefone, salario, comissao) values (0, 'Giovanna');

select *
from compras cp left outer join produtos p on cp.numero = p.numero
where p.numero is null;

select * 
from produtos p left outer join compras cp on p.numero = cp.numero
where cp.numero is null;

/*terminar os exercícios*/


