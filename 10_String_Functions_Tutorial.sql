-- STRING FUNCTIONS

SELECT LENGTH('skyfall');
# LENGTH function displays how long a word is
# In this case, the word, SKYFALL

SELECT first_name, LENGTH(first_name)
FROM employee_demographics
ORDER BY 2;
# Selects employees from demographics TABLE
# ORDER BY lists them shortest to longest length

SELECT UPPER('sky');
SELECT LOWER('SKY');
# UPPER function displays word in UPPERCASE
# LOWER function displays word in LOWERCASE

SELECT first_name, UPPER(first_name) AS first_name_uppercase
FROM employee_demographics;


SELECT TRIM('   sky     ');
SELECT LTRIM('   sky     ');
SELECT RTRIM('   sky     ');
# TRIM function trims all empty spaces
# LTRIM trims empty spaces on LEFT only
# RTRIM trims emptys space on RIGHT only


SELECT first_name, LEFT(first_name, 4)
FROM employee_demographics;
# LEFT function displays first 4 characters starting from the left

SELECT first_name, RIGHT(first_name, 4)
FROM employee_demographics;
# RIGHT function displays last 4 characters starting from the right

SELECT first_name, 
LEFT(first_name, 4),
RIGHT(first_name, 4),
SUBSTRING(first_name,3,2),
birth_date,
SUBSTRING(birth_date,6,2) AS Birth_Month
FROM employee_demographics;
# SUBSTRING X,Y starts at position X and displays Y characters from there

SELECT first_name, REPLACE(first_name, 'a','z')
FROM employee_demographics;
#REPLACE function replaces letter A with letter Z

SELECT LOCATE('s', 'Christian');
# Tells us whicih position the letter S is in

SELECT first_name, LOCATE('An',first_name)
FROM employee_demographics;
# Locates which position AN is in employee's first name

SELECT first_name, last_name,
CONCAT(first_name,' ', last_name) AS full_name
FROM employee_demographics;
#CONCAT combines selected columns




