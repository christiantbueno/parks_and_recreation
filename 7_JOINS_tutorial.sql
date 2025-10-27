-- JOINS

SELECT *
FROM employee_demographics;

SELECT * 
FROM employee_salary;

SELECT *
FROM employee_demographics
INNER JOIN employee_salary
	ON employee_demographics.employee_id = employee_salary.employee_id
;

# JOINS demographics and salary tables based ON the employeed_id from both tables. 
# Notice how employeed_id (2) is excluded because it is only on one table, and not the other


SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;
# Both tables are renamed to DEM and SAL using AS function.  Output remains the same


SELECT dem.employee_id, age, occupation
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;
# SELECT the 3 columns (employee_id, age, occupation) using the employee_id from demographics TABLE.  
# The output includes information from the salary TABLE as well


-- OUTER JOIN

SELECT *
FROM employee_demographics AS dem
LEFT JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;
# LEFT JOIN has same output as INNER JOIN 
# SELECT everything from demographics TABLE
# Everything in salary TABLE has a match (TABLE on the right)


SELECT *
FROM employee_demographics AS dem
RIGHT JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

# Going to take everything from the salary TABLE
# If there isn't a match in the demographics TABLE, It will display NULL in the dem TABLE
# Output shows NULL on dem TABLE because there is no employee_id (2)


-- SELF JOIN
# Self join is a JOIN where you tie a TABLE to itself
# See secret santa example below

SELECT *
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id + 1 = emp2.employee_id
;

# TABLE on the right shows employee_id + 1
# That will be the employee's secret santa from the left TABLE

SELECT emp1.employee_id AS emp_santa,
emp1.first_name AS first_name_santa,
emp1.last_name AS last_name_santa,
emp2.employee_id AS emp_name,
emp2.first_name AS first_name_emp,
emp2.last_name AS last_name_emp
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id + 1 = emp2.employee_id
;
# Cleaned the TABLES to better display the DATA


-- JOINING MULTIPLE TABLES TOGETHER
# We will be joining the department ID from the salary TABLE with the dept ID from parks_departments TABLE
# The demographics table doesn't havea department ID. It only has an employee_id

SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments pd
	ON sal.dept_id = pd.department_id
;

SELECT *
FROM parks_departments;







