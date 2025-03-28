

-- Create customers table
CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    email VARCHAR(100) UNIQUE,
    joined_date DATE DEFAULT CURRENT_DATE
);


-- find customer table data
SELECT * FROM customers;

-- drop customer
DROP TABLE customers;


-- Delete table of customer
DELETE TABLE customers;