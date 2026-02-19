create database estudiantes;
use estudiantes;

create table estudiante (
estudiante_id int auto_increment  primary key,
nombre VARCHAR(255) not null,
apellido VARCHAR(255) not null,
correo VARCHAR(255) not null,
fecha_nacimiento DATE not null
);

create table curso(
curso_id int auto_increment primary key,
nombre_curso varchar(255) not null,
descripcion text ,
creditos int not null
);

create table calificacion(
calificacion_id int auto_increment primary key,
nota DECIMAL(3,2) not null,
fecha DATE not null,
ponderacion DECIMAL(3,2) not null,
tipo_evaluacion VARCHAR(50),
estudiante_id int,
curso_id int,
	
	constraint fk_calificacion_estudiante
    foreign key (estudiante_id)
    references estudiante(estudiante_id)
    on delete cascade,
    
    constraint fk_calificaciones_curso
    foreign key (curso_id)
    references curso(curso_id)
    on delete cascade,
    
    constraint nota_mayor_o_igual_a_1
    CHECK (nota>=1.00)

);


