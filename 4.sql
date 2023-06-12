USE `sucos_vendas`;
DROP procedure IF EXISTS `mostra_numero_alias`;
DELIMITER $$
USE `sucos_vendas`$$
CREATE PROCEDURE `mostra_numero_alias` ()
BEGIN
select (1 + 9) - 5 as RESULTADO;
END$$
DELIMITER ;