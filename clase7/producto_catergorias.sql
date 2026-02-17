/*
Crear una tabla llamada "Categorias" con 2 columnas: id_categoria (PK)y nombre_categoria. 
Crear una tabla llamada "Productos" con 5 columnas: id_producto (PF), nombre_producto, precio, id_categoria (FK).
Insertar algunos datos de ejemplo para probar las relaciones.

*/


CREATE TABLE categorias (
id_categoria int auto_increment primary key,
nombre_categoria varchar(100) not null
);

CREATE TABLE productos (
id_producto int auto_increment primary key,
nombre_producto varchar(255) not null, 
precio DECIMAL(10,2) NOT NULL, 
id_categoria INT NOT NULL,

	constraint fk_productos_categorias
	foreign key (id_categoria)
	references categorias(id_categoria)
	on delete cascade
);

INSERT INTO categorias(nombre_categoria) 
values ("videojuegos"),("electrodomesticos"),("cocina");

INSERT INTO productos(nombre_producto,precio ,id_categoria) values
("nintendo switch 2", 600000,1),("Horno electrico",50000,3),
("aspiradora robot",100000,2);
-- caso con error
-- en primera instancia sin la regla chk_nombre esto se crea, pero no es valido
INSERT INTO productos(nombre_producto,precio ,id_categoria) values("",1000,1);

-- debemos actualizar ese producto
UPDATE productos
SET nombre_producto = 'Crash bandicoot'
WHERE id_producto = 4;

-- modificamos la tabla para agregar la condicion que no permita nombres vacios
ALTER TABLE productos
ADD constraint chk_nombre
CHECK (nombre_producto <> ""); -- distinto a vacio ""

-- esto no deberia dejar crear nada ahora
INSERT INTO productos(nombre_producto,precio ,id_categoria) values("",1000,1);
SELECT * FROM productos;
