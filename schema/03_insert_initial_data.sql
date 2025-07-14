INSERT INTO Rol (nombre) VALUES ('admin'), ('secretaria'), ('fontanero');
INSERT INTO EstadoMaterial (nombre_estado) VALUES ('Disponible'), ('En uso'), ('No disponible');
INSERT INTO Usuario (nombre, correo, contrasena, rol_id) VALUES ('Administrador', 'admin@asada.cr', '1234Hashed', 1);
INSERT INTO Abonado (nombre, cedula, direccion, telefono, fecha_ingreso)
VALUES ('Juan Pérez', '1-2345-6789', 'Barrio Los Naranjos', '8888-9999', CURDATE());