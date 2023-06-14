USE sucos_vendas;

DROP procedure IF EXISTS cursor_primeiro_contato;

DELIMITER $$

USE sucos_vendas$$

CREATE PROCEDURE `cursor_primeiro_contato` ()

BEGIN
  DECLARE vNome VARCHAR(50);
  DECLARE c CURSOR FOR SELECT NOME FROM tabela_de_clientes limit 4;
  OPEN c;
  FETCH c INTO vNome;
  SELECT vNome;
  FETCH c INTO vNome;
  SELECT vNome;
  FETCH c INTO vNome;
  SELECT vNome;
  FETCH c INTO vNome;
  SELECT vNome;
  CLOSE c;
END$$
DELIMITER ;