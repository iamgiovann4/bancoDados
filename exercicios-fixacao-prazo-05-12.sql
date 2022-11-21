use banco;

/* Selecione todos os clientes que moram em ‘Maria da Fé’ e nasceram nos anos 80 */
select * from clientes
where cidade = 'Maria da Fé' and
nascimento between '1980-01-01' and '1989-12-31';

/* Selecione todas as contas que são Conta Corrente */
select numero, tipo from contas 
where tipo = '2';

/* Selecione todas as transações que são crédito e não sejam saque */
select * from transacoes where tipo = '1' and
							   tipo <> '2';

/* Mostre a quantidade de transações que foram realizadas com valores entre 1000 e 2000 */
select * from transacoes 
where valor between '1000' and '2000';

/* Exiba a quantidade de contas que existem e que foram criadas há pelos menos um ano e seis meses */
select * from contas;

select * from clienteconta
order by dataabertura;