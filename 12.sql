USE `sucos_vendas`;
DROP procedure IF EXISTS `exibe_variavel`;
DELIMITER $$

USE `sucos_vendas`$$
CREATE PROCEDURE `exibe_variavel` ()
BEGIN
declare texto char(20) default 'Alô Mundo !!!!';
SELECT texto;
END$$
DELIMITER ;