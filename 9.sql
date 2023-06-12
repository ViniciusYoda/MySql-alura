USE `sucos_vendas`;
DROP procedure IF EXISTS `alo_mundo_2`;
DELIMITER $$

USE `sucos_vendas`$$
CREATE PROCEDURE `alo_mundo_2` ()
BEGIN
SELECT 'Alô Mundo !!!!, tudo bem?' as RESULTADO;
END$$
DELIMITER ;