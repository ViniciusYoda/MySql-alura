USE `sucos_vendas`;
DROP procedure IF EXISTS `sp_com_funcoes`;
DELIMITER $$
USE `sucos_vendas`$$
CREATE PROCEDURE `sp_com_funcoes` ()
BEGIN
SELECT CONCAT('Alô Mundo !!!!', '.....', (1 + 9) - 5) as ITENS_COMBINADOS;
END$$
DELIMITER ;