USE sucos_vendas;

DROP procedure IF EXISTS cursor_looping;


DELIMITER $$

USE `sucos_vendas`$$

CREATE PROCEDURE `cursor_looping` ()

BEGIN

   DECLARE fim_do_cursor INT DEFAULT 0;

   DECLARE vNome VARCHAR(50);

   DECLARE c CURSOR FOR SELECT NOME FROM tabela_de_clientes;

   DECLARE CONTINUE HANDLER FOR NOT FOUND SET fim_do_cursor = 1;

   OPEN c;

   WHILE fim_do_cursor = 0
   DO
       FETCH c INTO vNome;
       IF fim_do_cursor = 0 THEN
          SELECT vNome;
       END IF;
   END WHILE;

   CLOSE c;

END$$

DELIMITER ;