use banco;

/*Excluir o Stored Procedure 
DROP procedure sp_nomeCompleto;*/

DELIMITER //
CREATE PROCEDURE sp_nomeCompleto(IN in_cpf BIGINT)
BEGIN
	SELECT concat(pnome, ' ', mnome, ' ', unome) AS nomecompleto
    FROM clientes
    WHERE cpf = in_cpf;
END //
DELIMITER ;
CALL sp_nomeCompleto(88651489296);

DELIMITER //
CREATE PROCEDURE sp_BoasVindas(IN in_cpf BIGINT)
BEGIN
	DECLARE nomecompleto VARCHAR(50);
    DECLARE sexocliente CHAR;
    DECLARE msg VARCHAR(50);
    SELECT CONCAT(pnome, ' ', mnome, ' ', unome), sexo INTO nomecompleto, sexocliente
	FROM clientes
    WHERE cpf = in_cpf;
    SET msg = '';
    SET msg = CONCAT(msg, 'Olá ', nomecompleto);
    IF sexocliente = 'F' THEN
		SET msg = CONCAT(msg, ', seja bem-vinda!');
	ELSE
		SET msg = CONCAT(msg, ', seja bem-vindo!');
	END IF;
    SELECT msg AS mensagem;
END //
DELIMITER ;
CALL sp_BoasVindas(63560788352);

DELIMITER //
CREATE PROCEDURE sp_transacoesMensais(IN in_ano INTEGER)
BEGIN
	DECLARE cont INT;
    SET cont = 1;
    WHILE (cont <= 12) DO 
		SELECT * FROM transacaoconta
        WHERE YEAR(tdata) = in_ano AND MONTH(tdata) = cont;
        SET cont = cont + 1;
	END WHILE;
END //
DELIMITER ;
CALL sp_transacoesmensais(2020);

SELECT * FROM transacaoconta; 