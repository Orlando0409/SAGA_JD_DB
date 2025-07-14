DELIMITER //
CREATE PROCEDURE sp_aceptar_solicitud(IN abonado_id INT)
BEGIN
  UPDATE Abonado SET fecha_ingreso = CURDATE() WHERE id = abonado_id;
END;
//
DELIMITER ;