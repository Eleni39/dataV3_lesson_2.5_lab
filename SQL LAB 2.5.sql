USE sakila;

-- Select all the actores with name Scarlett

SELECT * FROM sakila.actor
WHERE first_name = 'Scarlett';
-- Q2
SELECT * FROM sakila.rental;
SELECT Count(DISTINCT inventory_id)FROM rental; 
SELECT Count(distinct inventory_id)FROM inventory;
-- Q3
SELECT MAX(LENGTH) AS max_duration, MIN(LENGTH) AS min_duration FROM film;
-- Q4
SELECT AVG(length) FROM film;
SELECT CONVERT(AVG (length), TIME) FROM film;

-- Q5
SELECT Count(DISTINCT last_name)FROM actor;

-- Q6
SELECT * FROM sakila.store;
SELECT datediff(max(last_update), min(rental_date)) FROM rental;
-- not sure how accurate this is, but there are no other dates for me to refer to.

-- Q7
SELECT * FROM rental;
select *, weekday(rental_date) as day,
month(rental_date) as month
from rental
limit 20;

-- Q8
SELECT *, weekday(rental_date) as day_of_rental, month(rental_date) as day_type, 
case
when weekday(rental_date)<3 then "workday"
else "weekend"
end as End_of_Week
from sakila.rental;

-- Q9
SELECT release_year FROM film;

-- Q10
SELECT * FROM sakila.film
WHERE title = 'ARMAGEDDON';
-- No film called Armageddon?

-- Q11
SELECT *
FROM sakila.film
WHERE title LIKE 'APOLLO%';

-- Q12
SELECT * FROM sakila.film;
SELECT LENGTH('film') AS Length
limit 10;

-- I need some help with 12 and 13. 




