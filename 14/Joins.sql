CREATE TABLE dept_dup (dept_no CHAR(4),
dept_name VARCHAR(40));

INSERT INTO dept_dup
SELECT * FROM departments;
                  
           
                  

CREATE TABLE dept_manager_dup
(emp_no INT(11) NOT NULL,
dept_no char(4) NULL,
from_date date NOT NULL,
to_date date NULL);

INSERT INTO dept_manager_dup
SELECT * FROM dept_manager;
                  
                  
                  
--Extract a list containing information about all managers’ employee number, first and last name, department number, and hire date.    
 SELECT E.emp_no, E.first_name, E.last_name, M.dept_no,M.from_date
FROM employees E
INNER JOIN  dept_manager M
ON E.emp_no = M.emp_no
