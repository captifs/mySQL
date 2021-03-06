--Select ten records from the “titles” table to get a better idea about its content.
--Then, in the same table, insert information about employee number 999903. State that he/she is a “Senior --Engineer”, who has started working in this position on October 1 st, 1997. 

SELECT * FROM titles;
LIMIT 10;

INSERT INTO titles(emp_no,title,from_date)
VALUES (999903,
'Senior Engineer',
'1997-10-01');


/*Insert information about the individual with employee number 999903 into the “dept_emp” table. He/She is working for department number 5, and has started work on  October 1st, 1997; her/his contract is for an indefinite period of time.
Hint: Use the date ‘9999-01-01’ to designate the contract is for an indefinite period.
*/

SELECT * FROM dept_emp
ORDER BY emp_no DESC
LIMIT 10;

INSERT INTO dept_emp(emp_no ,dept_no ,from_date ,to_date)
VALUES(
999903,
'd005',
'1997-10-01',
'999-01-01');


--Create a new department called “Business Analysis”. Register it under number ‘d010’.</p><p><em>Hint: To --solve this exercise, use the “departments” table.

INSERT INTO departments VALUES ('d010', 'Business Analysis');


COMMIT;
--Change the “Business Analysis” department name to “Data Analysis”.Hint: To solve this exercise, --use the --“departments” table.

UPDATE departments
SET dept_name = 'Data Analysis'
WHERE dept_name = 'Business Analysis';

ROLLBACK;

