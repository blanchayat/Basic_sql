-- where statement, comparison operators 

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
-- be carefully for OR

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

