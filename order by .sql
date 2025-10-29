-- ORDER BY SINGLE COLUMN
SELECT * FROM film
ORDER BY title

SELECT district, address, city_id
FROM address
ORDER BY district
-- ORDER BY address_id (we can also sort by column we dont wat to see on screen)

SELECT first_name, last_name, email, address_id
FROM customer
ORDER BY first_name DESC

-- ORDER BY MULTIPLE COLUMN
SELECT rating, length, title, rental_rate
FROM film
ORDER BY rating, length DESC;

SELECT first_name, last_name,
email, address_id
FROM customer
ORDER BY first_name asc, last_name asc
-- ORDER BY EXTRA COST

-- ORDER BY NULLS FIRST, LAST
SELECT * FROM employees
ORDER BY phone_number NULLS FIRST 


