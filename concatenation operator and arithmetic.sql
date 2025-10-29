-- Practice string concatenation and arithmetic operations in SQL.
--   Combine employee names to create email addresses and calculate updated salaries.
-- 🧩 Task 1:
--   Create a column that generates an email address by combining
--   the first and last name in the format: first.last@dbhunter.net
-- 🧩 Task 2:
--   Create a column that calculates each employee's salary
--   after a 35% increase.

select  first_name, last_name,
first_name ||'.'|| last_name ||'@dbhunter.net',
salary * 1.35
from employees;


-- 💡 Lesson Learned:
--   - The concatenation operator (||) is used to join text strings in SQL.
--   - Arithmetic operators like * can be used directly on numeric columns.
--   - Using aliases (AS) improves query readability.
--   - This query demonstrates how to generate new calculated and formatted columns.
