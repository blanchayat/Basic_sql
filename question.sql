-- who was working int the office on '2022-05-01' ?

-- 🧠 My Answer:
--   Used comparison operators ('>' and '<') in the WHERE clause
--   to manually check if the date '2022-05-01' falls between two dates.
SELECT * FROM staff
WHERE departure_date > '2022-05-01' AND hire_date < '2022-05-01'

-- 👩‍🏫 Teacher's Answer:
--   Used the BETWEEN operator to simplify the logic
--   and make the query easier to read.
SELECT * FROM staff
WHERE '2022-05-01' BETWEEN hire_date AND departure_date

-- 💡 Lesson Learned:
--   - Both queries return the same result, but BETWEEN improves readability.
--   - SQL often provides multiple ways to achieve the same result.
--   - Practiced logical filtering and date comparison in PostgreSQL.
