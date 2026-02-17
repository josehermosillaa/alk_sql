-- CREATE DATABASE libreria; -- solo debemos ejecutarlo una vez para la creacion de la DB
/*
 Paso a paso:
Crea la base de datos llamada Libreria.
Crea las tablas con las claves primarias y foráneas mencionadas.
Aplica restricciones como:
No permitir valores nulos en campos clave.
Definir valores predeterminados en stock y fecha_venta.
Inserta algunos datos de prueba en cada tabla.
Verifica la estructura consultando las tablas.
*/
USE libreria;

-- tabla autores
CREATE TABLE autores (
autor_id INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(100) NOT NULL,
nacionalidad VARCHAR(50)
);



-- tabla categorias

CREATE TABLE categorias(
categoria_id INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(50) NOT NULL
);



-- libros
CREATE TABLE libros (
libro_id INT auto_increment primary key,
autor_id INT NOT NULL,
categoria_id INT NOT NULL,
precio DECIMAL(8,2) NOT NULL,
stock INT NOT NULL DEFAULT(10),

	constraint fk_autor_libros
	foreign key (autor_id)
	references autores(autor_id)
	on delete cascade,
	
    constraint fk_categorias_libros
	foreign key (categoria_id)
	references categorias(categoria_id)
	on delete cascade
);


-- tabla ventas

CREATE TABLE ventas (
venta_id INT auto_increment PRIMARY KEY,
libro_id INT NOT NULL,
cantidad INT NOT NULL,
fecha_venta DATE NOT NULL DEFAULT(CURRENT_DATE),

	constraint fk_ventas_libros
	foreign key (libro_id)
	references libros(libro_id)
	on delete cascade,
    
    constraint check_cantidad
    CHECK (cantidad > 0)
);




INSERT INTO autores (nombre, nacionalidad) values ('Marcela Paz', 'chilena');
INSERT INTO categorias(nombre) values ('infantil'),('terror'),('romance');
INSERT INTO libros(autor_id, categoria_id, precio) values(1,1,5000);
-- registro para probar la constraint de cantidad > 0 (restriccion)
-- INSERT INTO ventas (libro_id, cantidad) values (1,0);
INSERT INTO ventas (libro_id, cantidad) values (1,2);