ALTER TABLE customers
CHANGE COLUMN number_of_complaints number_of_complaints INT DEFAULT 0;


INSERT INTO customers (first_name,last_name, gender)
VALUES ('Peter', 'Figaro', 'M');

SELECT * FROM customers;

ALTER TABLE customers
ALTER COLUMN number_of_complaints DROP DEFAULT;
