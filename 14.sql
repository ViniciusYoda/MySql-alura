USE `sucos_vendas`;
DROP procedure IF EXISTS `inclui_novo_produto`;
DELIMITER $$

USE `sucos_vendas`$$
CREATE PROCEDURE `inclui_novo_produto` ()
BEGIN
DECLARE vCodigo varchar(50) DEFAULT '3000001';
DECLARE vNome varchar(50) DEFAULT 'Sabor do Mar 700 ml - Manga';
DECLARE vSabor varchar(50) DEFAULT 'Manga';
DECLARE vTamanho varchar(50) DEFAULT '700 ml';
DECLARE vEmbalagem varchar(50) DEFAULT 'Garrafa';
DECLARE vPreco DECIMAL(10,2) DEFAULT 9.25;
INSERT INTO tabela_de_produtos
(CODIGO_DO_PRODUTO,NOME_DO_PRODUTO,SABOR,TAMANHO,EMBALAGEM,PRECO_DE_LISTA)
     VALUES (vCodigo,
     vNome,
     vSabor,
     vTamanho,
     vEmbalagem,
     vPreco);
END$$
DELIMITER ;