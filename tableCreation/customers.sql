

-- Create customers table
CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    email VARCHAR(100) UNIQUE,
    joined_date DATE DEFAULT CURRENT_DATE
);


-- Insart table data of customer
INSERT INTO customers (name, email, joined_date) VALUES 
('Alice', 'alice@email.com', '2023-01-10'),
('Bob', 'bob@email.com', '2022-05-15'),
('Charlie', 'charlie@email.com', '2023-06-20');




-- find customer table data
SELECT * FROM customers;

-- drop customer
DROP TABLE customers;


-- Delete table of customer
DELETE TABLE customers;