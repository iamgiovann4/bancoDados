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
/*Exercício 10*/
/*Exercício 11*/
/*Exercício 12*/
/*Exercício 13*/
/*Exercício 14*/
/*Exercício 15*/
                  
	
                  



                
                


