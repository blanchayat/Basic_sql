-- What is NULL?
-- NULL represents a missing, unknown, or unspecified value in a database.

-- Wrong examples:
SELECT * FROM employees
WHERE phone_number = 'NULL';

SELECT * FROM employees
WHERE phone_number = NULL;

-- Correct examples:
SELECT * FROM employees
WHERE phone_number IS NULL;

SELECT * FROM employees
WHERE phone_number IS NOT NULL;

-- 💡Lesson Learned:
-- NULL means “no value.”
-- It is NOT zero (0), NOT blank (‘’), and NOT the same as ‘NULL’ text.
-- Always use IS NULL or IS NOT NULL to test for NULLs.
