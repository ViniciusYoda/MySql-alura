USE `sucos_vendas`;
DROP procedure IF EXISTS `sp_com_comentarios`;
DELIMITER $$

USE `sucos_vendas`$$
CREATE PROCEDURE `sp_com_comentarios` ()
BEGIN

/* Vamos exibir itens combinados
entre textos e números */

-- Usando a função CONCAT

SELECT CONCAT('Alô Mundo !!!!', '.....', (1 + 9) - 5) as ITENS_COMBINADOS;
END$$
DELIMITER ;