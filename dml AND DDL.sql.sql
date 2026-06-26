create database dept_id;
use dept_id;
create table department(dept_id int primary key,dept_name varchar(30),location varchar(30));
desc department;
insert into department values(10,"hr","hyderbad"),(20,"it","bangaloor"),(30,"finance","mumbai"),(40,"marketing","dheli");
select * from department;
create table employee(empid int primary key,emp_name  varchar(30),salary bigint,hire_date date,email varchar(50) unique,
age int check(age>20),phone bigint,foreign key(empid) references department(deptid));
desc employee;
insert into employee values(101,"ravi",45000,'10-38-29',"ravu@gmail.com",21,9088776),
(102,"priya",55000,'12-12-20',"priya@gmail.com",29,8390303),
(103,"kiran",60000,'10-03-29',"kiran@gmail.com",23,38376666),
(104,"sneha",40000,'10-08-29',"snaeha@gmail.com",25,44443333),
(105,"arjun",70000,'02-22-28',"arjun@gmail.com",24,343222222),
(106,"divya",48000,'03-04-23',"divya@gmail.com",32,344455555);
alter table employee modify column salary decimal(12,2); 
desc employee;
alter table employee modify column emp_name varchar(20) not null;
desc employee;
alter table employee add constraint  unique_mobile_no unique(mobil_no);
desc employee;
alter table employee rename to emp_id;
select * from emp_id;
select *,salary+5000 from emp_id where empid=102;
select *,salary+salary*0.1 as increased_salary from emp_id;
delete from emp_id where salary<4000;
select* from emp_id;
truncate table emp_id;
select * from emp_id;
drop table emp_id;
drop table department;
