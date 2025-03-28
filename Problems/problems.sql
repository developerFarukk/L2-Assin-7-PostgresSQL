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