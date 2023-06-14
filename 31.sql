SET GLOBAL log_bin_trust_function_creators = 1;

SELECT f_acha_tipo_sabor ("Laranja");

SELECT NOME_DO_PRODUTO, SABOR, f_acha_tipo_sabor (SABOR) as TIPO

 FROM tabela_de_produtos;