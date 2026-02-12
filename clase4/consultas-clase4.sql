-- SELECT last_name FROM actor WHERE last_name LIKE "CR%";
-- SELECT title, description, rental_duration FROM film WHERE rental_duration < 5;
-- describe film; -- describe permite ver los tipos de datos y como se construyeron en una tabla 
-- SELECT MAX(amount) FROM payment;
-- SELECT title, replacement_cost FROM film WHERE replacement_cost <(SELECT MAX(amount) FROM payment);
-- SELECT * FROM film;
-- SELECT category_id FROM category WHERE name = "Sci-Fi";
-- SELECT film_id FROM film_category WHERE category_id = (SELECT category_id FROM category WHERE name = "Sci-Fi") ;
 /*SELECT title, rating FROM film WHERE film_id IN (
	SELECT film_id FROM film_category WHERE category_id = (
		SELECT category_id FROM category WHERE name = "Sci-Fi")
        );*/
-- SELECT SUM(amount) as TOTAL_PAGOS FROM payment;
-- SELECT * FROM film;
/*SELECT rating, AVG(replacement_cost) as PromedioReemplazo FROM film 
GROUP BY rating ORDER BY PromedioReemplazo DESC ;*/
/*SELECT rating, Count(film_id) as TotalPeliculas FROM film 
GROUP BY rating ORDER BY TotalPeliculas DESC ;*/
/*SELECT rating, MAX(replacement_cost) as PrecioMayorReemplazo, 
MIN(replacement_cost) as PrecioMenorReemplazo
FROM film 
GROUP BY rating;*/

-- join
SELECT f.title, fa.actor_id FROM film f
INNER JOIN film_actor fa ON f.film_id = fa.film_id;
-- podriamos hacer una subconsulta para saber cuantos actores hay por pelicula
-- cuando usamos subconsultas con inner join o cualquier join debemos hacer uso de los alias
-- y al resultado de ella debemos tambien asignarle uno

/*SELECT r.title, COUNT(actor_id) as totalActores FROM(
	SELECT f.title, fa.actor_id FROM film f
	INNER JOIN film_actor fa ON f.film_id = fa.film_id
    ) as r
    group by title order by totalActores DESC;
*/

SELECT result.title, a.first_name, a.last_name as totalActores FROM(
	SELECT f.title, fa.actor_id FROM film f
	INNER JOIN film_actor fa ON f.film_id = fa.film_id
    ) as result INNER JOIN actor a ON result.actor_id = a.actor_id;
    

