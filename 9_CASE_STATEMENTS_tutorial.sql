-- CASE STATEMENTS

SELECT first_name,
last_name,
age,
CASE 
	WHEN age <= 30 THEN 'Young'
    WHEN age BETWEEN 31 and 50 THEN 'Old'
    WHEN age >= 50 THEN "On Death's Door"
END AS Age_Bracket
FROM employee_demographics;


-- Pay Increase and Bonus Case Statement
-- If < 50000 then = 5% raise
-- If > 50000 then = 7% raise
-- If the work in Finance Dept then = 10% bonus

SELECT first_name, last_name, salary,
CASE
	WHEN salary < 50000 THEN salary + (salary * 0.05)
    WHEN salary > 50000 THEN salary + (salary * 0.07)
END AS New_Salary
FROM employee_salary;
# Output shows employees who received 5% and 7% raises
# Results show that employees making exactly 50000 did not receive a raise

SELECT *
FROM employee_salary;
SELECT *
FROM parks_departments;

# Salary TABLE is used because it displays the department ID for employees
# Parks_departments TABLE displays 
# Finance department displays department ID (6)

SELECT first_name, last_name, salary,
CASE
	WHEN salary < 50000 THEN salary + (salary * 0.05)
    WHEN salary > 50000 THEN salary + (salary * 0.07)
END AS New_Salary,
CASE 
	WHEN dept_id = 6 THEN salary * 0.10
END AS Bonus
FROM employee_salary;
# Output displays one person receiving a bonus
# Employees who don't receive a bonus display NULL







