

-- 1)  Find books that are out of stock.

SELECT * FROM books WHERE stock = 0;



-- 2)  Retrieve the most expensive book in the store.


SELECT * FROM books ORDER BY price DESC LIMIT 1