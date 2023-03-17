use exercise_hr;
DROP TABLE if exists `employee`;
create table employee(
emp_id int primary key auto_increment ,
ename varchar(30) not null,
job_desc varchar(20) default 'unassigned',
salary int,
pan varchar(10) unique
);
insert into employee(ename,salary) values("Ramya",5000);
insert into employee(ename,salary) values("Parameshwari",20000);
insert into employee(ename,salary) values("Madhubala",20000);
select* from employee;

select * from employee
where salary>10000;


use exercise_hr;
alter table employee 
add column department varchar(30);

describe employee;
   
    