-- Question 1
SELECT count(*)
FROM actor
WHERE last_name = 'Wahlberg';

-- Question 2
SELECT count(*)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99 


-- Question 3
SELECT f.film_id, i.film_id, f.title
FROM inventory i
INNER JOIN film f
on i.film_id = f.film_id
GROUP BY i.film_id, f.film_id
HAVING count(*) = 7;

-- Question 4
SELECT count(first_name)
FROM customer
WHERE first_name = 'Willie'

-- Question 5
SELECT staff_id, COUNT(rental_id) AS rental_count
FROM rental
GROUP BY staff_id
ORDER BY rental_count DESC
LIMIT 1;

-- Question 6
SELECT count(DISTINCT country_id)
FROM city

-- Question 7
SELECT film_id, COUNT(actor_id) AS actor_count
FROM film_actor
GROUP BY film_id
ORDER BY actor_count DESC
LIMIT 1;

-- Question 8
SELECT count(last_name)
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es'


-- Question 9
--How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)
SELECT count(DISTINCT amount)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(*) > 250;

-- Question 10
SELECT count(DISTINCT rating)
FROM film

SELECT DISTINCT rating, count(film_id) AS film_count
FROM film
GROUP BY rating
ORDER BY film_count DESC
LIMIT 1;
