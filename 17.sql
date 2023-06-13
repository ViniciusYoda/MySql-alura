USE `sucos_vendas`;
DROP procedure IF EXISTS `acha_sabor_produto`;
DELIMITER $$

USE `sucos_vendas`$$
CREATE PROCEDURE `acha_sabor_produto`(vProduto VARCHAR(50))
BEGIN
   DECLARE vSabor VARCHAR(50);
   SELECT SABOR INTO vSabor FROM tabela_de_produtos WHERE codigo_do_produto = vProduto;
   SELECT vSabor;
END$$
DELIMITER ;