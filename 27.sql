USE sucos_vendas;

DROP procedure IF EXISTS looping_cursor_multiplas_colunas;


DELIMITER $$

USE sucos_vendas$$

CREATE PROCEDURE `looping_cursor_multiplas_colunas` ()

BEGIN

  DECLARE fim_do_cursor INT DEFAULT 0;

  DECLARE vCidade, vEstado, vCep VARCHAR(50);

  DECLARE vNome, vEndereco VARCHAR(150);

  DECLARE c CURSOR FOR

  SELECT nome, endereco_1, cidade, estado, cep FROM tabela_de_clientes;

  DECLARE CONTINUE HANDLER FOR NOT FOUND SET fim_do_cursor = 1;

  OPEN c;

  WHILE fim_do_cursor = 0

  DO

     FETCH c INTO vNome, vEndereco, vCidade, vEstado, vCep;

     IF fim_do_cursor = 0 THEN

        SELECT CONCAT(vNome, ' Endereço: ',

        vEndereco, ', ', vCidade , ' - ', vEstado, ' CEP: ' , vCep);

     END IF;

  END WHILE;

  CLOSE c;

END$$

DELIMITER ;