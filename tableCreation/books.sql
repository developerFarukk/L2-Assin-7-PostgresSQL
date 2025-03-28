-- Active: 1742907431775@@127.0.0.1@5432@bookstore_db


-- Create books table
CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    author VARCHAR(100),
    price INTEGER CHECK (price >= 0),
    stock INTEGER CHECK (stock >= 0),
    published_year INTEGER
);


-- Inpute books data
INSERT INTO books (title, author, price, stock, published_year) VALUES 
('The Pragmatic Programmer', 'Andrew Hunt', 40.00, 10, 1999),
('Clean Code', 'Robert C. Martin', 35.00, 5, 2008),
('You Don''t Know JS', 'Kyle Simpson', 30.00, 8, 2014),
('Refactoring', 'Martin Fowler', 50.00, 3, 1999),
('Database Design Principles', 'Jane Smith', 20.00, 0, 2018);


-- find books table data
SELECT * FROM books;

-- drop table
DROP TABLE books;

