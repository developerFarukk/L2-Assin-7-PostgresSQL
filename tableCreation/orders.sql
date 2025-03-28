


-- Create orders table
CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(id),
    book_id INT REFERENCES books(id),
    quantity INTEGER CHECK (quantity > 0),
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);



-- Insert orders data
INSERT INTO orders (customer_id, book_id, quantity, order_date) VALUES 
(1, 2, 1, '2024-03-10'),
(2, 1, 1, '2024-02-20'), 
(1, 3, 2, '2024-03-05');


-- find orders table data
SELECT * FROM orders;


-- drop orders
DROP TABLE orders;