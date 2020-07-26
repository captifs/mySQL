--Select ten records from the “titles” table to get a better idea about its content.
--Then, in the same table, insert information about employee number 999903. State that he/she is a “Senior --Engineer”, who has started working in this position on October 1 st, 1997. 

SELECT * FROM titles;
LIMIT 10;

INSERT INTO titles(emp_no,title,from_date)
VALUES (999903,
'Senior Engineer',
'1997-10-01');
