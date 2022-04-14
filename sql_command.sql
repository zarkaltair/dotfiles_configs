# create database
CREATE DATABASE <database_name>;

# delete database
DROP DATABASE <database_name>;

# create table
CREATE TABLE users(
    id INT
);

# delete table
DROP TABLE users;

# example create table
CREATE TABLE people(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(30),
    email VARCHAR(40),
    bio TEXT,
    birth DATE,
    PRIMARY KEY(id)
);

# create table with unique columns
CREATE TABLE bookmarks(
    users_id INTEGER,
    lessoninfo_id INTEGER,
    UNIQUE(users_id, lessoninfo_id)
);

# create table with unique word column
CREATE TABLE IF NOT EXISTS user_words(
    id        INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    user_id   INTEGER NOT NULL,
    word      TEXT UNIQUE ON CONFLICT IGNORE,
    translate TEXT NOT NULL
)

# add in table new column
ALTER TABLE people ADD pass VARCHAR(32);

# delet column in the table
ALTER TABLE people DROP COLUMN pass;

# insert new info to table
INSERT INTO people (name, bio, birth, email) VALUES('Alex', 'programmer', '2050-04-04', 'test@mail.ru');

# update exist column
ALTER TABLE people CHANGE birth birth DATA NOT NULL;

# many adding info to table
INSERT INTO people (name, email, bio, birth)
    VALUES
    ('Bob', 'test1@mail.ru', 'proger', '2040-03-24'),
    ('Ann', 'test2@mail.ru', 'proger1', '2040-05-04'),
    ('John', 'test3@mail.ru', 'proger2', '2040-03-14');

# update field name
UPDATE people SET name='Max' WHERE id=5;

# delete info from table
DELETE FROM test WHERE id > 2;

# delete all info from table
DELETE FROM test;

# clear all table
TRUNCATE test;

# select all rows from table
SELECT * FROM people;

# select specific fields
SELECT name, bio FROM people;

# select column id and name and for parametr id
SELECT id, name FROM people WHERE id >= 2 AND id < 4

# select exclud specific if
SELECT * FROM people WHERE id <> 2 AND id <> 5;

# specific selection
SELECT * FROM people WHERE id <> 2 AND id <> 5 AND name = 'Bob' AND bio IS NULL;

# specific selection
SELECT * FROM people WHERE id = 3 OR name = 'John';

# not repeat selection
SELECT DISTINCT name FROM people;

# select only 2 first rows
SELECT * FROM people LIMIT 2;

# select 3 rows after pass 2 first rows
SELECT * FROM people LIMIT 2, 3;

# select with sort by id and limit
SELECT * FROM people ORDER BY id LIMIT 2,3;

# select with descending sort by id  and limit
SELECT * FROM people ORDER BY id DESC LIMIT 2,3;

# select slice from table
SELECT * FROM people WHERE id BETWEEN 2 AND 6 AND id <> 4 ORDER BY id DESC LIMIT 10;

# select specific rows
SELECT * FROM people WHERE id IN(4, 5, 2, 1) ORDER BY id DESC LIMIT 10;

# select rows where field name start with 'B'
SELECT * FROM people WHERE name LIKE 'B%';

# select rows where field consist of 'a'
SELECT * FROM people WHERE name LIKE '%a%'

# create index on column 'name'
CREATE INDEX NIndex ON people(name);

# delete index
DROP INDEX NIndex ON people;

# create connection tables
CREATE TABLE orders(
    id INT NOT NULL AUTO_INCREMENT,
    orderNumber INT,
    shopID INT,
    personID INT,
    date_time DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(id),
    FOREIGN KEY(shopID) REFERENCES shop(id),
    FOREIGN KEY(personID) REFERENCES people(id)
);

# fill table shop
INSERT INTO `shop`(`title`, `price`) 
    VALUES
    ('iPhone', 300), 
    ('TV', 320), 
    ('PS4', 30), 
    ('Mac', 15), 
    ('Fridge', 23), 
    ('iPhone 7', 10);

# fill table orders
INSERT INTO `orders`(`orderNumber`, `shopID`, `personID`) 
    VALUES 
    (0001, 2, 4),
    (0002, 4, 1),
    (0003, 2, 5),
    (0004, 3, 3),
    (0005, 1, 2),
    (0006, 1, 4);

# update row if dupliate exist
INSERT INTO employee VALUES(100,'Thomas','Sales',5000) on DUPLICATE KEY UPDATE salary=salary+500;


# inner join table
SELECT shop.title, people.name, people.email FROM people 
INNER JOIN orders ON people.id = orders.personID
INNER JOIN shop ON shop.id = orders.shopID
ORDER BY orders.orderNumber DESC;

# left join table
SELECT people.name, orders.orderNumber FROM people
LEFT JOIN orders ON people.id = orders.personID
ORDER BY people.name DESC;

# right join table
SELECT orders.date_time, people.name FROM orders
RIGHT JOIN people ON orders.personID = people.id;

# pseudonym
SELECT name AS 'Name', birth AS 'Dob' FROM people;

# concatenation columns with pseudonym
SELECT CONCAT('Name: ', name, '. Day of birth: ', birth) AS 'Info' FROM people;

# selection from several tables with pseudonym
SELECT p.id, p.name, s.title, s.price FROM people AS p, shop AS s;

# function count
SELECT COUNT(id) FROM shop;

# looking for min price
SELECT MIN(price) FROM shop;

# looking for max price
SELECT MAX(price) FROM shop;

# looking for average price
SELECT AVG(price) FROM shop;

# sum all price in the table
SELECT SUM(price) FROM shop;

# column to uppercase
SELECT UCASE(title) FROM shop;

# column to lowercase
SELECT LCASE(title) FROM shop;

# group by
SELECT price, COUNT(price) AS 'Quantity' FROM shop GROUP BY price;

# group by with condition
SELECT price AS 'Price', COUNT(price) AS 'Quantity' FROM shop 
GROUP BY price HAVING COUNT(price) > 1;

# 

