--   Practice sorting data using the ORDER BY clause with single and multiple columns.

-- ORDER BY SINGLE COLUMN
SELECT * FROM film
ORDER BY title

SELECT district, address, city_id
FROM address
ORDER BY district
-- You can also sort by a column not included in the SELECT list

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
  -- 🔹 Sorting NULL values explicitly
SELECT * FROM employees
ORDER BY phone_number NULLS FIRST 

-- 💡 Lesson Learned:
--   - ORDER BY controls the sorting order of results.
--   - DESC and ASC define descending or ascending order.
--   - Sorting by multiple columns improves data organization and clarity.


