


-- 1)  Find books that are out of stock.

SELECT * FROM books WHERE stock = 0;





-- 2)  Retrieve the most expensive book in the store.

SELECT * FROM books ORDER BY price DESC LIMIT 1;




-- 3) Find the total number of orders placed by each customer.

SELECT 
    c.name,
    COUNT(o.id) AS total_orders
FROM 
    customers c
JOIN 
    orders o ON c.id = o.customer_id
GROUP BY 
    c.name
ORDER BY 
    total_orders DESC;





-- 4)   Calculate the total revenue generated from book sales.

SELECT 
    SUM(b.price * o.quantity) AS total_revenue
FROM 
    orders o
JOIN 
    books b ON o.book_id = b.id;





--  5)   List all customers who have placed more than one order.

SELECT 
    c.id,
    c.name,
    c.email,
    COUNT(o.id) AS order_count
FROM 
    customers c
JOIN 
    orders o ON c.id = o.customer_id
GROUP BY 
    c.id, c.name, c.email
HAVING 
    COUNT(o.id) > 1
ORDER BY 
    order_count DESC;




--  6)   Find the average price of books in the store.

SELECT 
    ROUND(AVG(price), 2) AS average_book_price
FROM 
    books;




--  7)    Increase the price of all books published before 2000 by 10%

-- Update books price
UPDATE books
SET price = ROUND(price * 1.10, 2)
WHERE published_year < 2000;


-- show update books data
SELECT * FROM books ORDER BY id;





--  8)  Delete customers who haven't placed any orders

-- delete not ordered customer
DELETE FROM customers
WHERE id NOT IN (SELECT DISTINCT customer_id FROM orders);


-- find customer
SELECT * FROM customers;
