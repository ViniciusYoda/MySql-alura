USE `sucos_vendas`;
DROP procedure IF EXISTS `looping_while`;
DELIMITER $$

USE `sucos_vendas`$$
CREATE PROCEDURE `looping_while`(vNumInicial INT, vNumFinal INT)
BEGIN
   DECLARE vContador INT;
   DELETE FROM TAB_LOOPING;
   SET vContador = vNumInicial;
   WHILE vContador <= vNumFinal
   DO
      INSERT INTO TAB_LOOPING (ID) VALUES (vContador);
      SET vContador = vContador + 1;
   END WHILE;
   SELECT * FROM TAB_LOOPING;
END$$
DELIMITER ;