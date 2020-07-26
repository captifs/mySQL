
CREATE TABLE sales
(
	purchase_number INT  AUTO_INCREMENT,
    date_of_purchase DATE,
    customer_id INT,
    item_code VARCHAR(10),
    PRIMARY KEY (purchase_number),
FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE
    );

/* if sales already exists without a foreign key we can do this: 
ALTER TABLE sales
ADD FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE;
or drop foreign key
ALTER TABLE sales
DROP FOREIGN KEY  sales_ibfk_1;
*/


CREATE TABLE customers
(
 customer_id INT AUTO_INCREMENT,
first_name VARCHAR(255),
last_name VARCHAR(255),
gender ENUM('M', 'F'),
email_address VARCHAR(255),
number_of_complaints INT,
PRIMARY KEY (customer_id)
);

/* to add a constraint to an existing table
ALTER TABLE customers
ADD UNIQUE KEY (email_address);
remove unique key:
ALTER TABLE customers
DROP INDEX email_address;
*/


CREATE TABLE items
(
item_id VARCHAR(255),
item VARCHAR(255),
unit_price NUMERIC(10,2),
company_id VARCHAR(255),
primary key (item_id)
);


CREATE TABLE companies
(
company_id VARCHAR(255),
company_name VARCHAR(255),
headquarters_phone_number INT(12),
primary key (company_id)
);
