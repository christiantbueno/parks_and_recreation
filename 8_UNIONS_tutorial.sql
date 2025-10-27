-- UNIONS
# Unions combine the rows from multiple TABLES

SELECT age, gender
FROM employee_demographics
UNION
SELECT first_name, last_name
FROM employee_salary
;
# UNION is a DISCTINCT function by default which means there's no duplicates
# The output shows the age and gender from both tables
# The output also shows the first and last names from both tables


SELECT first_name, last_name
FROM employee_demographics
UNION DISTINCT
SELECT first_name, last_name
FROM employee_salary
;
# Union is a DISTINCT function by default
# DISTINCT functions removes duplicates
# The output shows first and last names from both tables without duplicates

SELECT first_name, last_name
FROM employee_demographics
UNION ALL
SELECT first_name, last_name
FROM employee_salary
;
# UNION ALL function displays first and last name from both tables WITH duplicates


-- USE CASE

# Parks department is trying to cut down their budget
# Identify older employees that they can push out
# Identify high paid employees and reduce their pay or push them out to save money

SELECT first_name, last_name, 'Old Man' AS Label
FROM employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION
SELECT first_name, last_name, 'Old Woman' AS Label
FROM employee_demographics
WHERE age > 40 AND gender = 'Female'
UNION 
SELECT first_name, last_name, 'Highly Paid Employees' AS Label
FROM employee_salary
WHERE salary > 70000
ORDER BY first_name, last_name
;

# You can see that Chris Traeger and Leslie Knope are both Old and Highly Paid
# Donna Meagle and Jerry Gergich are Old






