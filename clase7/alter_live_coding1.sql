-- buscar  la base de dato donde usted tenga las tablas transaccion y usuario
USE clientes;

CREATE TABLE Productos (
    id_producto INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255) NOT NULL,
    valor INT NOT NULL -- Esta columna será modificada a "importe"
);

ALTER TABLE productos
CHANGE valor importe INT;

ALTER TABLE transaccion
CHANGE valor importe INT;

ALTER TABLE productos
MODIFY  importe DECIMAL(10,2);

ALTER TABLE transaccion
MODIFY importe DECIMAL(10,2);

ALTER TABLE MONEDA
MODIFY tipo_cambio DECIMAL(10,2) DEFAULT 1.00;
-- 