CREATE FUNCTION `f_acha_tipo_sabor`(vSabor VARCHAR(50)) RETURNS varchar(20) CHARSET utf8mb4

BEGIN

  DECLARE vRetorno VARCHAR(20) default "";

  CASE vSabor

  WHEN 'Lima/Limão' THEN SET vRetorno = 'Cítrico';

  WHEN 'Laranja' THEN SET vRetorno = 'Cítrico';

  WHEN 'Morango/Limão' THEN SET vRetorno = 'Cítrico';

  WHEN 'Uva' THEN SET vRetorno = 'Neutro';

  WHEN 'Morango' THEN SET vRetorno = 'Neutro';

  ELSE SET vRetorno = 'Ácidos';

  END CASE;

  RETURN vRetorno;

END