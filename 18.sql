USE `sucos_vendas`;
DROP procedure IF EXISTS `cliente_novo_velho`;
DELIMITER $$

USE `sucos_vendas`$$
CREATE PROCEDURE `cliente_novo_velho`(vCPF VARCHAR(20))
BEGIN
   DECLARE vResultado VARCHAR(20);
   DECLARE vDataNascimento DATE;
   SELECT DATA_DE_NASCIMENTO INTO vDataNascimento FROM
   tabela_de_clientes WHERE CPF = vCPF;
   IF vDataNascimento < '20000101' THEN
      SET vResultado = 'CLIENTE VELHO';
   ELSE
      SET vResultado = 'CLIENTE NOVO';
   END IF;
   SELECT vResultado;
END$$
DELIMITER ;