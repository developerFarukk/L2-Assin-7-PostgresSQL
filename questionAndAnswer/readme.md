

<h1 align="center">*** PostgreSQL প্রশ্নোত্তর ***</h1>


## 1. What is PostgreSQL?
PostgreSQL একটি শক্তিশালী, Open-source relational database management system (RDBMS)। এটি Complex Query, JSON support করে।

<br />

## 2. What is the purpose of a database schema in PostgreSQL?
Schema হলো Logical Operation যা Database Object (Table, View, Function) Organise করে। টেবিল গ্রুপ করা, একাধিক user এর মধ্যে data আলাদা করা, Permission Management সহজ করা ইত্যাদি।


<br />

## 3. Explain the Primary Key and Foreign Key concepts in PostgreSQL.
1. **Primary Key:** Table এর প্রতিটি Row Uniquely Identify করে (যেমন: id SERIAL PRIMARY KEY).

2. **Foreign Key:** এক Table এর কলাম অন্য Table এর Primary Key Refer কে বুঝায়। (যেমন: customer_id INT REFERENCES customers(id)).

<br />

## 4. What is the difference between the VARCHAR and CHAR data types?
1. **VARCHAR:** Variable length string যা Maximum  n character হয়।

2. **CHAR:** Fixed length string বুঝায় যা সবসময় n character নেয়।


