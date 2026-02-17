/*Crea una tabla llamada Autores con las siguientes columnas 
(tú decides los tipos de datos apropiados):
autor_id – clave primaria y autoincremental.
nombre – nombre de pila del autor.
apellido – apellido del autor.
fecha_nacimiento – fecha de nacimiento.
nacionalidad – país de origen.*/
/*
CREATE TABLE autores(
autor_id int auto_increment primary key,
nombre varchar(100) not null,
apellido varchar(100) not null,
fecha_de_nacimiento DATE not null,
nacionalidad varchar(50) not null
);*/

insert into autores (nombre, apellido,fecha_de_nacimiento,nacionalidad) 
values ("Howard Philips", "Lovecraft","1890-08-20","Estadounidense"),
("Esther Huneeus","Salas","1902-02-28","Chilena");

-- supongamos que hubiera querido ingresar los datos con el formato dd/mm/yyyy
-- (STR_TO_DATE('16/02/2026', '%d/%m/%y));

SELECT * FROM autores;