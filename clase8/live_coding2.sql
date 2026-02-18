USE clientes;

CREATE TABLE empleados(
id_empleado INT PRIMARY KEY auto_increment,
nombre VARCHAR(255) NOT NULL,
apellido VARCHAR(255),
edad INT,
puesto VARCHAR(100)

);

INSERT INTO empleados(nombre,edad, puesto) VALUES("Juanito",33,"gerente");

UPDATE empleados
SET apellido = "Perez"
WHERE id_empleado = 1;

ALTER TABLE empleados
MODIFY COLUMN apellido VARCHAR(255) NOT NULL;
SELECT * FROM empleados;
 
INSERT INTO empleados(nombre,apellido,edad, puesto) VALUES("Diego","Muñoz",33,"CTO");

-- DROP elimina todo rastro de la tabla de datos
-- DROP TABLE datos;

-- vacia los registros, o filas de la tabla, dejando la estructura intacta
-- TRUNCATE TABLE empleados;