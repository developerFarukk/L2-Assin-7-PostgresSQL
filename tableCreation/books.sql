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


-- find books table data
SELECT * FROM books;

-- drop table
DROP TABLE books;


-- Delete table
DELETE TABLE books;