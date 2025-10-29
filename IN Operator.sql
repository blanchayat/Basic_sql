
--   Practice filtering data using the IN operator to match multiple values efficiently.
--   The IN operator allows you to specify multiple possible values for a column in a WHERE clause.
--   It’s cleaner and more efficient than using multiple OR conditions.

--   Retrieve all customers whose first names are either 'Leslie', 'Kelly', or 'Tracy'.
SELECT first_name, last_name
FROM customer
WHERE first_name IN ('Leslie', 'Kelly', 'Tracy');

SELECT *
FROM film
WHERE rating IN ('R', 'G');

--   Retrieve all addresses located in Texas, Nantou, or Moskova.
SELECT *
FROM address
WHERE district IN ('Texas', 'Nantou', 'Moskova');

--   Retrieve customers who have address_id values of 10, 20, or 30.
SELECT *
FROM customer
WHERE address_id IN (10, 20, 30);

-- without IN operator
SELECT * FROM customer
WHERE address_id = 10
OR address_id = 20
OR address_id = 30;

-- Lesson Learned:
--   - The IN operator checks if a column’s value matches any value in a specified list.
--   - It simplifies queries that would otherwise require multiple OR statements.
--   - The list can include both text and numeric values.