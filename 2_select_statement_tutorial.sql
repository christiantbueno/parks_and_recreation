SELECT *
FROM parks_and_recreation.employee_demographics;

# SELECT everything FROM the employee_demographics TABLE in the parks_and_recreation DATABASE

SELECT first_name, 
last_name, 
birth_date,
age,
(age + 10) * 10 + 10
FROM parks_and_recreation.employee_demographics;

# PEMDAS
# this creates a TABLE with the selected demographics from the parks_and_recreation DATABASE

SELECT DISTINCT first_name, gender
FROM parks_and_recreation.employee_demographics;

# this creates a TABLE that shows the different attributes of the DATA related to GENDER. 
# In this case, MALE or FEMALE




