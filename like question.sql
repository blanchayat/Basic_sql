-- Find the list of customers whose 3 characters after the first character are 'her'
-- wrong answer 
SELECT * FROM customer
WHERE first_name LIKE '%h%e%r%';

-- teachers answer
SELECT * FROM customer
WHERE first_name LIKE '_her%'
-- '_her%' uses an underscore (_) to match exactly one character in the first position,
-- then requires 'her' to follow immediately, then any characters after.

-- 💡 Lesson Learned:
--  - Use '_' to match exactly one character at a specific position.
--  - Use '%' to match zero or more arbitrary characters.
--  - The pattern '_her%' matches names like 'Aheron', 'Sherlock' (if 'S' is first char and 'her' starts at pos 2).
--  - The pattern '%h%e%r%' does not enforce adjacency; it only enforces order of characters.

--  - LIKE is case-sensitive in many SQL systems (including PostgreSQL by default); consider ILIKE for case-insensitive matches.
