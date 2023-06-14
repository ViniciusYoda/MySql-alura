USE sucos_vendas;

DROP procedure IF EXISTS p_inserir_venda;


DELIMITER $$

USE sucos_vendas$$

CREATE PROCEDURE p_inserir_venda(vData DATE, max_itens INT,

max_quantidade INT)

BEGIN

DECLARE vCliente VARCHAR(11);

DECLARE vProduto VARCHAR(10);

DECLARE vVendedor VARCHAR(5);

DECLARE vQuantidade INT;

DECLARE vPreco FLOAT;

DECLARE vItens INT;

DECLARE vNumeroNota INT;

DECLARE vContador INT DEFAULT 1;

SELECT MAX(numero) + 1 INTO vNumeroNota from notas_fiscais;

SET vCliente = f_cliente_aleatorio();

SET vVendedor = f_vendedor_aleatorio();

INSERT INTO notas_fiscais (CPF, MATRICULA, DATA_VENDA, NUMERO, IMPOSTO)

VALUES (vCliente, vVendedor, vData, vNumeroNota, 0.18);

SET vItens = f_numero_aleatorio(1, max_itens);

WHILE vContador <= vItens

DO

   SET vProduto = f_produto_aleatorio();

   SET vQuantidade = f_numero_aleatorio(10, max_quantidade);

   SELECT PRECO_DE_LISTA INTO vPreco FROM tabela_de_produtos

   WHERE CODIGO_DO_PRODUTO = vProduto;

   INSERT INTO itens_notas_fiscais (NUMERO, CODIGO_DO_PRODUTO,

   QUANTIDADE, PRECO) VALUES (vNumeroNota, vProduto, vQuantidade, vPreco);

   SET vContador = vContador + 1;

END WHILE;

END$$

DELIMITER ;