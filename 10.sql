USE `sucos_vendas`;
DROP procedure IF EXISTS `alo_mundo_3`;
DELIMITER $$

USE `sucos_vendas`$$
CREATE PROCEDURE `alo_mundo_3`()
BEGIN
SELECT 'Alô Mundo !!!!, tudo bem? Versão 3' as RESULTADO;
END$$
DELIMITER ;