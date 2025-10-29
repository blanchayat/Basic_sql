-- The LIMIT clause is used to restrict the number of rows returned by a query.
-- It’s one of the most efficient ways to quickly check data in very large tables.

SELECT * 
FROM actor
ORDER BY first_name, last_name
LIMIT 5;

-- LIMIT is a quick control tool — when working with tables that have millions of rows,
-- it helps you preview data efficiently without fetching the entire dataset.

SELECT * 
FROM film
LIMIT 10 OFFSET 2;

-- OFFSET 2 means “skip the first 2 rows,” but still return 10 rows afterward.
-- This is often used for pagination — for example:
-- Page 1 → LIMIT 10 OFFSET 0
-- Page 2 → LIMIT 10 OFFSET 10
-- Page 3 → LIMIT 10 OFFSET 20

-- 💡Lesson Learned:
-- LIMIT helps with quick data inspection.
-- OFFSET allows controlled navigation through large datasets.
