-- eejecutar 1 a 1 los comandos en la BD


CREATE TABLE clientes(
id_cliente INT auto_increment primary key,
nombre VARCHAR(100) NOT NULL
);

CREATE TABLE pedidos(
id_pedido INT auto_increment PRIMARY KEY,
id_cliente INT NOT NULL,
fecha timestamp DEFAULT current_timestamp,
total DECIMAL(10,2),

constraint fk_pedidos_clientes
foreign key (id_cliente)
references clientes(id_cliente)
on delete cascade
);

INSERT INTO clientes (nombre) values ('Fabian'),('Ana'),('Carla');

INSERT INTO pedidos(id_cliente, total) values(1,15000),(2,10000),(1,5000);

DELETE FROM clientes WHERE id_cliente = 1;

SELECT * FROM clientes;
SELECT * FROM pedidos;