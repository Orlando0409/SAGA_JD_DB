CREATE TABLE Auditoria (
  id INT AUTO_INCREMENT PRIMARY KEY,
  tabla_afectada VARCHAR(50),
  operacion VARCHAR(10),
  usuario VARCHAR(100),
  fecha DATETIME
);
DELIMITER //
CREATE TRIGGER tr_insert_abonado
AFTER INSERT ON Abonado
FOR EACH ROW
BEGIN
  INSERT INTO Auditoria (tabla_afectada, operacion, usuario, fecha)
  VALUES ('Abonado', 'INSERT', CURRENT_USER(), NOW());
END;
//
DELIMITER ;