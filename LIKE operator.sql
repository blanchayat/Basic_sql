--   The LIKE operator is used to search for a specified pattern in a column.
--     %  - represents zero or more characters
--     _  - represents a single character

SELECT first_name, last_name
FROM customer
WHERE first_name LIKE 'B%';

SELECT *
FROM customer
WHERE first_name LIKE 'Be__';
--   The two underscores (__) represent two single characters after 'Be'.


SELECT *
FROM film
WHERE title LIKE '%r';
--   % matches any sequence of characters before 'r'.

SELECT *
FROM film
WHERE title LIKE '%u_';
--   The underscore (_) represents the last character, so 'u' is the second from the end.

SELECT *
FROM film
WHERE title LIKE '%s%';
--   %s% finds any title containing the letter 's'.

SELECT *
FROM film
WHERE title LIKE '%a%v%';
--   %a%v% means there can be any characters before, between, or after 'a' and 'v'.

SELECT title FROM film
WHERE title LIKE '%A%V%' OR title LIKE '%a%v%';
-- It is case-sensitive in most SQL implementations (e.g., 'A%' is different from 'a%').

-- 💡Lesson Learned:
--   - The LIKE operator is essential for text-based searches and pattern recognition.
--   - % and _ wildcards help in building flexible filtering conditions.
--   - Case sensitivity may depend on the database settings (PostgreSQL is case-sensitive by default).

