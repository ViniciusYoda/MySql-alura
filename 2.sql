USE `sucos_vendas`;
DROP procedure IF EXISTS `mostra_numero`;
DELIMITER $$
USE `sucos_vendas`$$
CREATE PROCEDURE `mostra_numero` ()
BEGIN
select (1 + 9) - 5;
END$$
DELIMITER ;