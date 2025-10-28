-- make a column that creates an email address by combining the first and last name: Steven.King@dbhunter.net
-- make a column that calculates salaries with a 35% increase 

select  first_name, last_name,
first_name ||'.'|| last_name ||'@dbhunter.net',
salary * 1.35
from employees;

