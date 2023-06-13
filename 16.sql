USE `sucos_vendas`;
DROP procedure IF EXISTS `inclui_novo_produto_parametro_2`;
DELIMITER $$

USE `sucos_vendas`$$
CREATE PROCEDURE `inclui_novo_produto_parametro_2`(vCodigo varchar(50),
vNome varchar(50), vSabor varchar(50), vTamanho varchar(50),
vEmbalagem varchar(50), vPreco DECIMAL(10,2))
BEGIN
DECLARE mensagem VARCHAR(40);
DECLARE EXIT HANDLER FOR 1062
BEGIN
   SET mensagem = 'Problema de Chave Primária !!!';
   SELECT mensagem;
END;

INSERT INTO tabela_de_produtos
(CODIGO_DO_PRODUTO,NOME_DO_PRODUTO,SABOR,TAMANHO,EMBALAGEM,PRECO_DE_LISTA)
     VALUES (vCodigo,
     vNome,
     vSabor,
     vTamanho,
     vEmbalagem,
     vPreco);
SET mensagem = 'Produto incluido com sucesso !!!';
SELECT mensagem;
END$$
DELIMITER ;