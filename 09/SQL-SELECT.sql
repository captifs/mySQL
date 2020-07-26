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
