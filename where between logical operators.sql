-- 📘 SQL Exercise: WHERE, BETWEEN, and Logical Operators
--   Practice filtering data using WHERE, BETWEEN, and logical operators (AND, OR, NOT).

select * from actor
WHERE first_name = 'Penelope';

select * from customer
WHERE store_id = 1 ;

select * from payment
WHERE staff_id <> 2; 

-- logical operators

select * from film
where length > 100
AND rental_duration <5;

select * from address
where district = 'Adana'
AND city_id = 5;

select * from payment 
where staff_id = 2
OR amount > 5;
-- ⚠️ Be careful with OR — it can widen your results if not used carefully.

-- BETWEEN operators

select * from film
where length BETWEEN 100 AND 120;

select * from film
where NOT (length  BETWEEN 100 AND 120);

select * from film
where length < 100 OR length > 120;

select * from employees
where hire_date BETWEEN '2017-01-01' AND '2017-12-31'
order by hire_date;

-- 💡 Lesson Learned:
--   - Used comparison, logical, and range operators effectively.
--   - Practiced filtering both numeric and date data.
--   - Learned the importance of query readability and precision.
