-- Limit & Aliasing

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 3
;

# ORDER by age in descending order.  LIMIT to 3 rows in the employee_demographics TABLE

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 2, 1
;

# SELECT everything from employee_demographics TABLE and ORDER BY age in DESCENDING order. Single out the row after the 2nd row 


-- Aliasing

SELECT gender, AVG(age) AS avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age > 40

# The AS function changes the name of the AGE column to avg_age
;





