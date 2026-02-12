/*CREATE TABLE usuarios(
user_id INT auto_increment primary key,
nombre VARCHAR(100) NOT NULL,
correo_electronico VARCHAR(150) NOT NULL UNIQUE,
contrasena VARCHAR(255) NOT NULL,
saldo DECIMAL(15, 2) NOT NULL DEFAULT 0.00,
fecha_creacion timestamp default current_timestamp
);
-- VARCHAR (numero de caracteres) , NOT NULL debe venir dato
-- UNIQUE es que el dato no se puede repetir en la columna
-- DEFAULT se asigna un valor por defecto en caso que no se ingrese valor
-- NOT NULL aplica en todo momento como regla de la base de datos

CREATE TABLE moneda(
currency_id INT auto_increment primary key,
currency_name VARCHAR(50) NOT NULL,
currency_symbol VARCHAR(10) NOT NULL
);

-- Transaccion

CREATE TABLE transaccion(
transaction_id INT auto_increment primary key,
sender_user_id INT NOT NULL,
receiver_user_id INT NOT NULL,
valor DECIMAL(15,2) NOT NULL,
transaction_date TIMESTAMP DEFAULT current_timestamp,

	CONSTRAINT fk_sender
		FOREIGN KEY (sender_user_id)
        REFERENCES usuarios(user_id)
        ON DELETE CASCADE,
        
	CONSTRAINT fk_receiver
		FOREIGN KEY (receiver_user_id)
        REFERENCES usuarios(user_id)
        ON DELETE CASCADE
);*/

-- INSERT INTO usuarios(nombre, correo_electronico, contrasena,saldo) values ('Juan Perez', 'juan@email.com','hash123',10000.00),
-- ('Maria Lopez', 'maria@email.com','hash456',50000.00), ('Carlos Soto', 'carlos@email.com','hash789',10000.00);
/*
INSERT INTO transaccion (sender_user_id, receiver_user_id, valor)
VALUES(1, 2, 200.00),   -- Juan envía 200 a María
(2, 3, 300.00),   -- María envía 300 a Carlos
(1, 3, 150.00);   -- Juan envía 150 a Carlos */

