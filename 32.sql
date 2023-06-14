USE sucos_vendas;

DROP function IF EXISTS f_numero_aleatorio;


DELIMITER $$

USE sucos_vendas$$

CREATE FUNCTION f_numero_aleatorio(min INT, max INT) RETURNS int(11)

BEGIN

   DECLARE vRetorno INT;

   SELECT  FLOOR((RAND() * (max-min+1)) + min) INTO vRetorno;

RETURN vRetorno;

END$$


DELIMITER ;