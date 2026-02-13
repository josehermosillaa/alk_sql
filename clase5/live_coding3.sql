/*
Actualizar de información en una tabla llamada "Transacciones". Utilizar el comando UPDATE para modificar los precios de las transacciones según ciertos criterios.
Utilizar el comando UPDATE para aumentar en un 15% el precio de las transacciones que tienen un precio menor a $50.
Recuperar y mostrar todos los registros de la tabla "Transacciones" después de la actualización.

 */
 UPDATE transacciones 
 SET precio = precio*1.15 
 WHERE precio <50;
 
 -- recuperamos los registros
 SELECT * FROM transacciones;