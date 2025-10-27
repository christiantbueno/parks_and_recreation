-- Having vs Where

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40
;

# SELECT gender with the AVERAGE age of the database FROM employee_demographics 
# GROUP BY gender with the AVERAGE age being greater than 40


SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary) > 75000
;

# SELECT occupation with AVERAGE salary FROM employee_salary TABLE WHERE the occupation has the word MANAGER in it.  
# GROUP BY the occupation HAVING an AVERAGE salary greater than 75000







