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
                       
