-- who was working int the office on '2022-05-01' ?
-- my answer
SELECT * FROM staff
WHERE departure_date > '2022-05-01' AND hire_date < '2022-05-01'

-- teachers answer
SELECT * FROM staff
WHERE '2022-05-01' BETWEEN hire_date AND departure_date
