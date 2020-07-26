--unique
ALTER TABLE customers
ADD UNIQUE KEY (email_address);

ALTER TABLE customers
DROP INDEX email_address;



--default 
ALTER TABLE customers
CHANGE COLUMN number_of_complaints number_of_complaints INT DEFAULT 0;


INSERT INTO customers (first_name,last_name, gender)
VALUES ('Peter', 'Figaro', 'M');

SELECT * FROM customers;

ALTER TABLE customers
ALTER COLUMN number_of_complaints DROP DEFAULT;


--not null

ALTER TABLE companies
CHANGE COLUMN company_name company_name VARCHAR(255) NOT NULL;
ALTER TABLE companies
MODIFY company_name VARCHAR(255) NULL;
