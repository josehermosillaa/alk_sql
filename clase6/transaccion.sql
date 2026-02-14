-- create database practicasql2
USE practicasql2;
-- cambiar el nombre a alguna bd que use para practicar o descomentar la primera linea
/*
CREATE TABLE cuentas (
id INT auto_increment primary key ,
saldo decimal(10,2) NOT NULL DEFAULT 0.00
);

INSERT INTO cuentas(id,saldo) values (1,1000.00), (2,1500.00)
*/
-- SELECT * from cuentas;
DELIMITER $$
CREATE PROCEDURE transferir_fondos()
BEGIN

	START TRANSACTION;
	UPDATE cuentas 
	SET saldo = saldo - 200
	WHERE id = 1 AND saldo >= 200;

		IF ROW_COUNT() = 1 THEN
			UPDATE cuentas
			SET saldo = saldo + 200
			WHERE id = 2;
			
			COMMIT;
		ELSE
			ROLLBACK;
		END IF;
	END$$
DELIMITER ;



DELIMITER $$
CREATE PROCEDURE transferir_fondos2()
BEGIN

	START TRANSACTION;
	UPDATE cuentas 
	SET saldo = saldo - 1000
	WHERE id = 1 AND saldo >= 1000;

		IF ROW_COUNT() = 1 THEN
			UPDATE cuentas
			SET saldo = saldo + 1000
			WHERE id = 2;
			
			COMMIT;
		ELSE
			ROLLBACK;
		END IF;
	END$$
DELIMITER ;


-- se intentan transferir 200 es decir se llega al commit
CALL transferir_fondos();
-- se intenta transferir 1000, si no esta ese saldo se realiza un rollback
CALL transferir_fondos2();
    
    

SELECT * FROM cuentas;

