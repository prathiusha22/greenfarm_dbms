CREATE DATABASE IF NOT EXISTS project;
USE project;
/*
CREATE TABLE IF NOT EXISTS TABLE_NAME
column_1 datatype(size) constraint,
column_2 datatype(size) constraint,
column_3 datatype(size) constraint
*/
CREATE TABLE IF NOT EXISTS project (
 username VARCHAR(50) PRIMARY KEY,
 first_name VARCHAR(50) NOT NULL,
 last_name VARCHAR(50) NOT NULL,
 email VARCHAR(50) NOT NULL,
 dob DATE,
 phone VARCHAR(20),
 password VARCHAR(50) NOT NULL,
 primary key (username,email)
 );
 
--  create new column
alter table project
add whatsapp_no int;

describe project;

-- update datatype of column

alter table project
modify whatsapp_no varchar(50);

describe project;

alter table user rename column dob to date_of_birth;
describe project;

use project;
create  table if not exists mfa(
mfa_id int not null,
class_id int  not null,
questions_link varchar(100),
class_name int not null,
primary key(mfa_id,class_id)
);
describe mfa;

select*from project.mfa;

select* 
from user;
use project;

insert into project.user(username,first_name,last_name,email,date_of_birth,phone)
values("sasi__","sasi","kumar","sasi@gmail.com","2004-07-22","1234567890");

select *
from user;

describe user; 

-- find employee names of all the employees working in the it department
SELECT * FROM exercise_hr.departments;
select  department_id
from departments
where department_name="IT";

select employee_id,first_name,department_id
from employees
where department_id =60;

-- using joins
use exercise_hr;
SELECT *
FROM employees inner join departments
ON employees.department_id = departments.department_id;

use exercise_hr;
SELECT employee_id, first_name,e.department_id, d.department_id, d.department_name
FROM employees AS e inner join departments AS d
ON e.department_id = d.department_id;

use exercise_hr;
SELECT employee_id, first_name,last_name,e.department_id, d.department_name
FROM employees AS e inner join departments AS d
ON e.department_id = d.department_id
where department_name ="IT";




