use banco;



select * from clientegerente;
select * from transacaoconta;

select * from clientes;

/*Exercício 01*/
select c.cpf, c.pnome, cc.numero
from clientes c inner join clienteconta cc on cc.cpf = c.cpf
				where sexo = 'F';

/*Exercício 02*/
select g.registro, g.pnome, c.cpf, cc.numero
from gerentes g inner join clientegerente cg on g.registro = cg.registro
				inner join clientes c on cg.cpf = c.cpf
                inner join clienteconta cc on c.cpf = cc.cpf;

select * from contas;
select * from transacoes;

/*Exercício 03*/
select ct.numero as num_conta, ac.tdata, t.numero as num_transacoes
from transacoes t inner join transacaoconta ac on t.numero = ac.numerot
				  inner join contas ct on ac.numeroc = ct.numero
                  where ct.numero = '391';

select * from agencias;
select * from agenciaconta;

/*Exercício 04*/
select a.numero as num_agencia, a.nome as nome_agencia, ct.numero as num_conta
from agencias a inner join agenciaconta ac on a.numero = ac.numeroa
				inner join contas ct on ac.numeroc = ct.numero
                where a.nome = 'Bluejay';

/*Exercício 05*/
select c.cpf, c.pnome, cc.numero, cc.dataabertura, cc.horaabertura
from clientes c left outer join clienteconta cc 
				on c.cpf = cc.cpf
                where cc.numero is null;
                
/*Exercício 06*/
select *
from transacoes t inner join transacaoconta tc on t.numero = tc.numerot
				  inner join contas ct on tc.numeroc = ct.numero
                  inner join clienteconta cc on ct.numero = cc.numero;
                  
/*Exercício 07*/
select * 
from contas ct left outer join agenciaconta ac on ct.numero = ac.numeroc
			   where ac.numeroa is null;
               
/*Exercício 08*/
select *
from contas ct left outer join transacaoconta tc on ct.numero = tc.numeroc
			   where tc.numerot is null;

/*Exercício 09*/
/* O banco precisa de uma lista com o nome de todas as agências e seus respectivos clientes juntamente com o número da conta de cada um.*/
select a.nome as agencia, c.pnome as clientes, cc.numero as numero_conta 
from agencias a inner join agenciaconta ac on a.numero = ac.numeroa
				inner join contas ct on ac.numeroc = ct.numero
                inner join clienteconta cc on ct.numero = cc.numero
                inner join clientes c on cc.cpf = c.cpf;

select * from tiposreg;

/*Exercício 10*/
/*Mostre as transações do tipo crédito feitos pelas contas das agências International e Gerald entre dezembro de 2020 e fevereiro de 2021.*/
select ct.tipo, a.nome, tc.tdata
from transacoes t inner join transacaoconta tc on t.numero = tc.numerot
				  inner join contas ct on tc.numeroc = ct.numero
                  inner join agenciaconta ac on ct.numero = ac.numeroc
                  inner join agencias a on ac.numeroa = a.numero
				  where ct.tipo = "1" and 
                  (a.nome = "International" or
                  a.nome = "Gerald") and
                  tc.tdata between '2020-12-01' and '2021-02-29';

select * from transacoes;

/*Exercício 11*/
/*As transações do tipo débito dos clientes de Minas Gerais no ano de 2021.*/
select t.tipo, c.uf, tc.tdata
from transacoes t inner join transacaoconta tc on t.numero = tc.numerot
			   inner join contas ct on tc.numeroc = ct.numero
               inner join clienteconta cc on ct.numero = cc.numero
               inner join clientes c on cc.cpf = c.cpf
               where (t.tipo = '2' or t.tipo = '3' or t.tipo = '4') and 
               c.uf = "MG" and
               tc.tdata between '2021-01-01' and '2021-12-31';

                  
	
                  



                
                


