-- WHERE Clause

SELECT * 
FROM employee_salary
WHERE first_name = 'Leslie'
;

# SELECT everything FROM employe_salary TABLE WHERE the ID first_name is Leslie


SELECT * 
FROM employee_salary
WHERE salary >= 50000
;

# SELECT everything FROM employee_salary TABLE WHERE salary is greater than or equal to 50000


SELECT * 
FROM employee_demographics
WHERE gender != 'female'
;

# SELECT everything FROM employee_demographics TABLE WHERE gender is NOT equal to FEMALE


SELECT * 
FROM employee_demographics
WHERE birth_date > '1985-01-01'
;

# SELECT everything FROM employee_demographics TABLE WHERE ID birthdate is greater than 1985-01-01



-- AND or NOT -- Logical Operators

SELECT * 
FROM employee_demographics
WHERE birth_date > '1985-01-01'
AND gender = 'male'
;

# SELECT everything FROM employee_demographics TABLE WHERE ID birth_date is greater than 1985-01-01 AND gender is MALE


SELECT * 
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR gender = 'male'
;

# SELECT everything FROM employee_demographics TABLE WHERE ID birthd_date is greater than 1985-01-01 OR gender is MALE


SELECT * 
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT gender = 'male'
;

# SELECT everything FROM employee_demographics TABLE WHERE ID birth_date is greater than 1985-01-01 OR NOT male gender


SELECT * 
FROM employee_demographics
WHERE (first_name = 'Leslie' AND age = 44) OR age > 55
;

# SELECT everything FROM employee_demographics WHERE name is Leslie and 44 years old OR greater than age 55


-- LIKE Statement --
-- % and _	
# % means 'anything'
# _ means 'specific space'

SELECT * 
FROM employee_demographics
WHERE first_name LIKE 'Jer%'
;

# SELECT everything FROM employee_demographics TABLE WHERE first_name has ‘Jer’ in the item plus anything AFTER ‘Jer’



SELECT * 
FROM employee_demographics
WHERE first_name LIKE 'a%'
;

# SELECT everything FROM employee_demographics WHERE their first name starts with the letter A and has anything after that


SELECT * 
FROM employee_demographics
WHERE first_name LIKE 'a__'
;

# SELECT everything FROM employe_demographics WHERE the first name has the letter A at the beginning of the name and 2 items after it


SELECT * 
FROM employee_demographics
WHERE first_name LIKE 'a___%'
;

# SELECT everything FROM employee_demographics WHERE the first name starts with the letter A, 
# has 3 items after it, and anything after that

