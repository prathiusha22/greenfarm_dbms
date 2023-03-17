
-- SQL is case-insensitive

/*
we will follow:
UPPERCASE:keywors
lowercase:non-keywords
*/

USE store;

use store;

use exercise_hr;

SHOW TABLES;
USE store;
SELECT *
FROM customers;

SELECT *
FROM customers
ORDER BY first_name;

SELECT *
FROM customers
ORDER BY last_nmae desc;

use store;
select *
from customers
limit 3;

use store;
select *
from customers
order by points desc
limit 3;

CREATE DATABASE IF NOT EXISTS green_farm_DB;
USE green_farm_db;
/*
CREATE TABLE IF NOT EXISTS TABLE_NAME
column_1 datatype(size) constraint,
column_2 datatype(size) constraint,
column_3 datatype(size) constraint
*/
CREATE TABLE IF NOT EXISTS user (
 username VARCHAR(50) PRIMARY KEY,
 first_name VARCHAR(50) NOT NULL,
 last_name VARCHAR(50) NOT NULL,
 email VARCHAR(50) NOT NULL,
 dob DATE,
 phone VARCHAR(20),
 password VARCHAR(50) NOT NULL
 )






