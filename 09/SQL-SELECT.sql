--
SELECT dept_no FROM departments;

SELECT * FROM departaments;

SELECT * FROM employees
WHERE first_name = 'Elvis';

--Retrieve a list with all female employees whose first name is Kellie.
SELECT * FROM employees
WHERE first_name = 'Kellie' AND gender = 'F';

--Retrieve a list with all employees whose first name is either Kellie or Aruna.
SELECT * FROM employees
WHERE first_name = 'Kellie' OR 'Aruna';

--Retrieve a list with all female employees whose first name is either Kellie or Aruna.
SELECT * FROM employees
WHERE gender = 'F' AND (first_name = 'Kellie' OR first_name = 'Aruna');


--Use the IN operator to select all individuals from the “employees” table, whose first name is either “Denis”, or “Elvis”.
SELECT * FROM employees
WHERE first_name IN ('Denis','Elvis');

--Extract all records from the ‘employees’ table, aside from those with employees named John, Mark, or Jacob.
SELECT * FROM employees
WHERE first_name NOT IN ('John','Mark','Jacob');

--Working with the “employees” table, use the LIKE operator to select the data about all individuals, 
--whose first name starts with “Mark”; specify that the name can be succeeded by any sequence of characters.
SELECT * FROM employees
WHERE first_name LIKE ('Mark%)'

--Retrieve a list with all employees who have been hired in the year 2000.
SELECT * FROM employees
WHERE hire_date LIKE ('%2000%');

--Retrieve a list with all employees whose employee number is written with 5 characters, and starts with “1000”. 
SELECT * FROM employees
WHERE emp_no LIKE  ('1000_');
                       
--Extract all individuals from the ‘employees’ table whose first name contains “Jack”.  
SELECT * FROM employees
WHERE first_name LIKE ('%Jack%');
 --Once you have done that, extract another list containing the names of employees that do not contain “Jack”.
 SELECT * FROM employees
WHERE first_name NOT LIKE ('%Jack%');
 
--Select all the information from the “salaries” table regarding contracts from 66,000 to 70,000 dollars per year.
SELECT * FROM salaries
WHERE salary BETWEEN 66000 AND 70000;

--Retrieve a list with all individuals whose employee number is not between ‘10004’ and ‘10012’.
SELECT * FROM employee 
WHERE emp_no NOT BETWEEN 10004 AND 10012;

--Select the names of all departments with numbers between ‘d003’ and ‘d006’
SELECT dept_name FROM departments
WHERE dept_no BETWEEN 'd003' AND 'd006';                      
                       
--Retrieve a list with data about all female employees who were hired in the year 2000 or after.
SELECT * FROM employees
WHERE gender = 'F' AND hire_date >= '2000-01-01';

--Extract a list with all employees’ salaries higher than $150,000 per annum.
SELECT * FROM salaries

WHERE salary >= 150000;
                       
--Obtain a list with all different “hire dates” from the “employees” table.
SELECT DISTINCT hire_date
FROM employees;

                       --How many annual contracts with a value higher than or equal to $100,000 have been registered in the salaries table?
SELECT COUNT(*) FROM salaries

WHERE salary >= 100000;

--How many managers do we have in the “employees” database? Use the star symbol (*) in your code to solve this exercise.
SELECT COUNT(*) FROM dept_manager;
                       
                       
                       
 --Select all data from the “employees” table, ordering it by “hire date” in descending order.
SELECT * FROM employees
ORDER BY hire_date desc;

--Write a query that obtains two columns. The first column must contain annual salaries higher than 80,000 dollars. The second column, renamed to “emps_with_same_salary”, must show the number of employees contracted to that salary. Lastly, sort the output by the first column.

SELECT salary,COUNT(emp_no) AS emps_with_same_salary FROM salaries 
WHERE salary > 80000
GROUP BY BY salary;                      

                       
----Select all employees whose average salary is higher than $120,000 per annum.
SELECT emp_no,AVG(SALARY) FROM salaries
GROUP BY emp_no
ORDER BY emp_no;    
                       
--Select the employee numbers of all individuals who have signed more than 1 contract after the 1st --of January 2000.
--Hint: To solve this exercise, use the “dept_emp” table.
SELECT emp_no FROM dept_emp

WHERE from_date >= '2000-01-01'

GROUP BY emp_no

HAVING COUNT(from_date) > 1

ORDER BY emp_no;                       
