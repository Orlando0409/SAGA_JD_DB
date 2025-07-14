CREATE TABLE Rol (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL
);
CREATE TABLE Usuario (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100),
  correo VARCHAR(100) UNIQUE,
  contrasena VARCHAR(255),
  rol_id INT,
  activo BOOLEAN DEFAULT true,
  FOREIGN KEY (rol_id) REFERENCES Rol(id)
);
CREATE TABLE Abonado (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100),
  cedula VARCHAR(20),
  direccion TEXT,
  telefono VARCHAR(20),
  fecha_ingreso DATE
);
CREATE TABLE EstadoMaterial (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre_estado VARCHAR(50)
);
CREATE TABLE Material (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100),
  tipo VARCHAR(50),
  cantidad INT,
  estado_id INT,
  FOREIGN KEY (estado_id) REFERENCES EstadoMaterial(id)
);