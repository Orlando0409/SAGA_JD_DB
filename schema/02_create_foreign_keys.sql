-- Relaciones por ALTER TABLE si no se pusieron al crear
ALTER TABLE Usuario
ADD CONSTRAINT fk_usuario_rol FOREIGN KEY (rol_id) REFERENCES Rol(id);
ALTER TABLE Material
ADD CONSTRAINT fk_material_estado FOREIGN KEY (estado_id) REFERENCES EstadoMaterial(id);