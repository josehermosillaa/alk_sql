CREATE DATABASE PracticaSQL;
USE PracticaSQL;

CREATE TABLE Usuarios (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(150) NOT NULL UNIQUE,
    fecha_creacion TIMESTAMP NOT NULL
);

INSERT INTO Usuarios (nombre, correo, fecha_creacion) VALUES
('Juan Perez', 'juan@email.com', '2018-05-10 10:30:00'),
('Maria Lopez', 'maria@email.com', '2019-11-20 09:15:00'),
('Carlos Soto', 'carlos@email.com', '2021-03-01 14:00:00'),
('Ana Torres', 'ana@email.com', '2022-07-18 18:45:00'),
('Luis Ramirez', 'luis@email.com', '2017-01-05 08:20:00');
